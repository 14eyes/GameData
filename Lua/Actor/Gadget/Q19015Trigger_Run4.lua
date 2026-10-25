require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19015Trigger_Run4 = class("Q19015Trigger_Run4", GadgetActorProxy)
Q19015Trigger_Run4.defaultAlias = "Q19015Trigger_Run4"
local Q19015ClientConfig = require("Quest/Client/Q19015ClientConfig")

local subIDs = Q19015ClientConfig.SubIDs
local npcs = Q19015ClientConfig.Npcs
local datas = Q19015ClientConfig.Datas

function Q19015Trigger_Run4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19015Trigger_Run4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19015Trigger_Run4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19015"):FinishQuestID(false, 1901513)
    self:DestroySelf()
end

function Q19015Trigger_Run4:TriggerOut()
    print("TriggerOut")
end

return Q19015Trigger_Run4
