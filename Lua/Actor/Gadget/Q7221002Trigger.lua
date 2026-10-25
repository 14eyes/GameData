require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7221002Trigger = class("Q7221002Trigger", GadgetActorProxy)
Q7221002Trigger.defaultAlias = "Q7221002Trigger"
local Q72210ClientConfig = require("Quest/Client/Q72210ClientConfig")

local subIDs = Q72210ClientConfig.SubIDs
local npcs = Q72210ClientConfig.Npcs
local datas = Q72210ClientConfig.Datas

function Q7221002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7221002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(120, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7221002Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7221002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7221002Trigger
