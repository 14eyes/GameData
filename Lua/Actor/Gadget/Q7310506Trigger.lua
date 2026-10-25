require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310506Trigger = class("Q7310506Trigger", GadgetActorProxy)
Q7310506Trigger.defaultAlias = "Q7310506Trigger"
local Q73105ClientConfig = require("Quest/Client/Q73105ClientConfig")

local subIDs = Q73105ClientConfig.SubIDs
local npcs = Q73105ClientConfig.Npcs
local datas = Q73105ClientConfig.Datas

function Q7310506Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7310506Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310506Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7310506)
    self:DestroySelf()
end

function Q7310506Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7310506Trigger
