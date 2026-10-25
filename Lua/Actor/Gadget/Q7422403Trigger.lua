require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422403Trigger = class("Q7422403Trigger", GadgetActorProxy)
Q7422403Trigger.defaultAlias = "Q7422403Trigger"
local Q74224ClientConfig = require("Quest/Client/Q74224ClientConfig")

local this
local subIDs = Q74224ClientConfig.SubIDs
local npcs = Q74224ClientConfig.Npcs
local points = Q74224ClientConfig.Points

function Q7422403Trigger:OnPostDataPrepare()
    print("[MainId: 74224][Trigger: Q7422403Trigger] OnPostDataPrepare")
    this = self
end

function Q7422403Trigger:OnPostComponentPrepare()
    print("[MainId: 74224][Trigger: Q7422403Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74224)
end

function Q7422403Trigger:TriggerIn()
    print("[MainId: 74224][Trigger: Q7422403Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7422403)
    this:DestroySelf()
end

function Q7422403Trigger:PreTriggerIn()
    print("[MainId: 74224][Trigger: Q7422403Trigger] PreTriggerIn")
end

function Q7422403Trigger:LightUpTriggerIn()
    print("[MainId: 74224][Trigger: Q7422403Trigger] LightUpTriggerIn")
end

function Q7422403Trigger:TriggerOut()
    print("[MainId: 74224][Trigger: Q7422403Trigger] TriggerOut")
end

return Q7422403Trigger
