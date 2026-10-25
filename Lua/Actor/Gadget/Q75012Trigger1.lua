require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75012Trigger1 = class("Q75012Trigger1", GadgetActorProxy)
Q75012Trigger1.defaultAlias = "Q75012Trigger1"
local Q75012ClientConfig = require("Quest/Client/Q75012ClientConfig")

local this
local subIDs = Q75012ClientConfig.SubIDs
local npcs = Q75012ClientConfig.Npcs
local points = Q75012ClientConfig.Points

function Q75012Trigger1:OnPostDataPrepare()
    print("[MainId: 75012][Trigger: Q75012Trigger1] OnPostDataPrepare")
    this = self
end

function Q75012Trigger1:OnPostComponentPrepare()
    print("[MainId: 75012][Trigger: Q75012Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75012)
end

function Q75012Trigger1:TriggerIn()
    print("[MainId: 75012][Trigger: Q75012Trigger1] TriggerIn")
    actorMgr:GetActor("75012"):RequestInteraction(npcs.Npc5280Data.alias, "", true)
    this:DestroySelf()
end

function Q75012Trigger1:PreTriggerIn()
    print("[MainId: 75012][Trigger: Q75012Trigger1] PreTriggerIn")
end

function Q75012Trigger1:LightUpTriggerIn()
    print("[MainId: 75012][Trigger: Q75012Trigger1] LightUpTriggerIn")
end

function Q75012Trigger1:TriggerOut()
    print("[MainId: 75012][Trigger: Q75012Trigger1] TriggerOut")
end

return Q75012Trigger1
