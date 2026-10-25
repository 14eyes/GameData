require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19014Trigger_Sleep1 = class("Q19014Trigger_Sleep1", GadgetActorProxy)
Q19014Trigger_Sleep1.defaultAlias = "Q19014Trigger_Sleep1"
local Q19014ClientConfig = require("Quest/Client/Q19014ClientConfig")

local subIDs = Q19014ClientConfig.SubIDs
local npcs = Q19014ClientConfig.Npcs
local datas = Q19014ClientConfig.Datas

function Q19014Trigger_Sleep1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19014Trigger_Sleep1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19014Trigger_Sleep1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19014"):FinishQuestID(false, 1901401)
    self:DestroySelf()
end

function Q19014Trigger_Sleep1:TriggerOut()
    print("TriggerOut")
end

return Q19014Trigger_Sleep1
