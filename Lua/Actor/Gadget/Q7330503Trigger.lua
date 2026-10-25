require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7330503Trigger = class("Q7330503Trigger", GadgetActorProxy)
Q7330503Trigger.defaultAlias = "Q7330503Trigger"
local Q73305ClientConfig = require("Quest/Client/Q73305ClientConfig")

local this
local subIDs = Q73305ClientConfig.SubIDs
local npcs = Q73305ClientConfig.Npcs

function Q7330503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7330503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7330503Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7330503)
    this:DestroySelf()
end

function Q7330503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7330503Trigger
