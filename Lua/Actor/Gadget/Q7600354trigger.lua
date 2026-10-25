require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600354trigger = class("Q7600354trigger", GadgetActorProxy)
Q7600354trigger.defaultAlias = "Q7600354trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600354trigger:OnPostDataPrepare()
    print("Q7600354trigger - OnPostDataPrepare")
    this = self
end

function Q7600354trigger:OnPostComponentPrepare()
    print("Q7600354trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600354trigger:TriggerIn()
    print("Q7600354trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600354)
    this:DestroySelf()
end

function Q7600354trigger:PreTriggerIn()
    print("Q7600354trigger - PreTriggerIn")
end

function Q7600354trigger:LightUpTriggerIn()
    print("Q7600354trigger - LightUpTriggerIn")
end

function Q7600354trigger:TriggerOut()
    print("Q7600354trigger - TriggerOut")
end

return Q7600354trigger
