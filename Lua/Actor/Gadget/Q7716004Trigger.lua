require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7716004Trigger = class("Q7716004Trigger", GadgetActorProxy)
Q7716004Trigger.defaultAlias = "Q7716004Trigger"
local Q77160ClientConfig = require("Quest/Client/Q77160ClientConfig")

local this
local subIDs = Q77160ClientConfig.SubIDs
local datas = Q77160ClientConfig.Datas
local npcs = Q77160ClientConfig.Npcs
local points = Q77160ClientConfig.Points

function Q7716004Trigger:OnPostDataPrepare()
    print("Q7716004Trigger - OnPostDataPrepare")
    this = self
end

function Q7716004Trigger:OnPostComponentPrepare()
    print("Q7716004Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2.9730659, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77160)
end

function Q7716004Trigger:TriggerIn()
    print("Q7716004Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7716004)
    this:DestroySelf()
end

function Q7716004Trigger:PreTriggerIn()
    print("Q7716004Trigger - PreTriggerIn")
end

function Q7716004Trigger:LightUpTriggerIn()
    print("Q7716004Trigger - LightUpTriggerIn")
end

function Q7716004Trigger:TriggerOut()
    print("Q7716004Trigger - TriggerOut")
end

return Q7716004Trigger
