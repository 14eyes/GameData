require("Actor/ActorCommon")
local BaseDailyNpc = require("Actor/Npc/BaseDailyNpc")

local MengdeNightConfuse = class("MengdeNightConfuse", BaseDailyNpc)
local NpcDailyCommon = require("Actor/Npc/NpcDailyCommon")
local NPCEventType = require("Actor/Npc/NPCEventType")

MengdeNightConfuse.defaultAlias = "MengdeNightConfuse"
MengdeNightConfuse.pointID = 1
MengdeNightConfuse.nightConfuseTargetPos = nil
local dummyPointData = require("Actor/Npc/Config/CfgMengdeNightConfuse").DummyPointData

function MengdeNightConfuse:PreGetAlias()
    return dummyPointData.Npc .. "_" .. tostring(self.dataIndex)
end

function MengdeNightConfuse:Register()
    NpcDailyCommon.Register(self)
end

function MengdeNightConfuse:RecoverFromFreeStyle()
    print("RecoverFromFreeStyle")
    self:Recover()
end

function MengdeNightConfuse:RecoverFromCollisionEnter()
    print("RecoverFromCollisionEnter")
    self:Recover()
end

function MengdeNightConfuse:Recover()
    self:RandomStand()
end

function MengdeNightConfuse:InvokeOnResetFreeStyle(arg1)
    NpcDailyCommon.InvokeOnResetFreeStyle(self, arg1)
end

function MengdeNightConfuse:OnCollisionEnter(arg1)
    NpcDailyCommon.OnCollisionEnter(arg1, self)
end

function MengdeNightConfuse:StartDay()
    self:PerformDither(false, 2, self.HideSelf)
end

function MengdeNightConfuse:StartNight()
    self:ShowSelf()
    self:PerformDither(true, 2)
    self:RandomStand()
    self:StartBubble()
end

function MengdeNightConfuse:StartBubble()
    if self.bubble ~= 1 then
        self:ShowBubble()
        self.bubble = 1
    end
end

function MengdeNightConfuse:ShowBubble()
    if dummyPointData.DialogID[self.dataIndex] ~= 0 then
        self:TriggerNpcSpeechBubble(dummyPointData.NpcID[self.dataIndex], dummyPointData.DialogID[self.dataIndex])
        self:BubbleTime()
    end
end

function MengdeNightConfuse:BubbleTime()
    self:CallDelay(5, self.CloseBubble)
end

function MengdeNightConfuse:CloseBubble()
    self:ClearNpcSpeechBubble(dummyPointData.NpcID[self.dataIndex])
    self:BubbleGap()
end

function MengdeNightConfuse:BubbleGap()
    self:CallDelay(math.random(7, 8), self.ShowBubble)
end

function MengdeNightConfuse:RandomStand()
    self:ChooseRandomPos()
    self:WalkToTask(self.nightConfuseTargetPos, self.NextMove, self.Standby)
end

function MengdeNightConfuse:ChooseRandomPos()
    self.pointID = math.random(1, 4)
    if self.pointID == 1 then
        self.nightConfuseTargetPos = dummyPointData.Pos01Pos[self.dataIndex]
    else
        if self.pointID == 2 then
            self.nightConfuseTargetPos = dummyPointData.Pos02Pos[self.dataIndex]
        else
            if self.pointID == 3 then
                self.nightConfuseTargetPos = dummyPointData.Pos03Pos[self.dataIndex]
            else
                if self.pointID == 4 then
                    self.nightConfuseTargetPos = dummyPointData.Pos04Pos[self.dataIndex]
                end
            end
        end
    end
end

function MengdeNightConfuse:NextMove()
    self:CallDelay(math.random(3, 10), self.RandomStand)
end

function MengdeNightConfuse:OnEvent(arg1)
    NpcDailyCommon.OnEvent(arg1, self)
end

return MengdeNightConfuse
