require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711520Trigger = class("Q7711520Trigger", GadgetActorProxy)
Q7711520Trigger.defaultAlias = "Q7711520Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711520Trigger:OnPostDataPrepare()
    print("Q7711520Trigger - OnPostDataPrepare")
    this = self
end

function Q7711520Trigger:OnPostComponentPrepare()
    print("Q7711520Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711520Trigger:TriggerIn()
    print("Q7711520Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711520)
    this:DestroySelf()
end

function Q7711520Trigger:PreTriggerIn()
    print("Q7711520Trigger - PreTriggerIn")
end

function Q7711520Trigger:LightUpTriggerIn()
    print("Q7711520Trigger - LightUpTriggerIn")
end

function Q7711520Trigger:TriggerOut()
    print("Q7711520Trigger - TriggerOut")
end

return Q7711520Trigger
