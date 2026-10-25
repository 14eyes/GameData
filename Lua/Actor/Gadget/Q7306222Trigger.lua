require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306222Trigger = class("Q7306222Trigger", GadgetActorProxy)
Q7306222Trigger.defaultAlias = "Q7306222Trigger"
local Q73062ClientConfig = require("Quest/Client/Q73062ClientConfig")

local subIDs = Q73062ClientConfig.SubIDs
local npcs = Q73062ClientConfig.Npcs
local datas = Q73062ClientConfig.Datas

function Q7306222Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306222Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306222Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q7306222Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306222Trigger
