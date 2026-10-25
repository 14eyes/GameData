require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7514601Trigger = class("Q7514601Trigger", GadgetActorProxy)
Q7514601Trigger.defaultAlias = "Q7514601Trigger"
local Q75146ClientConfig = require("Quest/Client/Q75146ClientConfig")

local this
local subIDs = Q75146ClientConfig.SubIDs
local npcs = Q75146ClientConfig.Npcs

function Q7514601Trigger:OnPostDataPrepare()
    print("Q7514601Trigger - OnPostDataPrepare")
    this = self
end

function Q7514601Trigger:OnPostComponentPrepare()
    print("Q7514601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75146)
end

function Q7514601Trigger:TriggerIn()
    print("Q7514601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7514601)
    this:DestroySelf()
end

function Q7514601Trigger:PreTriggerIn()
    print("Q7514601Trigger - PreTriggerIn")
end

function Q7514601Trigger:LightUpTriggerIn()
    print("Q7514601Trigger - LightUpTriggerIn")
end

function Q7514601Trigger:TriggerOut()
    print("Q7514601Trigger - TriggerOut")
end

return Q7514601Trigger
