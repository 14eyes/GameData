require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7418601Trigger = class("Q7418601Trigger", GadgetActorProxy)
Q7418601Trigger.defaultAlias = "Q7418601Trigger"
local Q74186ClientConfig = require("Quest/Client/Q74186ClientConfig")

local this
local subIDs = Q74186ClientConfig.SubIDs
local npcs = Q74186ClientConfig.Npcs

function Q7418601Trigger:OnPostDataPrepare()
    print("[MainId: 74186][Trigger: Q7418601Trigger] OnPostDataPrepare")
    this = self
end

function Q7418601Trigger:OnPostComponentPrepare()
    print("[MainId: 74186][Trigger: Q7418601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7418601Trigger:TriggerIn()
    print("[MainId: 74186][Trigger: Q7418601Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7418601)
    this:DestroySelf()
end

function Q7418601Trigger:PreTriggerIn()
    print("[MainId: 74186][Trigger: Q7418601Trigger] PreTriggerIn")
end

function Q7418601Trigger:LightUpTriggerIn()
    print("[MainId: 74186][Trigger: Q7418601Trigger] LightUpTriggerIn")
end

function Q7418601Trigger:TriggerOut()
    print("[MainId: 74186][Trigger: Q7418601Trigger] TriggerOut")
end

return Q7418601Trigger
