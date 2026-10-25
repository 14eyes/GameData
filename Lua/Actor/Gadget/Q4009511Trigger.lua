require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009511Trigger = class("Q4009511Trigger", GadgetActorProxy)
Q4009511Trigger.defaultAlias = "Q4009511Trigger"
local Q40095ClientConfig = require("Quest/Client/Q40095ClientConfig")

local subIDs = Q40095ClientConfig.SubIDs
local npcs = Q40095ClientConfig.Npcs

function Q4009511Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4009511Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4009511Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4009511)
    self:DestroySelf()
end

function Q4009511Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009511Trigger
