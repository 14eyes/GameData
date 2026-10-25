require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19020Trigger4 = class("Q19020Trigger4", GadgetActorProxy)
Q19020Trigger4.defaultAlias = "Q19020Trigger4"
local Q19020ClientConfig = require("Quest/Client/Q19020ClientConfig")

local subIDs = Q19020ClientConfig.SubIDs
local npcs = Q19020ClientConfig.Npcs
local datas = Q19020ClientConfig.Datas

function Q19020Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19020Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19020Trigger4:TriggerIn()
    print("TriggerIn")
end

function Q19020Trigger4:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("19020"):FinishQuestID(true, 1902099)
    self:DestroySelf()
end

return Q19020Trigger4
