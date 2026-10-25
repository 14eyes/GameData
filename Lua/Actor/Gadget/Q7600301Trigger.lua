require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600301Trigger = class("Q7600301Trigger", GadgetActorProxy)
Q7600301Trigger.defaultAlias = "Q7600301Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600301Trigger:OnPostDataPrepare()
    print("Q7600301Trigger - OnPostDataPrepare")
    this = self
end

function Q7600301Trigger:OnPostComponentPrepare()
    print("Q7600301Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600301Trigger:TriggerIn()
    print("Q7600301Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600301)
    this:DestroySelf()
end

function Q7600301Trigger:PreTriggerIn()
    print("Q7600301Trigger - PreTriggerIn")
end

function Q7600301Trigger:LightUpTriggerIn()
    print("Q7600301Trigger - LightUpTriggerIn")
end

function Q7600301Trigger:TriggerOut()
    print("Q7600301Trigger - TriggerOut")
end

return Q7600301Trigger
