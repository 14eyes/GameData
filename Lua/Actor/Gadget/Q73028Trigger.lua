require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73028Trigger = class("Q73028Trigger", GadgetActorProxy)
Q73028Trigger.defaultAlias = "Q73028Trigger"
local Q73028ClientConfig = require("Quest/Client/Q73028ClientConfig")

local subIDs = Q73028ClientConfig.SubIDs
local npcs = Q73028ClientConfig.Npcs
local datas = Q73028ClientConfig.Datas

function Q73028Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73028Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73028Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73028"):NarratorOnlyTaskByData(datas.NarratorWithId2, nil, 73028)
    self:DestroySelf()
end

function Q73028Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73028Trigger
