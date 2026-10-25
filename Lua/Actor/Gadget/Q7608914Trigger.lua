require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608914Trigger = class("Q7608914Trigger", GadgetActorProxy)
Q7608914Trigger.defaultAlias = "Q7608914Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608914Trigger:OnPostDataPrepare()
    print("Q7608914Trigger - OnPostDataPrepare")
    this = self
end

function Q7608914Trigger:OnPostComponentPrepare()
    print("Q7608914Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608914Trigger:TriggerIn()
    print("Q7608914Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608914)
    this:DestroySelf()
end

function Q7608914Trigger:PreTriggerIn()
    print("Q7608914Trigger - PreTriggerIn")
end

function Q7608914Trigger:LightUpTriggerIn()
    print("Q7608914Trigger - LightUpTriggerIn")
end

function Q7608914Trigger:TriggerOut()
    print("Q7608914Trigger - TriggerOut")
end

return Q7608914Trigger
