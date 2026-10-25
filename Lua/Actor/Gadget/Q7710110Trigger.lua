require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710110Trigger = class("Q7710110Trigger", GadgetActorProxy)
Q7710110Trigger.defaultAlias = "Q7710110Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710110Trigger:OnPostDataPrepare()
    print("Q7710110Trigger - OnPostDataPrepare")
    this = self
end

function Q7710110Trigger:OnPostComponentPrepare()
    print("Q7710110Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710110Trigger:TriggerIn()
    print("Q7710110Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710110)
    this:DestroySelf()
end

function Q7710110Trigger:PreTriggerIn()
    print("Q7710110Trigger - PreTriggerIn")
end

function Q7710110Trigger:LightUpTriggerIn()
    print("Q7710110Trigger - LightUpTriggerIn")
end

function Q7710110Trigger:TriggerOut()
    print("Q7710110Trigger - TriggerOut")
end

return Q7710110Trigger
