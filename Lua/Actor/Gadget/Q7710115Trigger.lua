require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710115Trigger = class("Q7710115Trigger", GadgetActorProxy)
Q7710115Trigger.defaultAlias = "Q7710115Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710115Trigger:OnPostDataPrepare()
    print("Q7710115Trigger - OnPostDataPrepare")
    this = self
end

function Q7710115Trigger:OnPostComponentPrepare()
    print("Q7710115Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710115Trigger:TriggerIn()
    print("Q7710115Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710115)
    this:DestroySelf()
end

function Q7710115Trigger:PreTriggerIn()
    print("Q7710115Trigger - PreTriggerIn")
end

function Q7710115Trigger:LightUpTriggerIn()
    print("Q7710115Trigger - LightUpTriggerIn")
end

function Q7710115Trigger:TriggerOut()
    print("Q7710115Trigger - TriggerOut")
end

return Q7710115Trigger
