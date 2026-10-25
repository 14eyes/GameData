require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506802Trigger = class("Q7506802Trigger", GadgetActorProxy)
Q7506802Trigger.defaultAlias = "Q7506802Trigger"
local Q75068ClientConfig = require("Quest/Client/Q75068ClientConfig")

local this
local subIDs = Q75068ClientConfig.SubIDs
local npcs = Q75068ClientConfig.Npcs
local points = Q75068ClientConfig.Points

function Q7506802Trigger:OnPostDataPrepare()
    print("[MainId: 75068][Trigger: Q7506802Trigger] OnPostDataPrepare")
    this = self
end

function Q7506802Trigger:OnPostComponentPrepare()
    print("[MainId: 75068][Trigger: Q7506802Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75068)
end

function Q7506802Trigger:TriggerIn()
    print("[MainId: 75068][Trigger: Q7506802Trigger] TriggerIn")
end

function Q7506802Trigger:PreTriggerIn()
    print("[MainId: 75068][Trigger: Q7506802Trigger] PreTriggerIn")
end

function Q7506802Trigger:LightUpTriggerIn()
    print("[MainId: 75068][Trigger: Q7506802Trigger] LightUpTriggerIn")
end

function Q7506802Trigger:TriggerOut()
    print("[MainId: 75068][Trigger: Q7506802Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7506802)
    this:DestroySelf()
end

return Q7506802Trigger
