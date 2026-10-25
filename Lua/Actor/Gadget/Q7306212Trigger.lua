require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306212Trigger = class("Q7306212Trigger", GadgetActorProxy)
Q7306212Trigger.defaultAlias = "Q7306212Trigger"
local Q73062ClientConfig = require("Quest/Client/Q73062ClientConfig")

local subIDs = Q73062ClientConfig.SubIDs
local npcs = Q73062ClientConfig.Npcs
local datas = Q73062ClientConfig.Datas

function Q7306212Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306212Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306212Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q7306212Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306212Trigger
