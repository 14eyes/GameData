require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305227Trigger = class("Q7305227Trigger", GadgetActorProxy)
Q7305227Trigger.defaultAlias = "Q7305227Trigger"
local Q73052ClientConfig = require("Quest/Client/Q73052ClientConfig")

local subIDs = Q73052ClientConfig.SubIDs
local npcs = Q73052ClientConfig.Npcs
local datas = Q73052ClientConfig.Datas

function Q7305227Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305227Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305227Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305227)
    self:DestroySelf()
end

function Q7305227Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305227Trigger
