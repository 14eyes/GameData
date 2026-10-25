require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74079Trigger = class("Q74079Trigger", GadgetActorProxy)
Q74079Trigger.defaultAlias = "Q74079Trigger"
local Q74079ClientConfig = require("Quest/Client/Q74079ClientConfig")

local this
local subIDs = Q74079ClientConfig.SubIDs

function Q74079Trigger:OnPostDataPrepare()
    print("[MainId: 74079][Trigger: Q74079Trigger] OnPostDataPrepare")
    this = self
end

function Q74079Trigger:OnPostComponentPrepare()
    print("[MainId: 74079][Trigger: Q74079Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
    actorUtils.FinishQuestID(false, 7407901)
end

function Q74079Trigger:TriggerIn()
    print("[MainId: 74079][Trigger: Q74079Trigger] TriggerIn")
    this:DestroySelf()
end

function Q74079Trigger:PreTriggerIn()
    print("[MainId: 74079][Trigger: Q74079Trigger] PreTriggerIn")
end

function Q74079Trigger:LightUpTriggerIn()
    print("[MainId: 74079][Trigger: Q74079Trigger] LightUpTriggerIn")
end

function Q74079Trigger:TriggerOut()
    print("[MainId: 74079][Trigger: Q74079Trigger] TriggerOut")
end

return Q74079Trigger
