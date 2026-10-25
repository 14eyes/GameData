require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305534Trigger = class("Q7305534Trigger", GadgetActorProxy)
Q7305534Trigger.defaultAlias = "Q7305534Trigger"
local Q73055ClientConfig = require("Quest/Client/Q73055ClientConfig")

local subIDs = Q73055ClientConfig.SubIDs
local npcs = Q73055ClientConfig.Npcs
local datas = Q73055ClientConfig.Datas

function Q7305534Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305534Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305534Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q7305534Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305534Trigger
