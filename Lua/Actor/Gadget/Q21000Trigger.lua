require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21000Trigger = class("Q21000Trigger", GadgetActorProxy)
Q21000Trigger.defaultAlias = "Q21000Trigger"
local Q21000ClientConfig = require("Quest/Client/Q21000ClientConfig")

local subIDs = Q21000ClientConfig.SubIDs
local npcs = Q21000ClientConfig.Npcs
local datas = Q21000ClientConfig.Datas

function Q21000Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q21000Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, sceneData:GetDummyPoint(3, "Q2100002_N2031"), self.TriggerIn, self.TriggerOut)
end

function Q21000Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21000"):FinishQuestID(false, 2100002)
    self:DestroySelf()
end

function Q21000Trigger:TriggerOut()
    print("TriggerOut")
end

return Q21000Trigger
