require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7512403Trigger = class("Q7512403Trigger", GadgetActorProxy)
Q7512403Trigger.defaultAlias = "Q7512403Trigger"
local Q75124ClientConfig = require("Quest/Client/Q75124ClientConfig")

local this
local subIDs = Q75124ClientConfig.SubIDs
local npcs = Q75124ClientConfig.Npcs

function Q7512403Trigger:OnPostDataPrepare()
    print("[MainId: 75124][Trigger: Q7512403Trigger] OnPostDataPrepare")
    this = self
end

function Q7512403Trigger:OnPostComponentPrepare()
    print("[MainId: 75124][Trigger: Q7512403Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(51.16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75124)
end

function Q7512403Trigger:TriggerIn()
    print("[MainId: 75124][Trigger: Q7512403Trigger] TriggerIn")
    actorMgr:GetActor("75124"):RequestInteraction(npcs.Npc21732Data.alias, "", true)
    this:DestroySelf()
end

function Q7512403Trigger:PreTriggerIn()
    print("[MainId: 75124][Trigger: Q7512403Trigger] PreTriggerIn")
end

function Q7512403Trigger:LightUpTriggerIn()
    print("[MainId: 75124][Trigger: Q7512403Trigger] LightUpTriggerIn")
end

function Q7512403Trigger:TriggerOut()
    print("[MainId: 75124][Trigger: Q7512403Trigger] TriggerOut")
end

return Q7512403Trigger
