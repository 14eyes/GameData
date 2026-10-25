require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21000Trigger1 = class("Q21000Trigger1", GadgetActorProxy)
Q21000Trigger1.defaultAlias = "Q21000Trigger1"
local Q21000ClientConfig = require("Quest/Client/Q21000ClientConfig")

local subIDs = Q21000ClientConfig.SubIDs
local npcs = Q21000ClientConfig.Npcs
local datas = Q21000ClientConfig.Datas

function Q21000Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q21000Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, sceneData:GetDummyPoint(3, "Q2100007_N2031"), self.TriggerIn, self.TriggerOut)
end

function Q21000Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21000"):FinishQuestID(false, 2100014)
    self:DestroySelf()
end

function Q21000Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q21000Trigger1
