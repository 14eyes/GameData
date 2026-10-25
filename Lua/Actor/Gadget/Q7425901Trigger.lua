require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7425901Trigger = class("Q7425901Trigger", GadgetActorProxy)
Q7425901Trigger.defaultAlias = "Q7425901Trigger"
local Q74259ClientConfig = require("Quest/Client/Q74259ClientConfig")

local this
local subIDs = Q74259ClientConfig.SubIDs
local npcs = Q74259ClientConfig.Npcs
local points = Q74259ClientConfig.Points

function Q7425901Trigger:OnPostDataPrepare()
    print("Q7425901Trigger - OnPostDataPrepare")
    this = self
end

function Q7425901Trigger:OnPostComponentPrepare()
    print("Q7425901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74259)
end

function Q7425901Trigger:TriggerIn()
    print("Q7425901Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7425901})
    this:DestroySelf()
end

function Q7425901Trigger:PreTriggerIn()
    print("Q7425901Trigger - PreTriggerIn")
end

function Q7425901Trigger:LightUpTriggerIn()
    print("Q7425901Trigger - LightUpTriggerIn")
end

function Q7425901Trigger:TriggerOut()
    print("Q7425901Trigger - TriggerOut")
end

return Q7425901Trigger
