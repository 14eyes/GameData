require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2303505Trigger = class("Q2303505Trigger", GadgetActorProxy)
Q2303505Trigger.defaultAlias = "Q2303505Trigger"
local Q23035ClientConfig = require("Quest/Client/Q23035ClientConfig")

local this
local subIDs = Q23035ClientConfig.SubIDs
local npcs = Q23035ClientConfig.Npcs
local gadgets = Q23035ClientConfig.Gadgets

function Q2303505Trigger:OnPostDataPrepare()
    print("[MainId: 23035][Trigger: Q2303505Trigger] OnPostDataPrepare")
    this = self
end

function Q2303505Trigger:OnPostComponentPrepare()
    print("[MainId: 23035][Trigger: Q2303505Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2303505Trigger:TriggerIn()
    print("[MainId: 23035][Trigger: Q2303505Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 2303502)
    this:DestroySelf()
end

function Q2303505Trigger:TriggerOut()
    print("[MainId: 23035][Trigger: Q2303505Trigger] TriggerOut")
end

return Q2303505Trigger
