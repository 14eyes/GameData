require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310502Trigger = class("Q7310502Trigger", GadgetActorProxy)
Q7310502Trigger.defaultAlias = "Q7310502Trigger"
local Q73105ClientConfig = require("Quest/Client/Q73105ClientConfig")

local subIDs = Q73105ClientConfig.SubIDs
local npcs = Q73105ClientConfig.Npcs
local datas = Q73105ClientConfig.Datas

function Q7310502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7310502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310502Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7310502)
    self:DestroySelf()
end

function Q7310502Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7310502Trigger
