require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7052305Trigger = class("Q7052305Trigger", GadgetActorProxy)
Q7052305Trigger.defaultAlias = "Q7052305Trigger"
local Q70523ClientConfig = require("Quest/Client/Q70523ClientConfig")

local subIDs = Q70523ClientConfig.SubIDs
local npcs = Q70523ClientConfig.Npcs

function Q7052305Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7052305Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7052305Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7052305)
    self:DestroySelf()
end

function Q7052305Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7052305Trigger
