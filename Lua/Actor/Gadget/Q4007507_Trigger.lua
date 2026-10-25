require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007507_Trigger = class("Q4007507_Trigger", GadgetActorProxy)
Q4007507_Trigger.defaultAlias = "Q4007507_Trigger"
local Q40075ClientConfig = require("Quest/Client/Q40075ClientConfig")

local subIDs = Q40075ClientConfig.SubIDs
local npcs = Q40075ClientConfig.Npcs

function Q4007507_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007507_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007507_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007507)
    self:DestroySelf()
end

function Q4007507_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007507_Trigger
