require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902520Trigger3 = class("Q7902520Trigger3", GadgetActorProxy)
Q7902520Trigger3.defaultAlias = "Q7902520Trigger3"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs

function Q7902520Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902520Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902520Trigger3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902520)
    self:DestroySelf()
end

function Q7902520Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q7902520Trigger3
