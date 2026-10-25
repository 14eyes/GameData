require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701002Trigger = class("Q7701002Trigger", GadgetActorProxy)
Q7701002Trigger.defaultAlias = "Q7701002Trigger"
local Q77010ClientConfig = require("Quest/Client/Q77010ClientConfig")

local this
local subIDs = Q77010ClientConfig.SubIDs
local datas = Q77010ClientConfig.Datas
local npcs = Q77010ClientConfig.Npcs
local points = Q77010ClientConfig.Points

function Q7701002Trigger:OnPostDataPrepare()
    print("Q7701002Trigger - OnPostDataPrepare")
    this = self
end

function Q7701002Trigger:OnPostComponentPrepare()
    print("Q7701002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77010)
end

function Q7701002Trigger:TriggerIn()
    print("Q7701002Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7701002})
    this:DestroySelf()
end

function Q7701002Trigger:PreTriggerIn()
    print("Q7701002Trigger - PreTriggerIn")
end

function Q7701002Trigger:LightUpTriggerIn()
    print("Q7701002Trigger - LightUpTriggerIn")
end

function Q7701002Trigger:TriggerOut()
    print("Q7701002Trigger - TriggerOut")
end

return Q7701002Trigger
