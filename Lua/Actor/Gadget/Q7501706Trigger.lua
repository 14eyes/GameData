require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501706Trigger = class("Q7501706Trigger", GadgetActorProxy)
Q7501706Trigger.defaultAlias = "Q7501706Trigger"
local Q75017ClientConfig = require("Quest/Client/Q75017ClientConfig")

local this
local subIDs = Q75017ClientConfig.SubIDs
local npcs = Q75017ClientConfig.Npcs

function Q7501706Trigger:OnPostDataPrepare()
    print("[MainId: 75017][Trigger: Q7501706Trigger] OnPostDataPrepare")
    this = self
end

function Q7501706Trigger:OnPostComponentPrepare()
    print("[MainId: 75017][Trigger: Q7501706Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75017)
end

function Q7501706Trigger:TriggerIn()
    print("[MainId: 75017][Trigger: Q7501706Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501706)
    this:DestroySelf()
end

function Q7501706Trigger:PreTriggerIn()
    print("[MainId: 75017][Trigger: Q7501706Trigger] PreTriggerIn")
end

function Q7501706Trigger:LightUpTriggerIn()
    print("[MainId: 75017][Trigger: Q7501706Trigger] LightUpTriggerIn")
end

function Q7501706Trigger:TriggerOut()
    print("[MainId: 75017][Trigger: Q7501706Trigger] TriggerOut")
end

return Q7501706Trigger
