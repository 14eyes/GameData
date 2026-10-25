require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401820Trigger = class("Q7401820Trigger", GadgetActorProxy)
Q7401820Trigger.defaultAlias = "Q7401820Trigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q7401820Trigger:OnPostDataPrepare()
    print("[MainId: 74018][Trigger: Q7401820Trigger] OnPostDataPrepare")
    this = self
end

function Q7401820Trigger:OnPostComponentPrepare()
    print("[MainId: 74018][Trigger: Q7401820Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401820Trigger:TriggerIn()
    print("[MainId: 74018][Trigger: Q7401820Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401822)
    this:DestroySelf()
end

function Q7401820Trigger:PreTriggerIn()
    print("[MainId: 74018][Trigger: Q7401820Trigger] PreTriggerIn")
end

function Q7401820Trigger:LightUpTriggerIn()
    print("[MainId: 74018][Trigger: Q7401820Trigger] LightUpTriggerIn")
end

function Q7401820Trigger:TriggerOut()
    print("[MainId: 74018][Trigger: Q7401820Trigger] TriggerOut")
end

return Q7401820Trigger
