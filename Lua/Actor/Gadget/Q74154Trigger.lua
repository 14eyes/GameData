require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74154Trigger = class("Q74154Trigger", GadgetActorProxy)
Q74154Trigger.defaultAlias = "Q74154Trigger"
local Q74154ClientConfig = require("Quest/Client/Q74154ClientConfig")

local this
local subIDs = Q74154ClientConfig.SubIDs
local npcs = Q74154ClientConfig.Npcs

function Q74154Trigger:OnPostDataPrepare()
    print("[MainId: 74154][Trigger: Q74154Trigger] OnPostDataPrepare")
    this = self
end

function Q74154Trigger:OnPostComponentPrepare()
    print("[MainId: 74154][Trigger: Q74154Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74154Trigger:TriggerIn()
    print("[MainId: 74154][Trigger: Q74154Trigger] TriggerIn")
    actorMgr:GetActor("74154"):RequestInteraction(npcs.Npc21253Data.alias, "", true)
    this:DestroySelf()
end

function Q74154Trigger:PreTriggerIn()
    print("[MainId: 74154][Trigger: Q74154Trigger] PreTriggerIn")
end

function Q74154Trigger:LightUpTriggerIn()
    print("[MainId: 74154][Trigger: Q74154Trigger] LightUpTriggerIn")
end

function Q74154Trigger:TriggerOut()
    print("[MainId: 74154][Trigger: Q74154Trigger] TriggerOut")
end

return Q74154Trigger
