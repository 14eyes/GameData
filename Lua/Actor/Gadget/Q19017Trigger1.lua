require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19017Trigger1 = class("Q19017Trigger1", GadgetActorProxy)
Q19017Trigger1.defaultAlias = "Q19017Trigger1"
local Q19017ClientConfig = require("Quest/Client/Q19017ClientConfig")

local subIDs = Q19017ClientConfig.SubIDs
local npcs = Q19017ClientConfig.Npcs

function Q19017Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19017Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19017Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19017"):FinishQuestID(false, 1901702)
    self:DestroySelf()
end

function Q19017Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19017Trigger1
