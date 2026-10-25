require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523320Trigger = class("Q7523320Trigger", GadgetActorProxy)
Q7523320Trigger.defaultAlias = "Q7523320Trigger"
local Q75233ClientConfig = require("Quest/Client/Q75233ClientConfig")

local this
local subIDs = Q75233ClientConfig.SubIDs
local npcs = Q75233ClientConfig.Npcs
local points = Q75233ClientConfig.Points

function Q7523320Trigger:OnPostDataPrepare()
    print("Q7523320Trigger - OnPostDataPrepare")
    this = self
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75233)
end

function Q7523320Trigger:OnPostComponentPrepare()
    print("Q7523320Trigger - OnPostComponentPrepare")
    actorUtils.FinishQuestID(false, 7523320)
    this:DestroySelf()
end

function Q7523320Trigger:TriggerIn()
    print("Q7523320Trigger - TriggerIn")
end

function Q7523320Trigger:PreTriggerIn()
    print("Q7523320Trigger - PreTriggerIn")
end

function Q7523320Trigger:LightUpTriggerIn()
    print("Q7523320Trigger - LightUpTriggerIn")
end

function Q7523320Trigger:TriggerOut()
    print("Q7523320Trigger - TriggerOut")
end

return Q7523320Trigger
