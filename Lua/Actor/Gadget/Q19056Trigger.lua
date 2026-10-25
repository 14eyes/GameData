require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19056Trigger = class("Q19056Trigger", GadgetActorProxy)
Q19056Trigger.defaultAlias = "Q19056Trigger"
local Q19056ClientConfig = require("Quest/Client/Q19056ClientConfig")

local subIDs = Q19056ClientConfig.SubIDs
local npcs = Q19056ClientConfig.Npcs

function Q19056Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19056Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19056Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1905601)
    self:DestroySelf()
end

function Q19056Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19056Trigger
