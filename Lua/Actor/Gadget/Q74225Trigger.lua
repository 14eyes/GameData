require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74225Trigger = class("Q74225Trigger", GadgetActorProxy)
Q74225Trigger.defaultAlias = "Q74225Trigger"
local Q74225ClientConfig = require("Quest/Client/Q74225ClientConfig")

local this
local subIDs = Q74225ClientConfig.SubIDs
local npcs = Q74225ClientConfig.Npcs
local points = Q74225ClientConfig.Points

function Q74225Trigger:OnPostDataPrepare()
    print("[MainId: 74225][Trigger: Q74225Trigger] OnPostDataPrepare")
    this = self
end

function Q74225Trigger:OnPostComponentPrepare()
    print("[MainId: 74225][Trigger: Q74225Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74225)
end

function Q74225Trigger:TriggerIn()
    print("[MainId: 74225][Trigger: Q74225Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7422503)
    this:DestroySelf()
end

function Q74225Trigger:PreTriggerIn()
    print("[MainId: 74225][Trigger: Q74225Trigger] PreTriggerIn")
end

function Q74225Trigger:LightUpTriggerIn()
    print("[MainId: 74225][Trigger: Q74225Trigger] LightUpTriggerIn")
end

function Q74225Trigger:TriggerOut()
    print("[MainId: 74225][Trigger: Q74225Trigger] TriggerOut")
end

return Q74225Trigger
