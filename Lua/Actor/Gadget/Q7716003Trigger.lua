require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7716003Trigger = class("Q7716003Trigger", GadgetActorProxy)
Q7716003Trigger.defaultAlias = "Q7716003Trigger"
local Q77160ClientConfig = require("Quest/Client/Q77160ClientConfig")

local this
local subIDs = Q77160ClientConfig.SubIDs
local datas = Q77160ClientConfig.Datas
local npcs = Q77160ClientConfig.Npcs
local points = Q77160ClientConfig.Points

function Q7716003Trigger:OnPostDataPrepare()
    print("Q7716003Trigger - OnPostDataPrepare")
    this = self
end

function Q7716003Trigger:OnPostComponentPrepare()
    print("Q7716003Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77160)
end

function Q7716003Trigger:TriggerIn()
    print("Q7716003Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7716003)
    this:DestroySelf()
end

function Q7716003Trigger:PreTriggerIn()
    print("Q7716003Trigger - PreTriggerIn")
end

function Q7716003Trigger:LightUpTriggerIn()
    print("Q7716003Trigger - LightUpTriggerIn")
end

function Q7716003Trigger:TriggerOut()
    print("Q7716003Trigger - TriggerOut")
end

return Q7716003Trigger
