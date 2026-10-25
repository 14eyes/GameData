require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506801Trigger = class("Q7506801Trigger", GadgetActorProxy)
Q7506801Trigger.defaultAlias = "Q7506801Trigger"
local Q75068ClientConfig = require("Quest/Client/Q75068ClientConfig")

local this
local subIDs = Q75068ClientConfig.SubIDs
local npcs = Q75068ClientConfig.Npcs
local points = Q75068ClientConfig.Points

function Q7506801Trigger:OnPostDataPrepare()
    print("[MainId: 75068][Trigger: Q7506801Trigger] OnPostDataPrepare")
    this = self
end

function Q7506801Trigger:OnPostComponentPrepare()
    print("[MainId: 75068][Trigger: Q7506801Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75068)
end

function Q7506801Trigger:TriggerIn()
    print("[MainId: 75068][Trigger: Q7506801Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7506801)
    this:DestroySelf()
end

function Q7506801Trigger:PreTriggerIn()
    print("[MainId: 75068][Trigger: Q7506801Trigger] PreTriggerIn")
end

function Q7506801Trigger:LightUpTriggerIn()
    print("[MainId: 75068][Trigger: Q7506801Trigger] LightUpTriggerIn")
end

function Q7506801Trigger:TriggerOut()
    print("[MainId: 75068][Trigger: Q7506801Trigger] TriggerOut")
end

return Q7506801Trigger
