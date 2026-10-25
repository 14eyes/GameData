require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223101Trigger = class("Q7223101Trigger", GadgetActorProxy)
Q7223101Trigger.defaultAlias = "Q7223101Trigger"
local Q72231ClientConfig = require("Quest/Client/Q72231ClientConfig")

local this
local subIDs = Q72231ClientConfig.SubIDs
local npcs = Q72231ClientConfig.Npcs

function Q7223101Trigger:OnPostDataPrepare()
    print("[MainId: 72231][Trigger: Q7223101Trigger] OnPostDataPrepare")
    this = self
end

function Q7223101Trigger:OnPostComponentPrepare()
    print("[MainId: 72231][Trigger: Q7223101Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7223101Trigger:TriggerIn()
    print("[MainId: 72231][Trigger: Q7223101Trigger] TriggerIn")
end

function Q7223101Trigger:TriggerOut()
    print("[MainId: 72231][Trigger: Q7223101Trigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7223101)
    this:DestroySelf()
end

return Q7223101Trigger
