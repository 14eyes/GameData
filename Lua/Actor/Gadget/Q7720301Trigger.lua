require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7720301Trigger = class("Q7720301Trigger", GadgetActorProxy)
Q7720301Trigger.defaultAlias = "Q7720301Trigger"
local Q77203ClientConfig = require("Quest/Client/Q77203ClientConfig")

local this
local subIDs = Q77203ClientConfig.SubIDs
local npcs = Q77203ClientConfig.Npcs
local points = Q77203ClientConfig.Points

function Q7720301Trigger:OnPostDataPrepare()
    print("Q7720301Trigger - OnPostDataPrepare")
    this = self
end

function Q7720301Trigger:OnPostComponentPrepare()
    print("Q7720301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77203)
end

function Q7720301Trigger:TriggerIn()
    print("Q7720301Trigger - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestWithParam({false}, {7720301})
end

function Q7720301Trigger:PreTriggerIn()
    print("Q7720301Trigger - PreTriggerIn")
end

function Q7720301Trigger:LightUpTriggerIn()
    print("Q7720301Trigger - LightUpTriggerIn")
end

function Q7720301Trigger:TriggerOut()
    print("Q7720301Trigger - TriggerOut")
end

return Q7720301Trigger
