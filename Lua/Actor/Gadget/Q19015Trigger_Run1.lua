require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19015Trigger_Run1 = class("Q19015Trigger_Run1", GadgetActorProxy)
Q19015Trigger_Run1.defaultAlias = "Q19015Trigger_Run1"
local Q19015ClientConfig = require("Quest/Client/Q19015ClientConfig")

local subIDs = Q19015ClientConfig.SubIDs
local npcs = Q19015ClientConfig.Npcs
local datas = Q19015ClientConfig.Datas

function Q19015Trigger_Run1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19015Trigger_Run1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19015Trigger_Run1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19015"):FinishQuestID(false, 1901502)
    self:DestroySelf()
end

function Q19015Trigger_Run1:TriggerOut()
    print("TriggerOut")
end

return Q19015Trigger_Run1
