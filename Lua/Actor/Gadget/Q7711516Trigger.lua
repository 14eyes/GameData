require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711516Trigger = class("Q7711516Trigger", GadgetActorProxy)
Q7711516Trigger.defaultAlias = "Q7711516Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711516Trigger:OnPostDataPrepare()
    print("Q7711516Trigger - OnPostDataPrepare")
    this = self
end

function Q7711516Trigger:OnPostComponentPrepare()
    print("Q7711516Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711516Trigger:TriggerIn()
    print("Q7711516Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711516)
    this:DestroySelf()
end

function Q7711516Trigger:PreTriggerIn()
    print("Q7711516Trigger - PreTriggerIn")
end

function Q7711516Trigger:LightUpTriggerIn()
    print("Q7711516Trigger - LightUpTriggerIn")
end

function Q7711516Trigger:TriggerOut()
    print("Q7711516Trigger - TriggerOut")
end

return Q7711516Trigger
