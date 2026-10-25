require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608916Trigger = class("Q7608916Trigger", GadgetActorProxy)
Q7608916Trigger.defaultAlias = "Q7608916Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608916Trigger:OnPostDataPrepare()
    print("Q7608916Trigger - OnPostDataPrepare")
    this = self
end

function Q7608916Trigger:OnPostComponentPrepare()
    print("Q7608916Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608916Trigger:TriggerIn()
    print("Q7608916Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608916)
    this:DestroySelf()
end

function Q7608916Trigger:PreTriggerIn()
    print("Q7608916Trigger - PreTriggerIn")
end

function Q7608916Trigger:LightUpTriggerIn()
    print("Q7608916Trigger - LightUpTriggerIn")
end

function Q7608916Trigger:TriggerOut()
    print("Q7608916Trigger - TriggerOut")
end

return Q7608916Trigger
