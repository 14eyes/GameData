require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008103Trigger = class("Q4008103Trigger", GadgetActorProxy)
Q4008103Trigger.defaultAlias = "Q4008103Trigger"
local Q40081ClientConfig = require("Quest/Client/Q40081ClientConfig")

local subIDs = Q40081ClientConfig.SubIDs
local npcs = Q40081ClientConfig.Npcs

function Q4008103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008103Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008103)
    self:DestroySelf()
end

function Q4008103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008103Trigger
