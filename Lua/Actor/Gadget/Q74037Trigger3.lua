require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74037Trigger3 = class("Q74037Trigger3", GadgetActorProxy)
Q74037Trigger3.defaultAlias = "Q74037Trigger3"
local Q74037ClientConfig = require("Quest/Client/Q74037ClientConfig")

local this
local subIDs = Q74037ClientConfig.SubIDs
local npcs = Q74037ClientConfig.Npcs
local points = Q74037ClientConfig.Points

function Q74037Trigger3:OnPostDataPrepare()
    print("[MainId: 74037][Trigger: Q74037Trigger3] OnPostDataPrepare")
    this = self
end

function Q74037Trigger3:OnPostComponentPrepare()
    print("[MainId: 74037][Trigger: Q74037Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74037Trigger3:TriggerIn()
    print("[MainId: 74037][Trigger: Q74037Trigger3] TriggerIn")
    actorMgr:GetActor("74037"):RequestInteraction(npcs.Npc5109Data.alias)
    this:DestroySelf()
end

function Q74037Trigger3:PreTriggerIn()
    print("[MainId: 74037][Trigger: Q74037Trigger3] PreTriggerIn")
end

function Q74037Trigger3:LightUpTriggerIn()
    print("[MainId: 74037][Trigger: Q74037Trigger3] LightUpTriggerIn")
end

function Q74037Trigger3:TriggerOut()
    print("[MainId: 74037][Trigger: Q74037Trigger3] TriggerOut")
end

return Q74037Trigger3
