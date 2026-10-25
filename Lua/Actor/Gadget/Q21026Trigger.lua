require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21026Trigger = class("Q21026Trigger", GadgetActorProxy)
Q21026Trigger.defaultAlias = "Q21026Trigger"
local Q21026ClientConfig = require("Quest/Client/Q21026ClientConfig")

local subIDs = Q21026ClientConfig.SubIDs
local npcs = Q21026ClientConfig.Npcs

function Q21026Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q21026Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, sceneData:GetDummyPoint(3, "Q2102605"), self.TriggerIn, self.TriggerOut)
end

function Q21026Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21026"):FinishQuestID(false, 2102602)
    self:DestroySelf()
end

function Q21026Trigger:TriggerOut()
    print("TriggerOut")
end

return Q21026Trigger
