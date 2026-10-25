require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74223Trigger = class("Q74223Trigger", GadgetActorProxy)
Q74223Trigger.defaultAlias = "Q74223Trigger"
local Q74223ClientConfig = require("Quest/Client/Q74223ClientConfig")

local this
local subIDs = Q74223ClientConfig.SubIDs
local npcs = Q74223ClientConfig.Npcs
local points = Q74223ClientConfig.Points

function Q74223Trigger:OnPostDataPrepare()
    print("[MainId: 74223][Trigger: Q74223Trigger] OnPostDataPrepare")
    this = self
end

function Q74223Trigger:OnPostComponentPrepare()
    print("[MainId: 74223][Trigger: Q74223Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74223)
end

function Q74223Trigger:TriggerIn()
    print("[MainId: 74223][Trigger: Q74223Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7422301)
    this:DestroySelf()
end

function Q74223Trigger:PreTriggerIn()
    print("[MainId: 74223][Trigger: Q74223Trigger] PreTriggerIn")
end

function Q74223Trigger:LightUpTriggerIn()
    print("[MainId: 74223][Trigger: Q74223Trigger] LightUpTriggerIn")
end

function Q74223Trigger:TriggerOut()
    print("[MainId: 74223][Trigger: Q74223Trigger] TriggerOut")
end

return Q74223Trigger
