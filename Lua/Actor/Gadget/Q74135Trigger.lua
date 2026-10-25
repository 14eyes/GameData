require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74135Trigger = class("Q74135Trigger", GadgetActorProxy)
Q74135Trigger.defaultAlias = "Q74135Trigger"
local Q74135ClientConfig = require("Quest/Client/Q74135ClientConfig")

local this
local subIDs = Q74135ClientConfig.SubIDs
local points = Q74135ClientConfig.Points

function Q74135Trigger:OnPostDataPrepare()
    print("[MainId: 74135][Trigger: Q74135Trigger] OnPostDataPrepare")
    this = self
end

function Q74135Trigger:OnPostComponentPrepare()
    print("[MainId: 74135][Trigger: Q74135Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74135Trigger:TriggerIn()
    print("[MainId: 74135][Trigger: Q74135Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413502)
    this:DestroySelf()
end

function Q74135Trigger:PreTriggerIn()
    print("[MainId: 74135][Trigger: Q74135Trigger] PreTriggerIn")
end

function Q74135Trigger:LightUpTriggerIn()
    print("[MainId: 74135][Trigger: Q74135Trigger] LightUpTriggerIn")
end

function Q74135Trigger:TriggerOut()
    print("[MainId: 74135][Trigger: Q74135Trigger] TriggerOut")
end

return Q74135Trigger
