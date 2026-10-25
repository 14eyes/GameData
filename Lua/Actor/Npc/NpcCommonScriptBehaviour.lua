require("Actor/ActorCommon")
local DailyNpc = require("Actor/Npc/DailyNpc")

local NpcCommonScriptBehaviour = class("NpcCommonScriptBehaviour", DailyNpc)
local NPCEventType = require("Actor/Npc/NPCEventType")

NpcCommonScriptBehaviour.defaultAlias = "NpcCommonScriptBehaviour"
NpcCommonScriptBehaviour.pointID = 1
NpcCommonScriptBehaviour.isDayTime = true
NpcCommonScriptBehaviour.isActive = false
local generalPattern = require("Actor/Npc/Config/NpcConfigCommon").GeneralPattern

function NpcCommonScriptBehaviour:Recover()
    self.OnAction = 0
    self:UpdateSelfPattern()
    if self.pattern == generalPattern.Patrol then
        self:GoPatrol()
    else
        if self.pattern == generalPattern.Stand then
            self:GoStandby()
        else
            if self.pattern == generalPattern.Hide then
                self:GoHide()
            else
                if self.pattern == generalPattern.Sit then
                    self:GoSitOnChair()
                end
            end
        end
    end
end

function NpcCommonScriptBehaviour:InvokeOnFinalTalkFinish()
    if self.ConfigData == nil then
        actorUtils.ActorDebugError("InvokeOnFinalTalkFinish ConfigData is null NPC_id: " .. tostring(self.ID))
        return
    end

    print("NpcCommonScriptBehaviour:InvokeOnFinalTalkFinish")
    self:UpdateSelfPattern()
    if self.pattern == generalPattern.Patrol then
        self:GoPatrol()
    else
        if self.pattern == generalPattern.Stand then
            self:GoStandbyInternal()
        else
            if self.pattern == generalPattern.Hide then
                self:GoHide()
            end
        end
    end
end

function NpcCommonScriptBehaviour:GoHide()
    if self.isActive == false then
        self:HideSelf()
    else
        self:PerformDither(false, 2)
        self:CallDelay(2, self.HideSelf)
    end

    self:Standby()
    self:ClearNpcSpeechBubble(self.ID)
    self.isActive = false
end

function NpcCommonScriptBehaviour:Start()
    self.isActive = false
    self:PrepareNpcDataAndStart()
end

