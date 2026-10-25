require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401801Trigger = class("Q7401801Trigger", GadgetActorProxy)
Q7401801Trigger.defaultAlias = "Q7401801Trigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q7401801Trigger:OnPostDataPrepare()
    print("[MainId: 74018][Trigger: Q7401801Trigger] OnPostDataPrepare")
    this = self
end

function Q7401801Trigger:OnPostComponentPrepare()
    print("[MainId: 74018][Trigger: Q7401801Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6.114489, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401801Trigger:TriggerIn()
    print("[MainId: 74018][Trigger: Q7401801Trigger] TriggerIn")
    actorMgr:GetActor("74018"):RequestInteraction(npcs.Npc21039Data.alias)
    this:DestroySelf()
end

function Q7401801Trigger:PreTriggerIn()
    print("[MainId: 74018][Trigger: Q7401801Trigger] PreTriggerIn")
end

function Q7401801Trigger:LightUpTriggerIn()
    print("[MainId: 74018][Trigger: Q7401801Trigger] LightUpTriggerIn")
end

function Q7401801Trigger:TriggerOut()
    print("[MainId: 74018][Trigger: Q7401801Trigger] TriggerOut")
end

return Q7401801Trigger
