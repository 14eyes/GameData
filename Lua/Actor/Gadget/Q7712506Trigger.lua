require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712506Trigger = class("Q7712506Trigger", GadgetActorProxy)
Q7712506Trigger.defaultAlias = "Q7712506Trigger"
local Q77125ClientConfig = require("Quest/Client/Q77125ClientConfig")

local this
local subIDs = Q77125ClientConfig.SubIDs
local datas = Q77125ClientConfig.Datas
local npcs = Q77125ClientConfig.Npcs
local points = Q77125ClientConfig.Points

function Q7712506Trigger:OnPostDataPrepare()
    print("Q7712506Trigger - OnPostDataPrepare")
    this = self
end

function Q7712506Trigger:OnPostComponentPrepare()
    print("Q7712506Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77125)
end

function Q7712506Trigger:TriggerIn()
    print("Q7712506Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7712506)
    this:DestroySelf()
end

function Q7712506Trigger:PreTriggerIn()
    print("Q7712506Trigger - PreTriggerIn")
end

function Q7712506Trigger:LightUpTriggerIn()
    print("Q7712506Trigger - LightUpTriggerIn")
end

function Q7712506Trigger:TriggerOut()
    print("Q7712506Trigger - TriggerOut")
end

return Q7712506Trigger
