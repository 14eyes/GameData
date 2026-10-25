require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710120Trigger = class("Q7710120Trigger", GadgetActorProxy)
Q7710120Trigger.defaultAlias = "Q7710120Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710120Trigger:OnPostDataPrepare()
    print("Q7710120Trigger - OnPostDataPrepare")
    this = self
end

function Q7710120Trigger:OnPostComponentPrepare()
    print("Q7710120Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12, 100, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710120Trigger:TriggerIn()
    print("Q7710120Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710120)
    this:DestroySelf()
end

function Q7710120Trigger:PreTriggerIn()
    print("Q7710120Trigger - PreTriggerIn")
end

function Q7710120Trigger:LightUpTriggerIn()
    print("Q7710120Trigger - LightUpTriggerIn")
end

function Q7710120Trigger:TriggerOut()
    print("Q7710120Trigger - TriggerOut")
end

return Q7710120Trigger
