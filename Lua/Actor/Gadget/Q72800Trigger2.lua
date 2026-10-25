require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72800Trigger2 = class("Q72800Trigger2", GadgetActorProxy)
Q72800Trigger2.defaultAlias = "Q72800Trigger2"
local Q72800ClientConfig = require("Quest/Client/Q72800ClientConfig")

local subIDs = Q72800ClientConfig.SubIDs
local npcs = Q72800ClientConfig.Npcs
local datas = Q72800ClientConfig.Datas

function Q72800Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72800Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, sceneData:GetDummyPoint(3, "Q7280010"), self.TriggerIn, self.TriggerOut)
end

function Q72800Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72800"):FinishQuestID(false, 7280010)
    self:DestroySelf()
end

function Q72800Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q72800Trigger2
