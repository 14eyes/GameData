require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7621001Trigger = class("Q7621001Trigger", GadgetActorProxy)
Q7621001Trigger.defaultAlias = "Q7621001Trigger"
local Q76210ClientConfig = require("Quest/Client/Q76210ClientConfig")

local this
local subIDs = Q76210ClientConfig.SubIDs
local npcs = Q76210ClientConfig.Npcs
local points = Q76210ClientConfig.Points

function Q7621001Trigger:OnPostDataPrepare()
    print("Q7621001Trigger - OnPostDataPrepare")
    this = self
end

function Q7621001Trigger:OnPostComponentPrepare()
    print("Q7621001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76210)
end

function Q7621001Trigger:TriggerIn()
    print("Q7621001Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7621001})
    this:DestroySelf()
end

function Q7621001Trigger:PreTriggerIn()
    print("Q7621001Trigger - PreTriggerIn")
end

function Q7621001Trigger:LightUpTriggerIn()
    print("Q7621001Trigger - LightUpTriggerIn")
end

function Q7621001Trigger:TriggerOut()
    print("Q7621001Trigger - TriggerOut")
end

return Q7621001Trigger
