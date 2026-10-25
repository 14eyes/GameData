require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72800Trigger1 = class("Q72800Trigger1", GadgetActorProxy)
Q72800Trigger1.defaultAlias = "Q72800Trigger1"
local Q72800ClientConfig = require("Quest/Client/Q72800ClientConfig")

local subIDs = Q72800ClientConfig.SubIDs
local npcs = Q72800ClientConfig.Npcs
local datas = Q72800ClientConfig.Datas

function Q72800Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72800Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, sceneData:GetDummyPoint(3, "Q7280003"), self.TriggerIn, self.TriggerOut)
end

function Q72800Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72800"):FinishQuestID(false, 7280003)
    self:DestroySelf()
end

function Q72800Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72800Trigger1
