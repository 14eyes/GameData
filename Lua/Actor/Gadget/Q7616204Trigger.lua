require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616204Trigger = class("Q7616204Trigger", GadgetActorProxy)
Q7616204Trigger.defaultAlias = "Q7616204Trigger"
local Q76162ClientConfig = require("Quest/Client/Q76162ClientConfig")

local this
local subIDs = Q76162ClientConfig.SubIDs
local npcs = Q76162ClientConfig.Npcs
local points = Q76162ClientConfig.Points

function Q7616204Trigger:OnPostDataPrepare()
    print("Q7616204Trigger - OnPostDataPrepare")
    this = self
end

function Q7616204Trigger:OnPostComponentPrepare()
    print("Q7616204Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76162)
end

function Q7616204Trigger:TriggerIn()
    print("Q7616204Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7616204)
    this:DestroySelf()
end

function Q7616204Trigger:PreTriggerIn()
    print("Q7616204Trigger - PreTriggerIn")
end

function Q7616204Trigger:LightUpTriggerIn()
    print("Q7616204Trigger - LightUpTriggerIn")
end

function Q7616204Trigger:TriggerOut()
    print("Q7616204Trigger - TriggerOut")
end

return Q7616204Trigger
