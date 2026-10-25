require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23000Trigger = class("Q23000Trigger", GadgetActorProxy)
Q23000Trigger.defaultAlias = "Q23000Trigger"
local Q23000ClientConfig = require("Quest/Client/Q23000ClientConfig")

local subIDs = Q23000ClientConfig.SubIDs
local npcs = Q23000ClientConfig.Npcs

function Q23000Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23000Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23000Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2300003)
    self:DestroySelf()
end

function Q23000Trigger:TriggerOut()
    print("TriggerOut")
end

return Q23000Trigger
