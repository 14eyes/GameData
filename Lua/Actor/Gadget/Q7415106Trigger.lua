require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7415106Trigger = class("Q7415106Trigger", GadgetActorProxy)
Q7415106Trigger.defaultAlias = "Q7415106Trigger"
local Q74151ClientConfig = require("Quest/Client/Q74151ClientConfig")

local this
local subIDs = Q74151ClientConfig.SubIDs
local npcs = Q74151ClientConfig.Npcs

function Q7415106Trigger:OnPostDataPrepare()
    print("[MainId: 74151][Trigger: Q7415106Trigger] OnPostDataPrepare")
    this = self
end

function Q7415106Trigger:OnPostComponentPrepare()
    print("[MainId: 74151][Trigger: Q7415106Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7415106Trigger:TriggerIn()
    print("[MainId: 74151][Trigger: Q7415106Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74151")
    actor:CreateQuestNpcById(7415106, npcs.PaimonData.id, 1)
    actor:RequestInteraction(npcs.PaimonData.alias, "", true)
    this:DestroySelf()
end

function Q7415106Trigger:PreTriggerIn()
    print("[MainId: 74151][Trigger: Q7415106Trigger] PreTriggerIn")
end

function Q7415106Trigger:LightUpTriggerIn()
    print("[MainId: 74151][Trigger: Q7415106Trigger] LightUpTriggerIn")
end

function Q7415106Trigger:TriggerOut()
    print("[MainId: 74151][Trigger: Q7415106Trigger] TriggerOut")
end

return Q7415106Trigger
