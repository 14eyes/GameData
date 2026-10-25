require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305242Trigger = class("Q7305242Trigger", GadgetActorProxy)
Q7305242Trigger.defaultAlias = "Q7305242Trigger"
local Q73052ClientConfig = require("Quest/Client/Q73052ClientConfig")

local subIDs = Q73052ClientConfig.SubIDs
local npcs = Q73052ClientConfig.Npcs
local datas = Q73052ClientConfig.Datas

function Q7305242Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305242Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305242Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305242)
    self:DestroySelf()
end

function Q7305242Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305242Trigger
