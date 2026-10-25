require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306225Trigger = class("Q7306225Trigger", GadgetActorProxy)
Q7306225Trigger.defaultAlias = "Q7306225Trigger"
local Q73062ClientConfig = require("Quest/Client/Q73062ClientConfig")

local subIDs = Q73062ClientConfig.SubIDs
local npcs = Q73062ClientConfig.Npcs
local datas = Q73062ClientConfig.Datas

function Q7306225Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306225Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306225Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q7306225Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306225Trigger
