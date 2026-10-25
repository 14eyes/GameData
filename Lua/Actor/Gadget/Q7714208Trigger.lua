require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714208Trigger = class("Q7714208Trigger", GadgetActorProxy)
Q7714208Trigger.defaultAlias = "Q7714208Trigger"
local Q77142ClientConfig = require("Quest/Client/Q77142ClientConfig")

local this
local subIDs = Q77142ClientConfig.SubIDs
local datas = Q77142ClientConfig.Datas
local npcs = Q77142ClientConfig.Npcs
local points = Q77142ClientConfig.Points

function Q7714208Trigger:OnPostDataPrepare()
    print("Q7714208Trigger - OnPostDataPrepare")
    this = self
end

function Q7714208Trigger:OnPostComponentPrepare()
    print("Q7714208Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77142)
end

function Q7714208Trigger:TriggerIn()
    print("Q7714208Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714208)
    this:DestroySelf()
end

function Q7714208Trigger:PreTriggerIn()
    print("Q7714208Trigger - PreTriggerIn")
end

function Q7714208Trigger:LightUpTriggerIn()
    print("Q7714208Trigger - LightUpTriggerIn")
end

function Q7714208Trigger:TriggerOut()
    print("Q7714208Trigger - TriggerOut")
end

return Q7714208Trigger
