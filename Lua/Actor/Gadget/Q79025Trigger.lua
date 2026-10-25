require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79025Trigger = class("Q79025Trigger", GadgetActorProxy)
Q79025Trigger.defaultAlias = "Q79025Trigger"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs

function Q79025Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79025Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79025Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902502)
    self:DestroySelf()
end

function Q79025Trigger:TriggerOut()
    print("TriggerOut")
end

return Q79025Trigger
