require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303004Trigger = class("Q303004Trigger", GadgetActorProxy)
Q303004Trigger.defaultAlias = "Q303004Trigger"
local Q3030ClientConfig = require("Quest/Client/Q3030ClientConfig")

local this
local subIDs = Q3030ClientConfig.SubIDs
local npcs = Q3030ClientConfig.Npcs

function Q303004Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303004Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303004Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 303004)
    this:DestroySelf()
end

function Q303004Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303004Trigger
