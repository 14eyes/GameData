require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79030Trigger = class("Q79030Trigger", GadgetActorProxy)
Q79030Trigger.defaultAlias = "Q79030Trigger"
local Q79030ClientConfig = require("Quest/Client/Q79030ClientConfig")

local subIDs = Q79030ClientConfig.SubIDs
local npcs = Q79030ClientConfig.Npcs

function Q79030Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79030Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79030Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7903001)
    self:DestroySelf()
end

function Q79030Trigger:TriggerOut()
    print("TriggerOut")
end

return Q79030Trigger
