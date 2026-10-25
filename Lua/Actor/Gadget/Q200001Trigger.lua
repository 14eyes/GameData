require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200001Trigger = class("Q200001Trigger", GadgetActorProxy)
Q200001Trigger.defaultAlias = "Q200001Trigger"
local Q2000ClientConfig = require("Quest/Client/Q2000ClientConfig")

local mainID = Q2000ClientConfig.MainID
local actorAlias = Q2000ClientConfig.ActorAlias
local subIDs = Q2000ClientConfig.SubIDs
local npcs = Q2000ClientConfig.Npcs
local datas = Q2000ClientConfig.Datas

function Q200001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200001Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 200001)
    self:DestroySelf()
end

function Q200001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200001Trigger
