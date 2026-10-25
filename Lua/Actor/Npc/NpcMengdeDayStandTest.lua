require("Actor/ActorCommon")
local DailyNpc = require("Actor/Npc/DailyNpc")

local MengdeDayStandTest = class("MengdeDayStandTest", DailyNpc)
local NPCEventType = require("Actor/Npc/NPCEventType")

MengdeDayStandTest.defaultAlias = "MengdeDayStand"
local dummyPointData = require("Actor/Npc/Config/CfgMengdeDayStand").DummyPointData

function MengdeDayStandTest:RecoverFromCollisionEnter()
    print("RecoverFromCollisionEnter")
    self:Recover()
end

function MengdeDayStandTest:PreGetAlias()
    return dummyPointData.Npc .. "_" .. tostring(self.dataIndex)
end

function MengdeDayStandTest:WalkBack()
    print("walkback")
    self:WalkToTask(dummyPointData.BornPos[self.dataIndex], self.Recover)
end

function MengdeDayStandTest:Recover()
    self.OnAction = 0
    self:Standby()
    self:SteerToTask(M.Euler2DirXZ(dummyPointData.BornDir[self.dataIndex]), 1, true, true)
    self:DoFreeStateTrigger()
end

function MengdeDayStandTest:StartDay()
    self:Standby()
    self:TurnTo(M.Euler2DirXZ(dummyPointData.BornDir[self.dataIndex]))
    self:DoFreeStateTrigger()
    self:ShowSelf()
    self:PerformDither(true, 2)
    self:DataInit()
    self:StartBubble()
end

function MengdeDayStandTest:StartNight()
    self:ClearNpcSpeechBubble(dummyPointData.NpcID[self.dataIndex])
    self:PerformDither(false, 2, self.HideSelf)
end

return MengdeDayStandTest
