require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74150Trigger = class("Q74150Trigger", GadgetActorProxy)
Q74150Trigger.defaultAlias = "Q74150Trigger"
local Q74150ClientConfig = require("Quest/Client/Q74150ClientConfig")

local this
local subIDs = Q74150ClientConfig.SubIDs
local npcs = Q74150ClientConfig.Npcs

function Q74150Trigger:OnPostDataPrepare()
    print("[MainId: 74150][Trigger: Q74150Trigger] OnPostDataPrepare")
    this = self
end

function Q74150Trigger:OnPostComponentPrepare()
    print("[MainId: 74150][Trigger: Q74150Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74150Trigger:TriggerIn()
    print("[MainId: 74150][Trigger: Q74150Trigger] TriggerIn")
    actorMgr:GetActor("74150"):RequestInteraction(npcs.Npc21249Data.alias, "", true)
    this:DestroySelf()
end

function Q74150Trigger:PreTriggerIn()
    print("[MainId: 74150][Trigger: Q74150Trigger] PreTriggerIn")
end

function Q74150Trigger:LightUpTriggerIn()
    print("[MainId: 74150][Trigger: Q74150Trigger] LightUpTriggerIn")
end

function Q74150Trigger:TriggerOut()
    print("[MainId: 74150][Trigger: Q74150Trigger] TriggerOut")
end

return Q74150Trigger
