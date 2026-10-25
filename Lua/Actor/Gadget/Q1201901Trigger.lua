require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201901Trigger = class("Q1201901Trigger", GadgetActorProxy)
Q1201901Trigger.defaultAlias = "Q1201901Trigger"
local Q12019ClientConfig = require("Quest/Client/Q12019ClientConfig")

local subIDs = Q12019ClientConfig.SubIDs
local npcs = Q12019ClientConfig.Npcs

function Q1201901Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201901Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(36, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201901Trigger:TriggerIn()
    print("TriggerIn")
end

function Q1201901Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12019"):FinishQuestID(false, 1201901)
    self:DestroySelf()
end

return Q1201901Trigger
