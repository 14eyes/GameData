require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714201Trigger = class("Q7714201Trigger", GadgetActorProxy)
Q7714201Trigger.defaultAlias = "Q7714201Trigger"
local Q77142ClientConfig = require("Quest/Client/Q77142ClientConfig")

local this
local subIDs = Q77142ClientConfig.SubIDs
local datas = Q77142ClientConfig.Datas
local npcs = Q77142ClientConfig.Npcs
local points = Q77142ClientConfig.Points

function Q7714201Trigger:OnPostDataPrepare()
    print("Q7714201Trigger - OnPostDataPrepare")
    this = self
end

function Q7714201Trigger:OnPostComponentPrepare()
    print("Q7714201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77142)
end

function Q7714201Trigger:TriggerIn()
    print("Q7714201Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714201)
    this:DestroySelf()
end

function Q7714201Trigger:PreTriggerIn()
    print("Q7714201Trigger - PreTriggerIn")
end

function Q7714201Trigger:LightUpTriggerIn()
    print("Q7714201Trigger - LightUpTriggerIn")
end

function Q7714201Trigger:TriggerOut()
    print("Q7714201Trigger - TriggerOut")
end

return Q7714201Trigger
