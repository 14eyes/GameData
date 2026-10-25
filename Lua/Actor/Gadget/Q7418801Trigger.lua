require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7418801Trigger = class("Q7418801Trigger", GadgetActorProxy)
Q7418801Trigger.defaultAlias = "Q7418801Trigger"
local Q74188ClientConfig = require("Quest/Client/Q74188ClientConfig")

local this
local subIDs = Q74188ClientConfig.SubIDs

function Q7418801Trigger:OnPostDataPrepare()
    print("[MainId: 74188][Trigger: Q7418801Trigger] OnPostDataPrepare")
    this = self
end

function Q7418801Trigger:OnPostComponentPrepare()
    print("[MainId: 74188][Trigger: Q7418801Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7418801Trigger:TriggerIn()
    print("[MainId: 74188][Trigger: Q7418801Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7418801)
    this:DestroySelf()
end

function Q7418801Trigger:PreTriggerIn()
    print("[MainId: 74188][Trigger: Q7418801Trigger] PreTriggerIn")
end

function Q7418801Trigger:LightUpTriggerIn()
    print("[MainId: 74188][Trigger: Q7418801Trigger] LightUpTriggerIn")
end

function Q7418801Trigger:TriggerOut()
    print("[MainId: 74188][Trigger: Q7418801Trigger] TriggerOut")
end

return Q7418801Trigger
