require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009501Trigger = class("Q4009501Trigger", GadgetActorProxy)
Q4009501Trigger.defaultAlias = "Q4009501Trigger"
local Q40095ClientConfig = require("Quest/Client/Q40095ClientConfig")

local subIDs = Q40095ClientConfig.SubIDs
local npcs = Q40095ClientConfig.Npcs

function Q4009501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4009501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(75, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4009501Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4009501)
    self:DestroySelf()
end

function Q4009501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009501Trigger
