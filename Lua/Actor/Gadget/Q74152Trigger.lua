require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74152Trigger = class("Q74152Trigger", GadgetActorProxy)
Q74152Trigger.defaultAlias = "Q74152Trigger"
local Q74152ClientConfig = require("Quest/Client/Q74152ClientConfig")

local this
local subIDs = Q74152ClientConfig.SubIDs
local npcs = Q74152ClientConfig.Npcs

function Q74152Trigger:OnPostDataPrepare()
    print("[MainId: 74152][Trigger: Q74152Trigger] OnPostDataPrepare")
    this = self
end

function Q74152Trigger:OnPostComponentPrepare()
    print("[MainId: 74152][Trigger: Q74152Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74152Trigger:TriggerIn()
    print("[MainId: 74152][Trigger: Q74152Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74152")
    actor:CreateQuestNpcById(7415201, npcs.PaimonData.id, 0)
    actor:RequestInteraction(npcs.PaimonData.alias, "", true)
    this:DestroySelf()
end

function Q74152Trigger:PreTriggerIn()
    print("[MainId: 74152][Trigger: Q74152Trigger] PreTriggerIn")
end

function Q74152Trigger:LightUpTriggerIn()
    print("[MainId: 74152][Trigger: Q74152Trigger] LightUpTriggerIn")
end

function Q74152Trigger:TriggerOut()
    print("[MainId: 74152][Trigger: Q74152Trigger] TriggerOut")
end

return Q74152Trigger