function NpcCommonScriptBehaviour:PosDataInit()
    if self.pattern == generalPattern.Patrol then
        self.PosDataArray = self.ConfigData.DayPatrolPosData
        if self.isDayTime == false then
            if self.ConfigData.NightPatrolPosData ~= nil then
                self.PosDataArray = self.ConfigData.NightPatrolPosData
            end
        end
    else
        if self.pattern == generalPattern.Stand then
            self.PosDataArray = self.ConfigData.DayStandPosData
            if self.isDayTime == false then
                if self.ConfigData.NightStandPosData ~= nil then
                    self.PosDataArray = self.ConfigData.NightStandPosData
                end
            end
        else
            if self.pattern == generalPattern.Sit then
                self.PosDataArray = self.ConfigData.DaySitPosData
                if self.isDayTime == false then
                    if self.ConfigData.NightSitPosData ~= nil then
                        self.PosDataArray = self.ConfigData.NightSitPosData
                    end
                end
            else
                self.PosDataArray = self.ConfigData.DayStandPosData
            end
        end
    end

    if NG_HSOD_DEBUG then
        assert(self.PosDataArray ~= nil, tostring(self.alias) .. "  PosData is null")
        assert(#self.PosDataArray ~= 0, tostring(self.alias) .. "  PosDataArray has 0 elements")
    end

    local n = math.random(1, #self.PosDataArray)
    self.PosCount = #self.PosDataArray[n]
    self.PosData = self.PosDataArray[n]
    self.pointID = math.random(1, #self.PosData)
end

function NpcCommonScriptBehaviour:StartDay()
    self.isDayTime = true
    if self.uActor.isPaused == false then
        self:StartPattern()
    end
end

function NpcCommonScriptBehaviour:UpdateSelfPattern()
    self.pattern = nil
    local currSceneID = sceneData.currSceneID
    if self.isDayTime == true then
        local daySceneId = self.ConfigData.DaySceneId
        if daySceneId ~= nil and daySceneId ~= currSceneID then
            self.pattern = generalPattern.Hide
        end
    else
        local nightSceneId = self.ConfigData.NightSceneId
        if nightSceneId ~= nil and nightSceneId ~= currSceneID then
            self.pattern = generalPattern.Hide
        end
    end

    if self.pattern == nil then
        self.Patterns = self.ConfigData.DayPatterns
        if self.isDayTime == false then
            if self.ConfigData.NightPatterns ~= nil then
                self.Patterns = self.ConfigData.NightPatterns
            end
        end

        if NG_HSOD_DEBUG then
            assert(self.Patterns ~= nil, tostring(self.alias) .. "  No Patterns setup from data")
            assert(#self.Patterns ~= 0, tostring(self.alias) .. "  Pattrens has 0 elements")
        end

        local n = math.random(1, #self.Patterns)
        self.pattern = self.Patterns[n]
        if NG_HSOD_DEBUG then
            assert(self.pattern ~= nil, tostring(self.alias) .. "  selected pattern is null")
        end
    end
end

function NpcCommonScriptBehaviour:StartPattern()
    if NG_HSOD_DEBUG then
        assert(self.ConfigData ~= nil, tostring(self.alias) .. " ConfigData is null")
    end

    if self:IsTalking() then
        return
    end

    self:UpdateSelfPattern()
    if self.pattern == generalPattern.Hide then
        self:GoHide()
    else
        self:PosDataInit()
        local startPoint = self:GetStartPoint()
        if self:IsHided() == true then
            self:ShowAndStartPattern()
        else
            if 1 < self:GetDistance2D(self:GetPos(), startPoint.pos) then
                self:PerformDither(false, 2)
                self:CallDelay(2, self.ShowAndStartPattern)
            else
                self:StartPatternInternal()
            end
        end
    end
end

function NpcCommonScriptBehaviour:GetStartPoint()
    if NG_HSOD_DEBUG then
        assert(self.PosData ~= nil, tostring(self.alias) .. "pos data is null")
        assert(self.pointID < #self.PosData + 1, tostring(self.alias) .. " index " .. tostring(self.pointID) .. " count " .. tostring(#self.PosData))
        assert(self.PosData[self.pointID] ~= nil, tostring(self.alias) .. " pos index " .. tostring(self.pointID))
        assert(self.PosData[self.pointID].dummypoint ~= nil, tostring(self.alias) .. " dummy point is null, pos index " .. tostring(self.pointID))
    end

    return self.PosData[self.pointID].dummypoint
end

function NpcCommonScriptBehaviour:ShowAndStartPattern()
    local startPoint = self:GetStartPoint()
    if startPoint ~= nil then
        self:SetPosAndTurnTo(startPoint.pos, M.Euler2DirXZ(startPoint.rot), true)
    end

    self:ShowSelf()
    self:PerformDither(true, 2)
    self:StartPatternInternal()
end

function NpcCommonScriptBehaviour:StartPatternInternal()
    if self.isActive == false then
        self:StartBubble()
    end

    if self.pattern == generalPattern.Patrol then
        self:GoPatrol()
    else
        if self.pattern == generalPattern.Sit then
            self:GoSitOnChair()
        else
            if self.pattern == generalPattern.Stand then
                self:GoStandby()
            end
        end
    end

    self.isActive = true
end

function NpcCommonScriptBehaviour:GoPatrol()
    self.pointID = self.pointID + 1
    if self.pointID == self.PosCount + 1 then
        self.pointID = 1
    end

    self:GoPatrolRoute()
end

function NpcCommonScriptBehaviour:GoPatrolRoute()
    self:DoFreeStateTrigger()
    self:WalkToTask(self.PosData[self.pointID].dummypoint.pos, self.SelfPointUpdate, self.Standby)
end

function NpcCommonScriptBehaviour:GoStandby()
    local rot = self.PosData[self.pointID].dummypoint.rot
    self:SteerToTask(M.Euler2DirXZ(rot), 1, true, true)
    self:CallDelay(1.0, self.GoStandbyInternal)
end

function NpcCommonScriptBehaviour:GoStandbyInternal()
    self:DoFreeStateTrigger()
    local freestyle = self.PosData[self.pointID].freestyle
    local noReaction = self.PosData[self.pointID].noReaction
    local time = self.PosData[self.pointID].time
    if freestyle ~= nil then
        self:DoFreeStyleTask(freestyle, true)
        if noReaction == true then
            self.OnAction = 1
        end
    end

    if self.pattern == generalPattern.Patrol then
        if time ~= nil and 0 < time then
            self:CallDelay(time, self.GoPatrol)
        else
            self:GoPatrol()
        end
    elseif time ~= nil and 0 < time then
        self:CallDelay(time, self.GoStandby)
    end
end

function NpcCommonScriptBehaviour:GoSitOnChair()
    self:DoFreeStateTrigger()
    self:SitOnChair()
    local freestyle = self.PosData[self.pointID].freestyle
    if freestyle ~= nil then
        self:DoFreeStyleTask(freestyle, true)
    end

    self.OnAction = 1
end

function NpcCommonScriptBehaviour:SelfPointUpdate()
    local time = self.PosData[self.pointID].time
    if time ~= nil and 0 < time then
        self:GoStandby()
    else
        self:GoPatrol()
    end
end

function NpcCommonScriptBehaviour:StartNight()
    self.isDayTime = false
    if self.uActor.isPaused == false then
        self:StartPattern()
    end
end

function NpcCommonScriptBehaviour:GetDistance2D(arg1, arg2)
    local n = arg1.x - arg2.x
    local v = arg1.y - arg2.y
    local n2 = math.sqrt(n * n + v * v)
    return n2
end

return NpcCommonScriptBehaviour
