require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73306Trigger = class("Q73306Trigger", GadgetActorProxy)
Q73306Trigger.defaultAlias = "Q73306Trigger"
local Q73306ClientConfig = require("Quest/Client/Q73306ClientConfig")

local subIDs = Q73306ClientConfig.SubIDs
local npcs = Q73306ClientConfig.Npcs

function Q73306Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73306Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73306Trigger:TriggerIn()
    print("TriggerIn")
end

function Q73306Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 7330601)
    self:DestroySelf()
end

return Q73306Trigger
