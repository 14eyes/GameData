require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2304112Trigger = class("Q2304112Trigger", GadgetActorProxy)
Q2304112Trigger.defaultAlias = "Q2304112Trigger"
local Q23041ClientConfig = require("Quest/Client/Q23041ClientConfig")

local subIDs = Q23041ClientConfig.SubIDs
local npcs = Q23041ClientConfig.Npcs
local datas = Q23041ClientConfig.Datas

function Q2304112Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2304112Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2304112Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23041"):NarratorOnlyTaskByData(datas.NarratorWithId13)
    self:DestroySelf()
end

function Q2304112Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2304112Trigger
