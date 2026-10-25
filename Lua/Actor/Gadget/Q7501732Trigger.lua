require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501732Trigger = class("Q7501732Trigger", GadgetActorProxy)
Q7501732Trigger.defaultAlias = "Q7501732Trigger"
local Q75017ClientConfig = require("Quest/Client/Q75017ClientConfig")

local this
local subIDs = Q75017ClientConfig.SubIDs
local npcs = Q75017ClientConfig.Npcs

function Q7501732Trigger:OnPostDataPrepare()
    print("[MainId: 75017][Trigger: Q7501732Trigger] OnPostDataPrepare")
    this = self
end

function Q7501732Trigger:OnPostComponentPrepare()
    print("[MainId: 75017][Trigger: Q7501732Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75017)
end

function Q7501732Trigger:TriggerIn()
    print("[MainId: 75017][Trigger: Q7501732Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501732)
    this:DestroySelf()
end

function Q7501732Trigger:PreTriggerIn()
    print("[MainId: 75017][Trigger: Q7501732Trigger] PreTriggerIn")
end

function Q7501732Trigger:LightUpTriggerIn()
    print("[MainId: 75017][Trigger: Q7501732Trigger] LightUpTriggerIn")
end

function Q7501732Trigger:TriggerOut()
    print("[MainId: 75017][Trigger: Q7501732Trigger] TriggerOut")
end

return Q7501732Trigger
