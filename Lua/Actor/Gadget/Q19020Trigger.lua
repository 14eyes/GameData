require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19020Trigger = class("Q19020Trigger", GadgetActorProxy)
Q19020Trigger.defaultAlias = "Q19020Trigger"
local Q19020ClientConfig = require("Quest/Client/Q19020ClientConfig")

local subIDs = Q19020ClientConfig.SubIDs
local npcs = Q19020ClientConfig.Npcs
local datas = Q19020ClientConfig.Datas

function Q19020Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19020Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19020Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19020"):FinishQuestID(false, 1902001)
    self:DestroySelf()
end

function Q19020Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19020Trigger
