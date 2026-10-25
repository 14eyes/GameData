require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21028Trigger = class("Q21028Trigger", GadgetActorProxy)
Q21028Trigger.defaultAlias = "Q21028Trigger"
local Q21028ClientConfig = require("Quest/Client/Q21028ClientConfig")

local subIDs = Q21028ClientConfig.SubIDs
local npcs = Q21028ClientConfig.Npcs

function Q21028Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q21028Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, sceneData:GetDummyPoint(3, "Q2102708_N10000005"), self.TriggerIn, self.TriggerOut)
end

function Q21028Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21028"):FinishQuestID(false, 2102802)
    self:DestroySelf()
end

function Q21028Trigger:TriggerOut()
    print("TriggerOut")
end

return Q21028Trigger
