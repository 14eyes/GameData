require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73511Trigger = class("Q73511Trigger", GadgetActorProxy)
Q73511Trigger.defaultAlias = "Q73511Trigger"
local Q73511ClientConfig = require("Quest/Client/Q73511ClientConfig")

local this
local subIDs = Q73511ClientConfig.SubIDs
local npcs = Q73511ClientConfig.Npcs

function Q73511Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73511Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73511Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7351102)
    this:DestroySelf()
end

function Q73511Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73511Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73511Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73511Trigger
