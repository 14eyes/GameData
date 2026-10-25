require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7621007Trigger = class("Q7621007Trigger", GadgetActorProxy)
Q7621007Trigger.defaultAlias = "Q7621007Trigger"
local Q76210ClientConfig = require("Quest/Client/Q76210ClientConfig")

local this
local subIDs = Q76210ClientConfig.SubIDs
local npcs = Q76210ClientConfig.Npcs
local points = Q76210ClientConfig.Points

function Q7621007Trigger:OnPostDataPrepare()
    print("Q7621007Trigger - OnPostDataPrepare")
    this = self
end

function Q7621007Trigger:OnPostComponentPrepare()
    print("Q7621007Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76210)
end

function Q7621007Trigger:TriggerIn()
    print("Q7621007Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7621007})
    this:DestroySelf()
end

function Q7621007Trigger:PreTriggerIn()
    print("Q7621007Trigger - PreTriggerIn")
end

function Q7621007Trigger:LightUpTriggerIn()
    print("Q7621007Trigger - LightUpTriggerIn")
end

function Q7621007Trigger:TriggerOut()
    print("Q7621007Trigger - TriggerOut")
end

return Q7621007Trigger
