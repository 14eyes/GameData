require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002Trigger = class("Q73002Trigger", GadgetActorProxy)
Q73002Trigger.defaultAlias = "Q73002Trigger"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q73002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73002Trigger
