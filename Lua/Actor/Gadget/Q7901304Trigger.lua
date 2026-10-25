require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7901304Trigger = class("Q7901304Trigger", GadgetActorProxy)
Q7901304Trigger.defaultAlias = "Q7901304Trigger"
local Q79013ClientConfig = require("Quest/Client/Q79013ClientConfig")

local subIDs = Q79013ClientConfig.SubIDs
local npcs = Q79013ClientConfig.Npcs

function Q7901304Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7901304Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7901304Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils:FinishQuestID(false, 7901304)
    self:DestroySelf()
end

function Q7901304Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7901304Trigger
