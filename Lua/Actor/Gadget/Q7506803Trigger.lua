require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506803Trigger = class("Q7506803Trigger", GadgetActorProxy)
Q7506803Trigger.defaultAlias = "Q7506803Trigger"
local Q75068ClientConfig = require("Quest/Client/Q75068ClientConfig")

local this
local subIDs = Q75068ClientConfig.SubIDs
local npcs = Q75068ClientConfig.Npcs
local points = Q75068ClientConfig.Points

function Q7506803Trigger:OnPostDataPrepare()
    print("[MainId: 75068][Trigger: Q7506803Trigger] OnPostDataPrepare")
    this = self
end

function Q7506803Trigger:OnPostComponentPrepare()
    print("[MainId: 75068][Trigger: Q7506803Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75068)
end

function Q7506803Trigger:TriggerIn()
    print("[MainId: 75068][Trigger: Q7506803Trigger] TriggerIn")
end

function Q7506803Trigger:PreTriggerIn()
    print("[MainId: 75068][Trigger: Q7506803Trigger] PreTriggerIn")
end

function Q7506803Trigger:LightUpTriggerIn()
    print("[MainId: 75068][Trigger: Q7506803Trigger] LightUpTriggerIn")
end

function Q7506803Trigger:TriggerOut()
    print("[MainId: 75068][Trigger: Q7506803Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7506803)
    this:DestroySelf()
end

return Q7506803Trigger
