require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72728Trigger = class("Q72728Trigger", GadgetActorProxy)
Q72728Trigger.defaultAlias = "Q72728Trigger"
local Q72728ClientConfig = require("Quest/Client/Q72728ClientConfig")

local this
local subIDs = Q72728ClientConfig.SubIDs
local npcs = Q72728ClientConfig.Npcs

function Q72728Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q72728Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q72728Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7272801)
    this:DestroySelf()
end

function Q72728Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72728Trigger
