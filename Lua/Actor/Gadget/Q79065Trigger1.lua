require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79065Trigger1 = class("Q79065Trigger1", GadgetActorProxy)
Q79065Trigger1.defaultAlias = "Q79065Trigger1"
local Q79065ClientConfig = require("Quest/Client/Q79065ClientConfig")

local this
local subIDs = Q79065ClientConfig.SubIDs
local npcs = Q79065ClientConfig.Npcs

function Q79065Trigger1:OnPostDataPrepare()
    print("[MainId: 79065][Trigger: Q79065Trigger1] OnPostDataPrepare")
    this = self
end

function Q79065Trigger1:OnPostComponentPrepare()
    print("[MainId: 79065][Trigger: Q79065Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79065)
end

function Q79065Trigger1:TriggerIn()
    print("[MainId: 79065][Trigger: Q79065Trigger1] TriggerIn")
    actorMgr:GetActor("79065"):RequestInteraction(npcs.Npc21467Data.alias, "", true)
    this:DestroySelf()
end

function Q79065Trigger1:PreTriggerIn()
    print("[MainId: 79065][Trigger: Q79065Trigger1] PreTriggerIn")
end

function Q79065Trigger1:LightUpTriggerIn()
    print("[MainId: 79065][Trigger: Q79065Trigger1] LightUpTriggerIn")
end

function Q79065Trigger1:TriggerOut()
    print("[MainId: 79065][Trigger: Q79065Trigger1] TriggerOut")
end

return Q79065Trigger1
