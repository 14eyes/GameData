require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612713Trigger = class("Q7612713Trigger", GadgetActorProxy)
Q7612713Trigger.defaultAlias = "Q7612713Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612713Trigger:OnPostDataPrepare()
    print("Q7612713Trigger - OnPostDataPrepare")
    this = self
end

function Q7612713Trigger:OnPostComponentPrepare()
    print("Q7612713Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612713Trigger:TriggerIn()
    print("Q7612713Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7612713})
    this:DestroySelf()
end

function Q7612713Trigger:PreTriggerIn()
    print("Q7612713Trigger - PreTriggerIn")
end

function Q7612713Trigger:LightUpTriggerIn()
    print("Q7612713Trigger - LightUpTriggerIn")
end

function Q7612713Trigger:TriggerOut()
    print("Q7612713Trigger - TriggerOut")
end

return Q7612713Trigger
