require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714205Trigger = class("Q7714205Trigger", GadgetActorProxy)
Q7714205Trigger.defaultAlias = "Q7714205Trigger"
local Q77142ClientConfig = require("Quest/Client/Q77142ClientConfig")

local this
local subIDs = Q77142ClientConfig.SubIDs
local datas = Q77142ClientConfig.Datas
local npcs = Q77142ClientConfig.Npcs
local points = Q77142ClientConfig.Points

function Q7714205Trigger:OnPostDataPrepare()
    print("Q7714205Trigger - OnPostDataPrepare")
    this = self
end

function Q7714205Trigger:OnPostComponentPrepare()
    print("Q7714205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77142)
end

function Q7714205Trigger:TriggerIn()
    print("Q7714205Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714205)
    this:DestroySelf()
end

function Q7714205Trigger:PreTriggerIn()
    print("Q7714205Trigger - PreTriggerIn")
end

function Q7714205Trigger:LightUpTriggerIn()
    print("Q7714205Trigger - LightUpTriggerIn")
end

function Q7714205Trigger:TriggerOut()
    print("Q7714205Trigger - TriggerOut")
end

return Q7714205Trigger
