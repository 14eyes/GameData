require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7516601Trigger = class("Q7516601Trigger", GadgetActorProxy)
Q7516601Trigger.defaultAlias = "Q7516601Trigger"
local Q75166ClientConfig = require("Quest/Client/Q75166ClientConfig")

local this
local subIDs = Q75166ClientConfig.SubIDs
local npcs = Q75166ClientConfig.Npcs
local points = Q75166ClientConfig.Points

function Q7516601Trigger:OnPostDataPrepare()
    print("Q7516601Trigger - OnPostDataPrepare")
    this = self
end

function Q7516601Trigger:OnPostComponentPrepare()
    print("Q7516601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(270, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75166)
end

function Q7516601Trigger:TriggerIn()
    print("Q7516601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7516601)
    this:DestroySelf()
end

function Q7516601Trigger:PreTriggerIn()
    print("Q7516601Trigger - PreTriggerIn")
end

function Q7516601Trigger:LightUpTriggerIn()
    print("Q7516601Trigger - LightUpTriggerIn")
end

function Q7516601Trigger:TriggerOut()
    print("Q7516601Trigger - TriggerOut")
end

return Q7516601Trigger
