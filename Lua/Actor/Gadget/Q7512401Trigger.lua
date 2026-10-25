require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7512401Trigger = class("Q7512401Trigger", GadgetActorProxy)
Q7512401Trigger.defaultAlias = "Q7512401Trigger"
local Q75124ClientConfig = require("Quest/Client/Q75124ClientConfig")

local this
local subIDs = Q75124ClientConfig.SubIDs
local npcs = Q75124ClientConfig.Npcs

function Q7512401Trigger:OnPostDataPrepare()
    print("[MainId: 75124][Trigger: Q7512401Trigger] OnPostDataPrepare")
    this = self
end

function Q7512401Trigger:OnPostComponentPrepare()
    print("[MainId: 75124][Trigger: Q7512401Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4.33, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75124)
end

function Q7512401Trigger:TriggerIn()
    print("[MainId: 75124][Trigger: Q7512401Trigger] TriggerIn")
    actorMgr:GetActor("75124"):RequestInteraction(npcs.Npc21732Data.alias, "", true)
    this:DestroySelf()
end

function Q7512401Trigger:PreTriggerIn()
    print("[MainId: 75124][Trigger: Q7512401Trigger] PreTriggerIn")
end

function Q7512401Trigger:LightUpTriggerIn()
    print("[MainId: 75124][Trigger: Q7512401Trigger] LightUpTriggerIn")
end

function Q7512401Trigger:TriggerOut()
    print("[MainId: 75124][Trigger: Q7512401Trigger] TriggerOut")
end

return Q7512401Trigger
