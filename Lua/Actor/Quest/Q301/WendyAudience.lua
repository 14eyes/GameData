require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local WendyAudience = class("WendyAudience", NpcActorProxy)
WendyAudience.defaultAlias = "WendyAudience"
WendyAudience.seatPos = nil
WendyAudience.seatDir = nil
WendyAudience.bornPos = nil
WendyAudience.bornDir = nil
WendyAudience.returnCallback = nil
WendyAudience.pointID = 1
WendyAudience.currWeather = WeatherType.ClearSky
local Q301Config = require("Actor/Quest/Q301/Config/Q301Config")
local Q401Config = require("Actor/Quest/Q401/Q401Config")

local wendyData = Q301Config.WendyData
local audienceInter = Q301Config.AudienceInter
local extrasData = Q301Config.ExtrasData

function WendyAudience:PreGetAlias()
    return extrasData.Extras .. tostring(self.dataIndex)
end

function WendyAudience:MoveToSeat()
    print("move to seat ")
    self:AddPriorityInter(InterTimingType.BTN, audienceInter)
    self:RunToTask(self.seatPos, function(arg1, arg2)
        arg1:TurnTo(M.Euler2DirXZ(arg1.seatDir))
        arg1:Standby()
    end, function(arg1, arg2)
        arg1:Standby()
    end)
end

function WendyAudience:ReturnToNormal()
    self:ClearPriorityInter(InterTimingType.BTN)
    self:WalkToTask(extrasData.ExtrasOriginPos[self.extrasIndex], function(arg1, arg2)
        arg1:TurnTo(M.Euler2DirXZ(extrasData.ExtrasOriginDir[arg1.extrasIndex]))
        arg1:Standby()
        if arg1.returnCallback ~= nil then
            arg1:returnCallback()
        end
    end, function(arg1, arg2)
        arg1:Standby()
    end)
end

function WendyAudience:OnEvent(arg1)
    if arg1.evtType == wendyData.EvtFinishDance then
        self:ReturnToNormal()
    end
end

function WendyAudience:IsRaining()
    local flag
    if self.currWeather ~= WeatherType.Rain then
        if self.currWeather ~= WeatherType.Storm then
            goto lbl_13
        end
    end

    flag = true
    do
        return flag
    end

    ::lbl_13::
    return false
end

function WendyAudience:FinishBehave()
    if self.pointID == 1 then
        self.pointID = 2
        self:ClearFollowTask()
        self:WalkToTask(extrasData.ExtrasDaily2Pos[self.extrasIndex], self.Behave, self.Standby)
    else
        if self.pointID == 2 then
            self.pointID = 3
            self:ClearFollowTask()
            self:WalkToTask(extrasData.ExtrasDaily3Pos[self.extrasIndex], self.Behave, self.Standby)
        else
            if self.pointID == 3 then
                self.pointID = 4
                self:ClearFollowTask()
                self:WalkToTask(extrasData.ExtrasDaily4Pos[self.extrasIndex], self.Behave, self.Standby)
            else
                if self.pointID == 4 then
                    self.pointID = 1
                    self:ClearFollowTask()
                    self:WalkToTask(extrasData.ExtrasDaily1Pos[self.extrasIndex], self.Behave, self.Standby)
                end
            end
        end
    end
end

function WendyAudience:Behave()
    if self.pointID ~= 1 then
        if self.pointID ~= 3 then
            goto lbl_15
        end
    end

    self:DoFreeStyle(1)
    self:CallDelay(5, self.FinishBehave)
    goto lbl_22
    ::lbl_15::
    self:DoFreeStyle(0)
    self:CallDelay(5, self.FinishBehave)
    ::lbl_22::
end

function WendyAudience:StartDay()
    self.pointID = 1
    self:ClearFollowTask()
    self:WalkToTask(extrasData.ExtrasDaily1Pos[self.extrasIndex], self.Behave, self.Standby)
end

function WendyAudience:StartNight()
    self:ClearFollowTask()
    self:WalkToTask(extrasData.ExtrasHomePos[self.extrasIndex], self.Standby, self.Standby)
end

function WendyAudience:OnWeather(rain)
    if self:IsRaining() then
        if rain ~= WeatherType.Rain then
            if rain ~= WeatherType.Storm then
                if globalActor.isDay then
                    self.currWeather = rain
                    print("\233\155\168\229\129\156\228\186\134\239\188\140\230\152\175\231\153\189\229\164\169\239\188\140\232\183\145\229\135\186\230\157\165")
                    self:StartDay()
                end
            end
        end

        self.currWeather = rain
        return
    end

    self.currWeather = rain
    if rain ~= WeatherType.Rain then
        if rain ~= WeatherType.Storm then
            return
        end
    end

    if globalActor.isDay then
        self:ClearFollowTask()
        self:WalkToTask(extrasData.ExtrasOriginPos[self.extrasIndex], self.Standby, self.Standby)
    end
end

function WendyAudience:MoveHome()
    self:ClearFollowTask()
    self:WalkToTask(extrasData.ExtrasHomePos[self.extrasIndex], function(arg1, arg2)
        local actor = actorMgr:GetActor(Q401Config.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

function WendyAudience:StartDaily()
    self:RegisterSelfDayTime(self.StartDay)
    self:RegisterSelfNightTime(self.StartNight)
    self:RegisterSelfWeatherChange(self.OnWeather)
    if globalActor.isDay then
        self:StartDay()
    else
        self:StartNight()
    end
end

function WendyAudience:ShowStart()
    print("audience ShowStart")
    self:SetPos(self.bornPos)
    self:RegisterActorEvent(self.OnEvent)
    self:MoveToSeat()
end

function WendyAudience:OnPostDataPrepare()
    self.extrasIndex = self.dataIndex
    self.seatPos = extrasData.ExtrasSeatPos[self.extrasIndex]
    self.seatDir = extrasData.ExtrasSeatDir[self.extrasIndex]
    self.bornPos = extrasData.ExtrasOriginPos[self.extrasIndex]
    self.bornDir = extrasData.ExtrasOriginDir[self.extrasIndex]
    self.returnCallback = extrasData.ExtrasReturnCallback[self.extrasIndex]
end

function WendyAudience:Start()
    self:StartDaily()
end

function WendyAudience:OnDestroy() end
return WendyAudience
