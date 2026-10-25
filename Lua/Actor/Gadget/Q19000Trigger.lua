require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19000Trigger = class("Q19000Trigger", GadgetActorProxy)
Q19000Trigger.defaultAlias = "Q19000Trigger"
local Q19000ClientConfig = require("Quest/Client/Q19000ClientConfig")

local mainID = Q19000ClientConfig.MainID
local actorAlias = Q19000ClientConfig.ActorAlias
local subIDs = Q19000ClientConfig.SubIDs
local npcs = Q19000ClientConfig.Npcs
local datas = Q19000ClientConfig.Datas

function Q19000Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19000Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19000Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1900006)
end

function Q19000Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19000Trigger
