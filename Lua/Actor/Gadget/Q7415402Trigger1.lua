require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7415402Trigger1 = class("Q7415402Trigger1", GadgetActorProxy)
Q7415402Trigger1.defaultAlias = "Q7415402Trigger1"
local Q74154ClientConfig = require("Quest/Client/Q74154ClientConfig")

local this
local subIDs = Q74154ClientConfig.SubIDs
local npcs = Q74154ClientConfig.Npcs

function Q7415402Trigger1:OnPostDataPrepare()
    print("[MainId: 74154][Trigger: Q7415402Trigger1] OnPostDataPrepare")
    this = self
end

function Q7415402Trigger1:OnPostComponentPrepare()
    print("[MainId: 74154][Trigger: Q7415402Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7415402Trigger1:TriggerIn()
    print("[MainId: 74154][Trigger: Q7415402Trigger1] TriggerIn")
    local actor = actorMgr:GetActor("74154")
    actor:CreateQuestNpcById(7415402, npcs.PaimonData.id, 1)
    actor:RequestInteraction(npcs.PaimonData.alias, "", true)
    this:DestroySelf()
end

function Q7415402Trigger1:PreTriggerIn()
    print("[MainId: 74154][Trigger: Q7415402Trigger1] PreTriggerIn")
end

function Q7415402Trigger1:LightUpTriggerIn()
    print("[MainId: 74154][Trigger: Q7415402Trigger1] LightUpTriggerIn")
end

function Q7415402Trigger1:TriggerOut()
    print("[MainId: 74154][Trigger: Q7415402Trigger1] TriggerOut")
end

return Q7415402Trigger1
