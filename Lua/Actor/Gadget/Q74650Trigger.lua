require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74650Trigger = class("Q74650Trigger", GadgetActorProxy)
Q74650Trigger.defaultAlias = "Q74650Trigger"
local Q74650ClientConfig = require("Quest/Client/Q74650ClientConfig")

local this
local subIDs = Q74650ClientConfig.SubIDs
local npcs = Q74650ClientConfig.Npcs

function Q74650Trigger:OnPostDataPrepare()
    print("[MainId: 74650][Trigger: Q74650Trigger] OnPostDataPrepare")
    this = self
end

function Q74650Trigger:OnPostComponentPrepare()
    print("[MainId: 74650][Trigger: Q74650Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74650Trigger:TriggerIn()
    print("[MainId: 74650][Trigger: Q74650Trigger] TriggerIn")
    actorMgr:GetActor("74650"):RequestInteractionForceAlias(npcs.Npc5042Data.alias)
    this:DestroySelf()
end

function Q74650Trigger:PreTriggerIn()
    print("[MainId: 74650][Trigger: Q74650Trigger] PreTriggerIn")
end

function Q74650Trigger:LightUpTriggerIn()
    print("[MainId: 74650][Trigger: Q74650Trigger] LightUpTriggerIn")
end

function Q74650Trigger:TriggerOut()
    print("[MainId: 74650][Trigger: Q74650Trigger] TriggerOut")
end

return Q74650Trigger
