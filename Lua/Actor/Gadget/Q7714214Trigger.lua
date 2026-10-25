require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714214Trigger = class("Q7714214Trigger", GadgetActorProxy)
Q7714214Trigger.defaultAlias = "Q7714214Trigger"
local Q77142ClientConfig = require("Quest/Client/Q77142ClientConfig")

local this
local subIDs = Q77142ClientConfig.SubIDs
local datas = Q77142ClientConfig.Datas
local npcs = Q77142ClientConfig.Npcs
local points = Q77142ClientConfig.Points

function Q7714214Trigger:OnPostDataPrepare()
    print("Q7714214Trigger - OnPostDataPrepare")
    this = self
end

function Q7714214Trigger:OnPostComponentPrepare()
    print("Q7714214Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77142)
end

function Q7714214Trigger:TriggerIn()
    print("Q7714214Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714214)
    this:DestroySelf()
end

function Q7714214Trigger:PreTriggerIn()
    print("Q7714214Trigger - PreTriggerIn")
end

function Q7714214Trigger:LightUpTriggerIn()
    print("Q7714214Trigger - LightUpTriggerIn")
end

function Q7714214Trigger:TriggerOut()
    print("Q7714214Trigger - TriggerOut")
end

return Q7714214Trigger
