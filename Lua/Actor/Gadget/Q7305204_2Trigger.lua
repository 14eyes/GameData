require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305204_2Trigger = class("Q7305204_2Trigger", GadgetActorProxy)
Q7305204_2Trigger.defaultAlias = "Q7305204_2Trigger"
local Q73052ClientConfig = require("Quest/Client/Q73052ClientConfig")

local subIDs = Q73052ClientConfig.SubIDs
local npcs = Q73052ClientConfig.Npcs
local datas = Q73052ClientConfig.Datas

function Q7305204_2Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305204_2Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305204_2Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q7305204_2Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305204_2Trigger
