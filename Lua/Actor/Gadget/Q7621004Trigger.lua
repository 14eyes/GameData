require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7621004Trigger = class("Q7621004Trigger", GadgetActorProxy)
Q7621004Trigger.defaultAlias = "Q7621004Trigger"
local Q76210ClientConfig = require("Quest/Client/Q76210ClientConfig")

local this
local subIDs = Q76210ClientConfig.SubIDs
local npcs = Q76210ClientConfig.Npcs
local points = Q76210ClientConfig.Points

function Q7621004Trigger:OnPostDataPrepare()
    print("Q7621004Trigger - OnPostDataPrepare")
    this = self
end

function Q7621004Trigger:OnPostComponentPrepare()
    print("Q7621004Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76210)
end

function Q7621004Trigger:TriggerIn()
    print("Q7621004Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7621004})
    this:DestroySelf()
end

function Q7621004Trigger:PreTriggerIn()
    print("Q7621004Trigger - PreTriggerIn")
end

function Q7621004Trigger:LightUpTriggerIn()
    print("Q7621004Trigger - LightUpTriggerIn")
end

function Q7621004Trigger:TriggerOut()
    print("Q7621004Trigger - TriggerOut")
end

return Q7621004Trigger
