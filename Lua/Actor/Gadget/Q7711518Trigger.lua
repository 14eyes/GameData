require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711518Trigger = class("Q7711518Trigger", GadgetActorProxy)
Q7711518Trigger.defaultAlias = "Q7711518Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711518Trigger:OnPostDataPrepare()
    print("Q7711518Trigger - OnPostDataPrepare")
    this = self
end

function Q7711518Trigger:OnPostComponentPrepare()
    print("Q7711518Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711518Trigger:TriggerIn()
    print("Q7711518Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711518)
    this:DestroySelf()
end

function Q7711518Trigger:PreTriggerIn()
    print("Q7711518Trigger - PreTriggerIn")
end

function Q7711518Trigger:LightUpTriggerIn()
    print("Q7711518Trigger - LightUpTriggerIn")
end

function Q7711518Trigger:TriggerOut()
    print("Q7711518Trigger - TriggerOut")
end

return Q7711518Trigger
