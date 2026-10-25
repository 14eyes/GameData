require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79067Trigger = class("Q79067Trigger", GadgetActorProxy)
Q79067Trigger.defaultAlias = "Q79067Trigger"
local Q79067ClientConfig = require("Quest/Client/Q79067ClientConfig")

local this
local subIDs = Q79067ClientConfig.SubIDs
local npcs = Q79067ClientConfig.Npcs
local datas = Q79067ClientConfig.Datas

function Q79067Trigger:OnPostDataPrepare()
    print("[MainId: 79067][Trigger: Q79067Trigger] OnPostDataPrepare")
    this = self
end

function Q79067Trigger:OnPostComponentPrepare()
    print("[MainId: 79067][Trigger: Q79067Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79067)
end

function Q79067Trigger:TriggerIn()
    print("[MainId: 79067][Trigger: Q79067Trigger] TriggerIn")
    actorMgr:GetActor("79067"):RequestInteraction(npcs.Npc21466Data.alias, "", true)
    this:DestroySelf()
end

function Q79067Trigger:PreTriggerIn()
    print("[MainId: 79067][Trigger: Q79067Trigger] PreTriggerIn")
end

function Q79067Trigger:LightUpTriggerIn()
    print("[MainId: 79067][Trigger: Q79067Trigger] LightUpTriggerIn")
end

function Q79067Trigger:TriggerOut()
    print("[MainId: 79067][Trigger: Q79067Trigger] TriggerOut")
end

return Q79067Trigger
