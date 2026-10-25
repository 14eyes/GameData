require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79013Trigger1 = class("Q79013Trigger1", GadgetActorProxy)
Q79013Trigger1.defaultAlias = "Q79013Trigger1"
local Q79013ClientConfig = require("Quest/Client/Q79013ClientConfig")

local subIDs = Q79013ClientConfig.SubIDs
local npcs = Q79013ClientConfig.Npcs

function Q79013Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79013Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79013Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7901304)
    self:DestroySelf()
end

function Q79013Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q79013Trigger1
