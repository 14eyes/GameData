require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007311_Trigger = class("Q4007311_Trigger", GadgetActorProxy)
Q4007311_Trigger.defaultAlias = "Q4007311_Trigger"
local Q40073ClientConfig = require("Quest/Client/Q40073ClientConfig")

local subIDs = Q40073ClientConfig.SubIDs
local npcs = Q40073ClientConfig.Npcs
local datas = Q40073ClientConfig.Datas

function Q4007311_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007311_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007311_Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q4007311_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007311_Trigger
