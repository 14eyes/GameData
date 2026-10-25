require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7617703Trigger = class("Q7617703Trigger", GadgetActorProxy)
Q7617703Trigger.defaultAlias = "Q7617703Trigger"
local Q76177ClientConfig = require("Quest/Client/Q76177ClientConfig")

local this
local subIDs = Q76177ClientConfig.SubIDs
local npcs = Q76177ClientConfig.Npcs
local points = Q76177ClientConfig.Points

function Q7617703Trigger:OnPostDataPrepare()
    print("Q7617703Trigger - OnPostDataPrepare")
    this = self
end

function Q7617703Trigger:OnPostComponentPrepare()
    print("Q7617703Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76177)
end

function Q7617703Trigger:TriggerIn()
    print("Q7617703Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7617703)
    this:DestroySelf()
end

function Q7617703Trigger:PreTriggerIn()
    print("Q7617703Trigger - PreTriggerIn")
end

function Q7617703Trigger:LightUpTriggerIn()
    print("Q7617703Trigger - LightUpTriggerIn")
end

function Q7617703Trigger:TriggerOut()
    print("Q7617703Trigger - TriggerOut")
end

return Q7617703Trigger
