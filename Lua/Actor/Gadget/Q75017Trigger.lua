require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75017Trigger = class("Q75017Trigger", GadgetActorProxy)
Q75017Trigger.defaultAlias = "Q75017Trigger"
local Q75017ClientConfig = require("Quest/Client/Q75017ClientConfig")

local this
local subIDs = Q75017ClientConfig.SubIDs
local npcs = Q75017ClientConfig.Npcs

function Q75017Trigger:OnPostDataPrepare()
    print("[MainId: 75017][Trigger: Q75017Trigger] OnPostDataPrepare")
    this = self
end

function Q75017Trigger:OnPostComponentPrepare()
    print("[MainId: 75017][Trigger: Q75017Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75017)
end

function Q75017Trigger:TriggerIn()
    print("[MainId: 75017][Trigger: Q75017Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501701)
    this:DestroySelf()
end

function Q75017Trigger:PreTriggerIn()
    print("[MainId: 75017][Trigger: Q75017Trigger] PreTriggerIn")
end

function Q75017Trigger:LightUpTriggerIn()
    print("[MainId: 75017][Trigger: Q75017Trigger] LightUpTriggerIn")
end

function Q75017Trigger:TriggerOut()
    print("[MainId: 75017][Trigger: Q75017Trigger] TriggerOut")
end

return Q75017Trigger
