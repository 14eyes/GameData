require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323804Trigger = class("Q7323804Trigger", GadgetActorProxy)
Q7323804Trigger.defaultAlias = "Q7323804Trigger"
local Q73238ClientConfig = require("Quest/Client/Q73238ClientConfig")

local subIDs = Q73238ClientConfig.SubIDs
local npcs = Q73238ClientConfig.Npcs

function Q7323804Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7323804Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323804Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323804)
    self:DestroySelf()
end

function Q7323804Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323804Trigger
