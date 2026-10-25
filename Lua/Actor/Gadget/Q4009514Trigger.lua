require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009514Trigger = class("Q4009514Trigger", GadgetActorProxy)
Q4009514Trigger.defaultAlias = "Q4009514Trigger"
local Q40095ClientConfig = require("Quest/Client/Q40095ClientConfig")

local subIDs = Q40095ClientConfig.SubIDs
local npcs = Q40095ClientConfig.Npcs

function Q4009514Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4009514Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4009514Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4009514)
    self:DestroySelf()
end

function Q4009514Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009514Trigger
