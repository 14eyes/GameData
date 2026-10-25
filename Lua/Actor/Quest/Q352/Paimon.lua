require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Paimon = class("Paimon", NpcActorProxy)
Paimon.defaultAlias = "Paimon"

function Paimon:TransPreCallBack(arg1)
    print("TransPreCallBack")
    local euler = self.GetEuler(self)
    self.uActor:SetAvatarEuler(euler)
    self.AddPriorityInter(self, InterTimingType.BTN, arg1.PlayerBackInter)
    actorMgr:GetActor(arg1.ActorAlias):RequestInteraction(arg1.PaimonData.Paimon)
    self.ActionSafeCall(self, function(arg1)
        self:ClearPriorityInter(InterTimingType.BTN)
    end)
end

function Paimon:TransFinishCallBack(arg1)
    print("TransFinishCallBack")
end

function Paimon:Vanish(arg1)
    self:Destroy(false)
end

function Paimon:VanishKeep(arg1)
    self:Disappear(arg1)
end

function Paimon:ByQueen()
    self:RunToTask(sceneData:GetDummyPoint(3, "Q352Queen").pos, function(arg1)
        arg1:AirModeOff()
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q352Queen").rot))
    end)
end

function Paimon:AirModeOn()
    self:SwitchAirMode(true)
end

function Paimon:AirModeOff()
    self:SwitchAirMode(false)
end

Paimon.TaskOnPauseReminder = 1001
Paimon.TaskOnResumeReminder = 1002

function Paimon:Start()
    print("start!Paimon")
    self:RegisterTaskCB()
end

function Paimon:OnDestroy()
    print("Paimon destroied")
    self:UnregisterTaskCB()
end

return Paimon
