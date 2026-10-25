require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323212Trigger = class("Q7323212Trigger", GadgetActorProxy)
Q7323212Trigger.defaultAlias = "Q7323212Trigger"
local Q73232ClientConfig = require("Quest/Client/Q73232ClientConfig")

local this
local subIDs = Q73232ClientConfig.SubIDs
local npcs = Q73232ClientConfig.Npcs
local points = Q73232ClientConfig.Points
local datas = Q73232ClientConfig.Datas

function Q7323212Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323212Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323212Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323212)
    this:DestroySelf()
end

function Q7323212Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323212Trigger
