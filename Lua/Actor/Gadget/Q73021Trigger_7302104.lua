require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73021Trigger_7302104 = class("Q73021Trigger_7302104", GadgetActorProxy)
Q73021Trigger_7302104.defaultAlias = "Q73021Trigger_7302104"
local Q73021ClientConfig = require("Quest/Client/Q73021ClientConfig")

local subIDs = Q73021ClientConfig.SubIDs
local npcs = Q73021ClientConfig.Npcs
local datas = Q73021ClientConfig.Datas

function Q73021Trigger_7302104:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73021Trigger_7302104:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73021Trigger_7302104:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73021")
    actor:EnterSceneLookCamera({x = -1297.801, y = 126.0, z = 3424.936}, 0, 3, true, false)
    actor:NarratorOnlyTask(datas.Reminder_7302104, nil, "")
    self:DestroySelf()
end

function Q73021Trigger_7302104:TriggerOut()
    print("TriggerOut")
end

return Q73021Trigger_7302104
