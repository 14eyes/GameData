require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711101Trigger = class("Q7711101Trigger", GadgetActorProxy)
Q7711101Trigger.defaultAlias = "Q7711101Trigger"
local Q77111ClientConfig = require("Quest/Client/Q77111ClientConfig")

local this
local subIDs = Q77111ClientConfig.SubIDs
local npcs = Q77111ClientConfig.Npcs
local points = Q77111ClientConfig.Points

function Q7711101Trigger:OnPostDataPrepare()
    print("Q7711101Trigger - OnPostDataPrepare")
    this = self
end

function Q7711101Trigger:OnPostComponentPrepare()
    print("Q7711101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77111)
end

function Q7711101Trigger:TriggerIn()
    print("Q7711101Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7711101})
    this:DestroySelf()
end

function Q7711101Trigger:PreTriggerIn()
    print("Q7711101Trigger - PreTriggerIn")
end

function Q7711101Trigger:LightUpTriggerIn()
    print("Q7711101Trigger - LightUpTriggerIn")
end

function Q7711101Trigger:TriggerOut()
    print("Q7711101Trigger - TriggerOut")
end

return Q7711101Trigger
