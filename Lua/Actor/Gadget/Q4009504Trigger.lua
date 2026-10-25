require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009504Trigger = class("Q4009504Trigger", GadgetActorProxy)
Q4009504Trigger.defaultAlias = "Q4009504Trigger"
local Q40095ClientConfig = require("Quest/Client/Q40095ClientConfig")

local subIDs = Q40095ClientConfig.SubIDs
local npcs = Q40095ClientConfig.Npcs

function Q4009504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4009504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(60, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4009504Trigger:TriggerIn()
    print("TriggerIn")
end

function Q4009504Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 4009504)
    self:DestroySelf()
end

return Q4009504Trigger
