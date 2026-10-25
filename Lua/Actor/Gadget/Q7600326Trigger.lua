require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600326Trigger = class("Q7600326Trigger", GadgetActorProxy)
Q7600326Trigger.defaultAlias = "Q7600326Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600326Trigger:OnPostDataPrepare()
    print("Q7600326Trigger - OnPostDataPrepare")
    this = self
end

function Q7600326Trigger:OnPostComponentPrepare()
    print("Q7600326Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(8, 5, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600326Trigger:TriggerIn()
    print("Q7600326Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600326)
    this:DestroySelf()
end

function Q7600326Trigger:PreTriggerIn()
    print("Q7600326Trigger - PreTriggerIn")
end

function Q7600326Trigger:LightUpTriggerIn()
    print("Q7600326Trigger - LightUpTriggerIn")
end

function Q7600326Trigger:TriggerOut()
    print("Q7600326Trigger - TriggerOut")
end

return Q7600326Trigger
