require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7668103Trigger = class("Q7668103Trigger", GadgetActorProxy)
Q7668103Trigger.defaultAlias = "Q7668103Trigger"
local Q76681ClientConfig = require("Quest/Client/Q76681ClientConfig")

local this
local subIDs = Q76681ClientConfig.SubIDs
local npcs = Q76681ClientConfig.Npcs
local points = Q76681ClientConfig.Points

function Q7668103Trigger:OnPostDataPrepare()
    print("Q7668103Trigger - OnPostDataPrepare")
    this = self
end

function Q7668103Trigger:OnPostComponentPrepare()
    print("Q7668103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(14.552693, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76681)
end

function Q7668103Trigger:TriggerIn()
    print("Q7668103Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7668103)
    this:DestroySelf()
end

function Q7668103Trigger:PreTriggerIn()
    print("Q7668103Trigger - PreTriggerIn")
end

function Q7668103Trigger:LightUpTriggerIn()
    print("Q7668103Trigger - LightUpTriggerIn")
end

function Q7668103Trigger:TriggerOut()
    print("Q7668103Trigger - TriggerOut")
end

return Q7668103Trigger
