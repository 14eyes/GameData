require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19040Trigger1 = class("Q19040Trigger1", GadgetActorProxy)
Q19040Trigger1.defaultAlias = "Q19040Trigger1"
local Q19040ClientConfig = require("Quest/Client/Q19040ClientConfig")

local subIDs = Q19040ClientConfig.SubIDs
local npcs = Q19040ClientConfig.Npcs

function Q19040Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19040Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19040Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19040"):FinishQuestID(false, 1904006)
    self:DestroySelf()
end

function Q19040Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19040Trigger1
