require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74117Trigger = class("Q74117Trigger", GadgetActorProxy)
Q74117Trigger.defaultAlias = "Q74117Trigger"
local Q74117ClientConfig = require("Quest/Client/Q74117ClientConfig")

local this
local subIDs = Q74117ClientConfig.SubIDs
local npcs = Q74117ClientConfig.Npcs

function Q74117Trigger:OnPostDataPrepare()
    print("[MainId: 74117][Trigger: Q74117Trigger] OnPostDataPrepare")
    this = self
end

function Q74117Trigger:OnPostComponentPrepare()
    print("[MainId: 74117][Trigger: Q74117Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74117Trigger:TriggerIn()
    print("[MainId: 74117][Trigger: Q74117Trigger] TriggerIn")
    actorMgr:GetActor("74117"):RequestInteraction(npcs.Npc20717Data.alias)
    this:DestroySelf()
end

function Q74117Trigger:PreTriggerIn()
    print("[MainId: 74117][Trigger: Q74117Trigger] PreTriggerIn")
end

function Q74117Trigger:LightUpTriggerIn()
    print("[MainId: 74117][Trigger: Q74117Trigger] LightUpTriggerIn")
end

function Q74117Trigger:TriggerOut()
    print("[MainId: 74117][Trigger: Q74117Trigger] TriggerOut")
end

return Q74117Trigger
