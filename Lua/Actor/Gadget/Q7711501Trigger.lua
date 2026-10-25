require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711501Trigger = class("Q7711501Trigger", GadgetActorProxy)
Q7711501Trigger.defaultAlias = "Q7711501Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711501Trigger:OnPostDataPrepare()
    print("Q7711501Trigger - OnPostDataPrepare")
    this = self
end

function Q7711501Trigger:OnPostComponentPrepare()
    print("Q7711501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711501Trigger:TriggerIn()
    print("Q7711501Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711501)
    this:DestroySelf()
end

function Q7711501Trigger:PreTriggerIn()
    print("Q7711501Trigger - PreTriggerIn")
end

function Q7711501Trigger:LightUpTriggerIn()
    print("Q7711501Trigger - LightUpTriggerIn")
end

function Q7711501Trigger:TriggerOut()
    print("Q7711501Trigger - TriggerOut")
end

return Q7711501Trigger
