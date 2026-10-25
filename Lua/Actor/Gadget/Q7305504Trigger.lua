require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305504Trigger = class("Q7305504Trigger", GadgetActorProxy)
Q7305504Trigger.defaultAlias = "Q7305504Trigger"
local Q73055ClientConfig = require("Quest/Client/Q73055ClientConfig")

local subIDs = Q73055ClientConfig.SubIDs
local npcs = Q73055ClientConfig.Npcs
local datas = Q73055ClientConfig.Datas

function Q7305504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305504Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305504)
    self:DestroySelf()
end

function Q7305504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305504Trigger
