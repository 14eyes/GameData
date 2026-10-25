require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501701Trigger = class("Q7501701Trigger", GadgetActorProxy)
Q7501701Trigger.defaultAlias = "Q7501701Trigger"
local Q75017ClientConfig = require("Quest/Client/Q75017ClientConfig")

local this
local subIDs = Q75017ClientConfig.SubIDs
local npcs = Q75017ClientConfig.Npcs

function Q7501701Trigger:OnPostDataPrepare()
    print("[MainId: 75017][Trigger: Q7501701Trigger] OnPostDataPrepare")
    this = self
end

function Q7501701Trigger:OnPostComponentPrepare()
    print("[MainId: 75017][Trigger: Q7501701Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75017)
end

function Q7501701Trigger:TriggerIn()
    print("[MainId: 75017][Trigger: Q7501701Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501701)
    this:DestroySelf()
end

function Q7501701Trigger:PreTriggerIn()
    print("[MainId: 75017][Trigger: Q7501701Trigger] PreTriggerIn")
end

function Q7501701Trigger:LightUpTriggerIn()
    print("[MainId: 75017][Trigger: Q7501701Trigger] LightUpTriggerIn")
end

function Q7501701Trigger:TriggerOut()
    print("[MainId: 75017][Trigger: Q7501701Trigger] TriggerOut")
end

return Q7501701Trigger
