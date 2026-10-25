require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7901305Trigger = class("Q7901305Trigger", GadgetActorProxy)
Q7901305Trigger.defaultAlias = "Q7901305Trigger"
local Q79013ClientConfig = require("Quest/Client/Q79013ClientConfig")

local subIDs = Q79013ClientConfig.SubIDs
local npcs = Q79013ClientConfig.Npcs

function Q7901305Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7901305Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7901305Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7901305)
    self:DestroySelf()
end

function Q7901305Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7901305Trigger
