require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303005Trigger = class("Q303005Trigger", GadgetActorProxy)
Q303005Trigger.defaultAlias = "Q303005Trigger"
local Q3030ClientConfig = require("Quest/Client/Q3030ClientConfig")

local this
local subIDs = Q3030ClientConfig.SubIDs
local npcs = Q3030ClientConfig.Npcs

function Q303005Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303005Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303005Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 303005)
    this:DestroySelf()
end

function Q303005Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303005Trigger
