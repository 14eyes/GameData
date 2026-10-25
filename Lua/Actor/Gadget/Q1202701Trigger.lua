require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202701Trigger = class("Q1202701Trigger", GadgetActorProxy)
Q1202701Trigger.defaultAlias = "Q1202701Trigger"
local Q12027ClientConfig = require("Quest/Client/Q12027ClientConfig")

local subIDs = Q12027ClientConfig.SubIDs
local npcs = Q12027ClientConfig.Npcs

function Q1202701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1202701Trigger:TriggerIn()
    print("TriggerIn")
end

function Q1202701Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 1202701)
    self:DestroySelf()
end

return Q1202701Trigger
