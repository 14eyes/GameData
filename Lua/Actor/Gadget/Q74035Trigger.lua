require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74035Trigger = class("Q74035Trigger", GadgetActorProxy)
Q74035Trigger.defaultAlias = "Q74035Trigger"
local Q74035ClientConfig = require("Quest/Client/Q74035ClientConfig")

local this
local subIDs = Q74035ClientConfig.SubIDs
local npcs = Q74035ClientConfig.Npcs
local points = Q74035ClientConfig.Points

function Q74035Trigger:OnPostDataPrepare()
    print("[MainId: 74035][Trigger: Q74035Trigger] OnPostDataPrepare")
    this = self
end

function Q74035Trigger:OnPostComponentPrepare()
    print("[MainId: 74035][Trigger: Q74035Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74035Trigger:TriggerIn()
    print("[MainId: 74035][Trigger: Q74035Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7403506)
    this:DestroySelf()
end

function Q74035Trigger:PreTriggerIn()
    print("[MainId: 74035][Trigger: Q74035Trigger] PreTriggerIn")
end

function Q74035Trigger:LightUpTriggerIn()
    print("[MainId: 74035][Trigger: Q74035Trigger] LightUpTriggerIn")
end

function Q74035Trigger:TriggerOut()
    print("[MainId: 74035][Trigger: Q74035Trigger] TriggerOut")
end

return Q74035Trigger
