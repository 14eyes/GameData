require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70529Trigger = class("Q70529Trigger", GadgetActorProxy)
Q70529Trigger.defaultAlias = "Q70529Trigger"
local Q70529ClientConfig = require("Quest/Client/Q70529ClientConfig")

local this
local subIDs = Q70529ClientConfig.SubIDs
local npcs = Q70529ClientConfig.Npcs

function Q70529Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70529Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q70529Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7052901)
    this:DestroySelf()
end

function Q70529Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q70529Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q70529Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70529Trigger
