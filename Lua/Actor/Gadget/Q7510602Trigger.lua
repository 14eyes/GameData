require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7510602Trigger = class("Q7510602Trigger", GadgetActorProxy)
Q7510602Trigger.defaultAlias = "Q7510602Trigger"
local Q75106ClientConfig = require("Quest/Client/Q75106ClientConfig")

local this
local subIDs = Q75106ClientConfig.SubIDs
local points = Q75106ClientConfig.Points

function Q7510602Trigger:OnPostDataPrepare()
    print("[MainId: 75106][Trigger: Q7510602Trigger] OnPostDataPrepare")
    this = self
end

function Q7510602Trigger:OnPostComponentPrepare()
    print("[MainId: 75106][Trigger: Q7510602Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75106)
end

function Q7510602Trigger:TriggerIn()
    print("[MainId: 75106][Trigger: Q7510602Trigger] TriggerIn")
end

function Q7510602Trigger:PreTriggerIn()
    print("[MainId: 75106][Trigger: Q7510602Trigger] PreTriggerIn")
end

function Q7510602Trigger:LightUpTriggerIn()
    print("[MainId: 75106][Trigger: Q7510602Trigger] LightUpTriggerIn")
end

function Q7510602Trigger:TriggerOut()
    print("[MainId: 75106][Trigger: Q7510602Trigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7510699)
    this:DestroySelf()
end

return Q7510602Trigger
