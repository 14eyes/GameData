require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501714Trigger = class("Q7501714Trigger", GadgetActorProxy)
Q7501714Trigger.defaultAlias = "Q7501714Trigger"
local Q75017ClientConfig = require("Quest/Client/Q75017ClientConfig")

local this
local subIDs = Q75017ClientConfig.SubIDs
local npcs = Q75017ClientConfig.Npcs

function Q7501714Trigger:OnPostDataPrepare()
    print("[MainId: 75017][Trigger: Q7501714Trigger] OnPostDataPrepare")
    this = self
end

function Q7501714Trigger:OnPostComponentPrepare()
    print("[MainId: 75017][Trigger: Q7501714Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75017)
end

function Q7501714Trigger:TriggerIn()
    print("[MainId: 75017][Trigger: Q7501714Trigger] TriggerIn")
    actorMgr:GetActor("75017"):RequestInteraction(npcs.Npc21532Data.alias, "", true)
end

function Q7501714Trigger:PreTriggerIn()
    print("[MainId: 75017][Trigger: Q7501714Trigger] PreTriggerIn")
end

function Q7501714Trigger:LightUpTriggerIn()
    print("[MainId: 75017][Trigger: Q7501714Trigger] LightUpTriggerIn")
end

function Q7501714Trigger:TriggerOut()
    print("[MainId: 75017][Trigger: Q7501714Trigger] TriggerOut")
end

return Q7501714Trigger
