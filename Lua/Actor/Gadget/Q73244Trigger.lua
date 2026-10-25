require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73244Trigger = class("Q73244Trigger", GadgetActorProxy)
Q73244Trigger.defaultAlias = "Q73244Trigger"
local Q73244ClientConfig = require("Quest/Client/Q73244ClientConfig")

local subIDs = Q73244ClientConfig.SubIDs
local npcs = Q73244ClientConfig.Npcs
local datas = Q73244ClientConfig.Datas

function Q73244Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73244Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73244Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q73244Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73244Trigger
