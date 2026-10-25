require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711001Trigger = class("Q7711001Trigger", GadgetActorProxy)
Q7711001Trigger.defaultAlias = "Q7711001Trigger"
local Q77110ClientConfig = require("Quest/Client/Q77110ClientConfig")

local this
local subIDs = Q77110ClientConfig.SubIDs
local datas = Q77110ClientConfig.Datas
local npcs = Q77110ClientConfig.Npcs
local points = Q77110ClientConfig.Points

function Q7711001Trigger:OnPostDataPrepare()
    print("Q7711001Trigger - OnPostDataPrepare")
    this = self
end

function Q7711001Trigger:OnPostComponentPrepare()
    print("Q7711001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77110)
end

function Q7711001Trigger:TriggerIn()
    print("Q7711001Trigger - TriggerIn")
    actorMgr:GetActor("77110"):TransmitPlayerByQuestId(7711001, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q7711001Trigger:PreTriggerIn()
    print("Q7711001Trigger - PreTriggerIn")
end

function Q7711001Trigger:LightUpTriggerIn()
    print("Q7711001Trigger - LightUpTriggerIn")
end

function Q7711001Trigger:TriggerOut()
    print("Q7711001Trigger - TriggerOut")
end

return Q7711001Trigger
