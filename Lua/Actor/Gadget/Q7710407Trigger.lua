require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710407Trigger = class("Q7710407Trigger", GadgetActorProxy)
Q7710407Trigger.defaultAlias = "Q7710407Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710407Trigger:OnPostDataPrepare()
    print("Q7710407Trigger - OnPostDataPrepare")
    this = self
end

function Q7710407Trigger:OnPostComponentPrepare()
    print("Q7710407Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710407Trigger:TriggerIn()
    print("Q7710407Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710407)
    this:DestroySelf()
end

function Q7710407Trigger:PreTriggerIn()
    print("Q7710407Trigger - PreTriggerIn")
end

function Q7710407Trigger:LightUpTriggerIn()
    print("Q7710407Trigger - LightUpTriggerIn")
end

function Q7710407Trigger:TriggerOut()
    print("Q7710407Trigger - TriggerOut")
end

return Q7710407Trigger
