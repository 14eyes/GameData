require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305613Trigger = class("Q7305613Trigger", GadgetActorProxy)
Q7305613Trigger.defaultAlias = "Q7305613Trigger"
local Q73056ClientConfig = require("Quest/Client/Q73056ClientConfig")

local subIDs = Q73056ClientConfig.SubIDs
local npcs = Q73056ClientConfig.Npcs
local datas = Q73056ClientConfig.Datas

function Q7305613Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305613Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305613Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305613)
    self:DestroySelf()
end

function Q7305613Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305613Trigger
