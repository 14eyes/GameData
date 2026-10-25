require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7622001Trigger = class("Q7622001Trigger", GadgetActorProxy)
Q7622001Trigger.defaultAlias = "Q7622001Trigger"
local Q76220ClientConfig = require("Quest/Client/Q76220ClientConfig")

local this
local subIDs = Q76220ClientConfig.SubIDs
local npcs = Q76220ClientConfig.Npcs
local points = Q76220ClientConfig.Points

function Q7622001Trigger:OnPostDataPrepare()
    print("Q7622001Trigger - OnPostDataPrepare")
    this = self
end

function Q7622001Trigger:OnPostComponentPrepare()
    print("Q7622001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76220)
end

function Q7622001Trigger:TriggerIn()
    print("Q7622001Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7622001})
    this:DestroySelf()
end

function Q7622001Trigger:PreTriggerIn()
    print("Q7622001Trigger - PreTriggerIn")
end

function Q7622001Trigger:LightUpTriggerIn()
    print("Q7622001Trigger - LightUpTriggerIn")
end

function Q7622001Trigger:TriggerOut()
    print("Q7622001Trigger - TriggerOut")
end

return Q7622001Trigger
