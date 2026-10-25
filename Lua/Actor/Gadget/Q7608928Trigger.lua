require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608928Trigger = class("Q7608928Trigger", GadgetActorProxy)
Q7608928Trigger.defaultAlias = "Q7608928Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608928Trigger:OnPostDataPrepare()
    print("Q7608928Trigger - OnPostDataPrepare")
    this = self
end

function Q7608928Trigger:OnPostComponentPrepare()
    print("Q7608928Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608928Trigger:TriggerIn()
    print("Q7608928Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608928)
    this:DestroySelf()
end

function Q7608928Trigger:PreTriggerIn()
    print("Q7608928Trigger - PreTriggerIn")
end

function Q7608928Trigger:LightUpTriggerIn()
    print("Q7608928Trigger - LightUpTriggerIn")
end

function Q7608928Trigger:TriggerOut()
    print("Q7608928Trigger - TriggerOut")
end

return Q7608928Trigger
