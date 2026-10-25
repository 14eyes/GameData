require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616202Trigger = class("Q7616202Trigger", GadgetActorProxy)
Q7616202Trigger.defaultAlias = "Q7616202Trigger"
local Q76162ClientConfig = require("Quest/Client/Q76162ClientConfig")

local this
local subIDs = Q76162ClientConfig.SubIDs
local npcs = Q76162ClientConfig.Npcs
local points = Q76162ClientConfig.Points

function Q7616202Trigger:OnPostDataPrepare()
    print("Q7616202Trigger - OnPostDataPrepare")
    this = self
end

function Q7616202Trigger:OnPostComponentPrepare()
    print("Q7616202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76162)
end

function Q7616202Trigger:TriggerIn()
    print("Q7616202Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7616202)
    this:DestroySelf()
end

function Q7616202Trigger:PreTriggerIn()
    print("Q7616202Trigger - PreTriggerIn")
end

function Q7616202Trigger:LightUpTriggerIn()
    print("Q7616202Trigger - LightUpTriggerIn")
end

function Q7616202Trigger:TriggerOut()
    print("Q7616202Trigger - TriggerOut")
end

return Q7616202Trigger
