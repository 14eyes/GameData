require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7333202Trigger = class("Q7333202Trigger", GadgetActorProxy)
Q7333202Trigger.defaultAlias = "Q7333202Trigger"
local Q73332ClientConfig = require("Quest/Client/Q73332ClientConfig")

local this
local subIDs = Q73332ClientConfig.SubIDs
local npcs = Q73332ClientConfig.Npcs
local points = Q73332ClientConfig.Points
local datas = Q73332ClientConfig.Datas

function Q7333202Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7333202Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7333202Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7333202)
    this:DestroySelf()
end

function Q7333202Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7333202Trigger
