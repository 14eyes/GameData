require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7716011Trigger = class("Q7716011Trigger", GadgetActorProxy)
Q7716011Trigger.defaultAlias = "Q7716011Trigger"
local Q77160ClientConfig = require("Quest/Client/Q77160ClientConfig")

local this
local subIDs = Q77160ClientConfig.SubIDs
local datas = Q77160ClientConfig.Datas
local npcs = Q77160ClientConfig.Npcs
local points = Q77160ClientConfig.Points

function Q7716011Trigger:OnPostDataPrepare()
    print("Q7716011Trigger - OnPostDataPrepare")
    this = self
end

function Q7716011Trigger:OnPostComponentPrepare()
    print("Q7716011Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77160)
end

function Q7716011Trigger:TriggerIn()
    print("Q7716011Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7716011)
    this:DestroySelf()
end

function Q7716011Trigger:PreTriggerIn()
    print("Q7716011Trigger - PreTriggerIn")
end

function Q7716011Trigger:LightUpTriggerIn()
    print("Q7716011Trigger - LightUpTriggerIn")
end

function Q7716011Trigger:TriggerOut()
    print("Q7716011Trigger - TriggerOut")
end

return Q7716011Trigger
