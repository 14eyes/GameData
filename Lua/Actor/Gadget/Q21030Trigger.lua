require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21030Trigger = class("Q21030Trigger", GadgetActorProxy)
Q21030Trigger.defaultAlias = "Q21030Trigger"
local Q21030ClientConfig = require("Quest/Client/Q21030ClientConfig")

local subIDs = Q21030ClientConfig.SubIDs
local npcs = Q21030ClientConfig.Npcs

function Q21030Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q21030Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, sceneData:GetDummyPoint(3, "Q2102706_N10000005"), self.TriggerIn, self.TriggerOut)
end

function Q21030Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21030"):FinishQuestID(false, 2103002)
    self:DestroySelf()
end

function Q21030Trigger:TriggerOut()
    print("TriggerOut")
end

return Q21030Trigger
