require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74210Trigger = class("Q74210Trigger", GadgetActorProxy)
Q74210Trigger.defaultAlias = "Q74210Trigger"
local Q74210ClientConfig = require("Quest/Client/Q74210ClientConfig")

local this
local subIDs = Q74210ClientConfig.SubIDs
local npcs = Q74210ClientConfig.Npcs

function Q74210Trigger:OnPostDataPrepare()
    print("[MainId: 74210][Trigger: Q74210Trigger] OnPostDataPrepare")
    this = self
end

function Q74210Trigger:OnPostComponentPrepare()
    print("[MainId: 74210][Trigger: Q74210Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74210Trigger:TriggerIn()
    print("[MainId: 74210][Trigger: Q74210Trigger] TriggerIn")
end

function Q74210Trigger:PreTriggerIn()
    print("[MainId: 74210][Trigger: Q74210Trigger] PreTriggerIn")
end

function Q74210Trigger:LightUpTriggerIn()
    print("[MainId: 74210][Trigger: Q74210Trigger] LightUpTriggerIn")
end

function Q74210Trigger:TriggerOut()
    print("[MainId: 74210][Trigger: Q74210Trigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7421001)
    this:DestroySelf()
end

return Q74210Trigger
