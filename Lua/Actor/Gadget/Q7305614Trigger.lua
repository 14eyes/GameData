require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305614Trigger = class("Q7305614Trigger", GadgetActorProxy)
Q7305614Trigger.defaultAlias = "Q7305614Trigger"
local Q73056ClientConfig = require("Quest/Client/Q73056ClientConfig")

local subIDs = Q73056ClientConfig.SubIDs
local npcs = Q73056ClientConfig.Npcs
local datas = Q73056ClientConfig.Datas

function Q7305614Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305614Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305614Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305614)
    self:DestroySelf()
end

function Q7305614Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305614Trigger
