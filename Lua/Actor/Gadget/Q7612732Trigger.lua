require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612732Trigger = class("Q7612732Trigger", GadgetActorProxy)
Q7612732Trigger.defaultAlias = "Q7612732Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612732Trigger:OnPostDataPrepare()
    print("Q7612732Trigger - OnPostDataPrepare")
    this = self
end

function Q7612732Trigger:OnPostComponentPrepare()
    print("Q7612732Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612732Trigger:TriggerIn()
    print("Q7612732Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7612732})
    this:DestroySelf()
end

function Q7612732Trigger:PreTriggerIn()
    print("Q7612732Trigger - PreTriggerIn")
end

function Q7612732Trigger:LightUpTriggerIn()
    print("Q7612732Trigger - LightUpTriggerIn")
end

function Q7612732Trigger:TriggerOut()
    print("Q7612732Trigger - TriggerOut")
end

return Q7612732Trigger
