require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19085Trigger = class("Q19085Trigger", GadgetActorProxy)
Q19085Trigger.defaultAlias = "Q19085Trigger"
local Q19085ClientConfig = require("Quest/Client/Q19085ClientConfig")

local mainID = Q19085ClientConfig.MainID
local actorAlias = Q19085ClientConfig.ActorAlias
local subIDs = Q19085ClientConfig.SubIDs
local npcs = Q19085ClientConfig.Npcs
local datas = Q19085ClientConfig.Datas

function Q19085Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19085Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19085Trigger:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1908502)
    self:DestroySelf()
end

function Q19085Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19085Trigger
