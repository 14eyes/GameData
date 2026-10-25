require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7183102Trigger = class("Q7183102Trigger", GadgetActorProxy)
Q7183102Trigger.defaultAlias = "Q7183102Trigger"
local Q71831ClientConfig = require("Quest/Client/Q71831ClientConfig")

local subIDs = Q71831ClientConfig.SubIDs
local npcs = Q71831ClientConfig.Npcs

function Q7183102Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7183102Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7183102Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71831"):FinishQuestID(false, 7183102)
    self:DestroySelf()
end

function Q7183102Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7183102Trigger
