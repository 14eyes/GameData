require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501707Trigger = class("Q7501707Trigger", GadgetActorProxy)
Q7501707Trigger.defaultAlias = "Q7501707Trigger"
local Q75017ClientConfig = require("Quest/Client/Q75017ClientConfig")

local this
local subIDs = Q75017ClientConfig.SubIDs
local npcs = Q75017ClientConfig.Npcs

function Q7501707Trigger:OnPostDataPrepare()
    print("[MainId: 75017][Trigger: Q7501707Trigger] OnPostDataPrepare")
    this = self
end

function Q7501707Trigger:OnPostComponentPrepare()
    print("[MainId: 75017][Trigger: Q7501707Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75017)
end

function Q7501707Trigger:TriggerIn()
    print("[MainId: 75017][Trigger: Q7501707Trigger] TriggerIn")
    actorMgr:GetActor("75017"):RequestInteraction(npcs.Npc21532Data.alias, "", true)
    this:DestroySelf()
end

function Q7501707Trigger:PreTriggerIn()
    print("[MainId: 75017][Trigger: Q7501707Trigger] PreTriggerIn")
end

function Q7501707Trigger:LightUpTriggerIn()
    print("[MainId: 75017][Trigger: Q7501707Trigger] LightUpTriggerIn")
end

function Q7501707Trigger:TriggerOut()
    print("[MainId: 75017][Trigger: Q7501707Trigger] TriggerOut")
end

return Q7501707Trigger
