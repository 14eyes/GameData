require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19086Trigger = class("Q19086Trigger", GadgetActorProxy)
Q19086Trigger.defaultAlias = "Q19086Trigger"
local Q19086ClientConfig = require("Quest/Client/Q19086ClientConfig")

local mainID = Q19086ClientConfig.MainID
local actorAlias = Q19086ClientConfig.ActorAlias
local subIDs = Q19086ClientConfig.SubIDs
local npcs = Q19086ClientConfig.Npcs
local datas = Q19086ClientConfig.Datas

function Q19086Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19086Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19086Trigger:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1908601)
    self:DestroySelf()
end

function Q19086Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19086Trigger
