require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001002Trigger = class("Q1001002Trigger", GadgetActorProxy)
Q1001002Trigger.defaultAlias = "Q1001002Trigger"
local Q10010ClientConfig = require("Quest/Client/Q10010ClientConfig")

local this
local subIDs = Q10010ClientConfig.SubIDs
local npcs = Q10010ClientConfig.Npcs
local points = Q10010ClientConfig.Points

function Q1001002Trigger:OnPostDataPrepare()
    print("Q1001002Trigger - OnPostDataPrepare")
    this = self
end

function Q1001002Trigger:OnPostComponentPrepare()
    print("Q1001002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10010)
end

function Q1001002Trigger:TriggerIn()
    print("Q1001002Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1001002)
    this:DestroySelf()
end

function Q1001002Trigger:PreTriggerIn()
    print("Q1001002Trigger - PreTriggerIn")
end

function Q1001002Trigger:LightUpTriggerIn()
    print("Q1001002Trigger - LightUpTriggerIn")
end

function Q1001002Trigger:TriggerOut()
    print("Q1001002Trigger - TriggerOut")
end

return Q1001002Trigger
