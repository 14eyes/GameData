require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1903205Trigger = class("Q1903205Trigger", GadgetActorProxy)
Q1903205Trigger.defaultAlias = "Q1903205Trigger"
local Q19032ClientConfig = require("Quest/Client/Q19032ClientConfig")

local mainID = Q19032ClientConfig.MainID
local actorAlias = Q19032ClientConfig.ActorAlias
local subIDs = Q19032ClientConfig.SubIDs
local npcs = Q19032ClientConfig.Npcs
local datas = Q19032ClientConfig.Datas

function Q1903205Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1903205Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1903205Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1903203)
end

function Q1903205Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1903205Trigger
