require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q191040101Trigger = class("Q191040101Trigger", GadgetActorProxy)
Q191040101Trigger.defaultAlias = "Q191040101Trigger"
local Q19104ClientConfig = require("Quest/Client/Q19104ClientConfig")

local subIDs = Q19104ClientConfig.SubIDs
local npcs = Q19104ClientConfig.Npcs
local datas = Q19104ClientConfig.Datas

function Q191040101Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q191040101Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q191040101Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19104"):FinishQuestID(false, 1910401)
    self:DestroySelf()
end

function Q191040101Trigger:TriggerOut()
    print("TriggerOut")
end

return Q191040101Trigger
