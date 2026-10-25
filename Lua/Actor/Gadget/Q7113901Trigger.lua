require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7113901Trigger = class("Q7113901Trigger", GadgetActorProxy)
Q7113901Trigger.defaultAlias = "Q7113901Trigger"
local Q71139ClientConfig = require("Quest/Client/Q71139ClientConfig")

local this
local subIDs = Q71139ClientConfig.SubIDs
local npcs = Q71139ClientConfig.Npcs
local points = Q71139ClientConfig.Points

function Q7113901Trigger:OnPostDataPrepare()
    print("Q7113901Trigger - OnPostDataPrepare")
    this = self
end

function Q7113901Trigger:OnPostComponentPrepare()
    print("Q7113901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71139)
end

function Q7113901Trigger:TriggerIn()
    print("Q7113901Trigger - TriggerIn")
end

function Q7113901Trigger:PreTriggerIn()
    print("Q7113901Trigger - PreTriggerIn")
end

function Q7113901Trigger:LightUpTriggerIn()
    print("Q7113901Trigger - LightUpTriggerIn")
end

function Q7113901Trigger:TriggerOut()
    print("Q7113901Trigger - TriggerOut")
    actorUtils.FinishQuestID(false, 7113907)
    this:DestroySelf()
end

return Q7113901Trigger
