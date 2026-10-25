require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7510605Trigger = class("Q7510605Trigger", GadgetActorProxy)
Q7510605Trigger.defaultAlias = "Q7510605Trigger"
local Q75106ClientConfig = require("Quest/Client/Q75106ClientConfig")

local this
local subIDs = Q75106ClientConfig.SubIDs
local points = Q75106ClientConfig.Points

function Q7510605Trigger:OnPostDataPrepare()
    print("[MainId: 75106][Trigger: Q7510605Trigger] OnPostDataPrepare")
    this = self
end

function Q7510605Trigger:OnPostComponentPrepare()
    print("[MainId: 75106][Trigger: Q7510605Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75106)
end

function Q7510605Trigger:TriggerIn()
    print("[MainId: 75106][Trigger: Q7510605Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7510605)
    this:DestroySelf()
end

function Q7510605Trigger:PreTriggerIn()
    print("[MainId: 75106][Trigger: Q7510605Trigger] PreTriggerIn")
end

function Q7510605Trigger:LightUpTriggerIn()
    print("[MainId: 75106][Trigger: Q7510605Trigger] LightUpTriggerIn")
end

function Q7510605Trigger:TriggerOut()
    print("[MainId: 75106][Trigger: Q7510605Trigger] TriggerOut")
end

return Q7510605Trigger
