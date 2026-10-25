require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19026Trigger = class("Q19026Trigger", GadgetActorProxy)
Q19026Trigger.defaultAlias = "Q19026Trigger"
local Q19026ClientConfig = require("Quest/Client/Q19026ClientConfig")

local subIDs = Q19026ClientConfig.SubIDs
local npcs = Q19026ClientConfig.Npcs

function Q19026Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19026Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19026Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19026"):FinishQuestID(false, 1902601)
    self:DestroySelf()
end

function Q19026Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19026Trigger
