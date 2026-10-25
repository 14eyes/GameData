require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75012Trigger2 = class("Q75012Trigger2", GadgetActorProxy)
Q75012Trigger2.defaultAlias = "Q75012Trigger2"
local Q75012ClientConfig = require("Quest/Client/Q75012ClientConfig")

local this
local subIDs = Q75012ClientConfig.SubIDs
local npcs = Q75012ClientConfig.Npcs
local points = Q75012ClientConfig.Points

function Q75012Trigger2:OnPostDataPrepare()
    print("[MainId: 75012][Trigger: Q75012Trigger2] OnPostDataPrepare")
    this = self
end

function Q75012Trigger2:OnPostComponentPrepare()
    print("[MainId: 75012][Trigger: Q75012Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75012)
end

function Q75012Trigger2:TriggerIn()
    print("[MainId: 75012][Trigger: Q75012Trigger2] TriggerIn")
    actorMgr:GetActor("75012"):RequestInteraction(npcs.Npc5280Data.alias, "", true)
    this:DestroySelf()
end

function Q75012Trigger2:PreTriggerIn()
    print("[MainId: 75012][Trigger: Q75012Trigger2] PreTriggerIn")
end

function Q75012Trigger2:LightUpTriggerIn()
    print("[MainId: 75012][Trigger: Q75012Trigger2] LightUpTriggerIn")
end

function Q75012Trigger2:TriggerOut()
    print("[MainId: 75012][Trigger: Q75012Trigger2] TriggerOut")
end

return Q75012Trigger2
