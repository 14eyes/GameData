require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608902Trigger = class("Q7608902Trigger", GadgetActorProxy)
Q7608902Trigger.defaultAlias = "Q7608902Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608902Trigger:OnPostDataPrepare()
    print("Q7608902Trigger - OnPostDataPrepare")
    this = self
end

function Q7608902Trigger:OnPostComponentPrepare()
    print("Q7608902Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608902Trigger:TriggerIn()
    print("Q7608902Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608902)
    this:DestroySelf()
end

function Q7608902Trigger:PreTriggerIn()
    print("Q7608902Trigger - PreTriggerIn")
end

function Q7608902Trigger:LightUpTriggerIn()
    print("Q7608902Trigger - LightUpTriggerIn")
end

function Q7608902Trigger:TriggerOut()
    print("Q7608902Trigger - TriggerOut")
end

return Q7608902Trigger
