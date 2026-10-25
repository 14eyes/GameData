require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616305Trigger = class("Q7616305Trigger", GadgetActorProxy)
Q7616305Trigger.defaultAlias = "Q7616305Trigger"
local Q76163ClientConfig = require("Quest/Client/Q76163ClientConfig")

local this
local subIDs = Q76163ClientConfig.SubIDs
local npcs = Q76163ClientConfig.Npcs
local points = Q76163ClientConfig.Points

function Q7616305Trigger:OnPostDataPrepare()
    print("Q7616305Trigger - OnPostDataPrepare")
    this = self
end

function Q7616305Trigger:OnPostComponentPrepare()
    print("Q7616305Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76163)
end

function Q7616305Trigger:TriggerIn()
    print("Q7616305Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7616305)
    this:DestroySelf()
end

function Q7616305Trigger:PreTriggerIn()
    print("Q7616305Trigger - PreTriggerIn")
end

function Q7616305Trigger:LightUpTriggerIn()
    print("Q7616305Trigger - LightUpTriggerIn")
end

function Q7616305Trigger:TriggerOut()
    print("Q7616305Trigger - TriggerOut")
end

return Q7616305Trigger
