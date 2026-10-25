require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73296Trigger = class("Q73296Trigger", GadgetActorProxy)
Q73296Trigger.defaultAlias = "Q73296Trigger"
local Q73296ClientConfig = require("Quest/Client/Q73296ClientConfig")

local this
local subIDs = Q73296ClientConfig.SubIDs
local npcs = Q73296ClientConfig.Npcs
local points = Q73296ClientConfig.Points
local datas = Q73296ClientConfig.Datas

function Q73296Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73296Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73296Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7329603)
    this:DestroySelf()
end

function Q73296Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73296Trigger
