require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305508_2Trigger = class("Q7305508_2Trigger", GadgetActorProxy)
Q7305508_2Trigger.defaultAlias = "Q7305508_2Trigger"
local Q73055ClientConfig = require("Quest/Client/Q73055ClientConfig")

local subIDs = Q73055ClientConfig.SubIDs
local npcs = Q73055ClientConfig.Npcs
local datas = Q73055ClientConfig.Datas

function Q7305508_2Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305508_2Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305508_2Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q7305508_2Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305508_2Trigger
