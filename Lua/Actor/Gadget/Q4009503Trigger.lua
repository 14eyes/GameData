require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009503Trigger = class("Q4009503Trigger", GadgetActorProxy)
Q4009503Trigger.defaultAlias = "Q4009503Trigger"
local Q40095ClientConfig = require("Quest/Client/Q40095ClientConfig")

local subIDs = Q40095ClientConfig.SubIDs
local npcs = Q40095ClientConfig.Npcs

function Q4009503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4009503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(60, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4009503Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4009503)
    self:DestroySelf()
end

function Q4009503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009503Trigger
