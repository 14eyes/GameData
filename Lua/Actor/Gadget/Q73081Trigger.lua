require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73081Trigger = class("Q73081Trigger", GadgetActorProxy)
Q73081Trigger.defaultAlias = "Q73081Trigger"
local Q73081ClientConfig = require("Quest/Client/Q73081ClientConfig")

local subIDs = Q73081ClientConfig.SubIDs
local npcs = Q73081ClientConfig.Npcs

function Q73081Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73081Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73081Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7308102)
    self:DestroySelf()
end

function Q73081Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73081Trigger
