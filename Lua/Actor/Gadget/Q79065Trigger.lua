require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79065Trigger = class("Q79065Trigger", GadgetActorProxy)
Q79065Trigger.defaultAlias = "Q79065Trigger"
local Q79065ClientConfig = require("Quest/Client/Q79065ClientConfig")

local this
local subIDs = Q79065ClientConfig.SubIDs
local npcs = Q79065ClientConfig.Npcs

function Q79065Trigger:OnPostDataPrepare()
    print("[MainId: 79065][Trigger: Q79065Trigger] OnPostDataPrepare")
    this = self
end

function Q79065Trigger:OnPostComponentPrepare()
    print("[MainId: 79065][Trigger: Q79065Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(23.6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79065)
end

function Q79065Trigger:TriggerIn()
    print("[MainId: 79065][Trigger: Q79065Trigger] TriggerIn")
    actorMgr:GetActor("79065"):RequestInteraction(npcs.Npc21467Data.alias, "", true)
    this:DestroySelf()
end

function Q79065Trigger:PreTriggerIn()
    print("[MainId: 79065][Trigger: Q79065Trigger] PreTriggerIn")
end

function Q79065Trigger:LightUpTriggerIn()
    print("[MainId: 79065][Trigger: Q79065Trigger] LightUpTriggerIn")
end

function Q79065Trigger:TriggerOut()
    print("[MainId: 79065][Trigger: Q79065Trigger] TriggerOut")
end

return Q79065Trigger
