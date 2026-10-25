require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600317Trigger = class("Q7600317Trigger", GadgetActorProxy)
Q7600317Trigger.defaultAlias = "Q7600317Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600317Trigger:OnPostDataPrepare()
    print("Q7600317Trigger - OnPostDataPrepare")
    this = self
end

function Q7600317Trigger:OnPostComponentPrepare()
    print("Q7600317Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 6.041642, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600317Trigger:TriggerIn()
    print("Q7600317Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600303)
    this:DestroySelf()
end

function Q7600317Trigger:PreTriggerIn()
    print("Q7600317Trigger - PreTriggerIn")
end

function Q7600317Trigger:LightUpTriggerIn()
    print("Q7600317Trigger - LightUpTriggerIn")
end

function Q7600317Trigger:TriggerOut()
    print("Q7600317Trigger - TriggerOut")
end

return Q7600317Trigger
