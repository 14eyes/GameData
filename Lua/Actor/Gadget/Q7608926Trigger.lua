require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608926Trigger = class("Q7608926Trigger", GadgetActorProxy)
Q7608926Trigger.defaultAlias = "Q7608926Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608926Trigger:OnPostDataPrepare()
    print("Q7608926Trigger - OnPostDataPrepare")
    this = self
end

function Q7608926Trigger:OnPostComponentPrepare()
    print("Q7608926Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608926Trigger:TriggerIn()
    print("Q7608926Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608926)
    this:DestroySelf()
end

function Q7608926Trigger:PreTriggerIn()
    print("Q7608926Trigger - PreTriggerIn")
end

function Q7608926Trigger:LightUpTriggerIn()
    print("Q7608926Trigger - LightUpTriggerIn")
end

function Q7608926Trigger:TriggerOut()
    print("Q7608926Trigger - TriggerOut")
end

return Q7608926Trigger
