require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72800Trigger = class("Q72800Trigger", GadgetActorProxy)
Q72800Trigger.defaultAlias = "Q72800Trigger"
local Q72800ClientConfig = require("Quest/Client/Q72800ClientConfig")

local subIDs = Q72800ClientConfig.SubIDs
local npcs = Q72800ClientConfig.Npcs
local datas = Q72800ClientConfig.Datas

function Q72800Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72800Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, sceneData:GetDummyPoint(3, "Q7280002"), self.TriggerIn, self.TriggerOut)
end

function Q72800Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72800"):FinishQuestID(false, 7280002)
    self:DestroySelf()
end

function Q72800Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72800Trigger
