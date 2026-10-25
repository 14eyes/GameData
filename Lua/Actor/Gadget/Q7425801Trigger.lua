require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7425801Trigger = class("Q7425801Trigger", GadgetActorProxy)
Q7425801Trigger.defaultAlias = "Q7425801Trigger"
local Q74258ClientConfig = require("Quest/Client/Q74258ClientConfig")

local this
local subIDs = Q74258ClientConfig.SubIDs
local npcs = Q74258ClientConfig.Npcs
local points = Q74258ClientConfig.Points

function Q7425801Trigger:OnPostDataPrepare()
    print("Q7425801Trigger - OnPostDataPrepare")
    this = self
end

function Q7425801Trigger:OnPostComponentPrepare()
    print("Q7425801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74258)
end

function Q7425801Trigger:TriggerIn()
    print("Q7425801Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7425801})
    this:DestroySelf()
end

function Q7425801Trigger:PreTriggerIn()
    print("Q7425801Trigger - PreTriggerIn")
end

function Q7425801Trigger:LightUpTriggerIn()
    print("Q7425801Trigger - LightUpTriggerIn")
end

function Q7425801Trigger:TriggerOut()
    print("Q7425801Trigger - TriggerOut")
end

return Q7425801Trigger
