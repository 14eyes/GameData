require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20014Trigger = class("Q20014Trigger", GadgetActorProxy)
Q20014Trigger.defaultAlias = "Q20014Trigger"
local Q20014ClientConfig = require("Quest/Client/Q20014ClientConfig")

local subIDs = Q20014ClientConfig.SubIDs
local npcs = Q20014ClientConfig.Npcs

function Q20014Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q20014Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, sceneData:GetDummyPoint(3, "Q2001402"), self.TriggerIn, self.TriggerOut)
end

function Q20014Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("20014"):FinishQuestID(false, 2001406)
    self:DestroySelf()
end

function Q20014Trigger:TriggerOut()
    print("TriggerOut")
end

return Q20014Trigger
