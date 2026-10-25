require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7350204Trigger = class("Q7350204Trigger", GadgetActorProxy)
Q7350204Trigger.defaultAlias = "Q7350204Trigger"
local Q73502ClientConfig = require("Quest/Client/Q73502ClientConfig")

local subIDs = Q73502ClientConfig.SubIDs
local npcs = Q73502ClientConfig.Npcs

function Q7350204Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7350204Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7350204Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7350204)
    self:DestroySelf()
end

function Q7350204Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7350204Trigger
