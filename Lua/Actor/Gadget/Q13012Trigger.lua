require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13012Trigger = class("Q13012Trigger", GadgetActorProxy)
Q13012Trigger.defaultAlias = "Q13012Trigger"
local Q13012ClientConfig = require("Quest/Client/Q13012ClientConfig")

local subIDs = Q13012ClientConfig.SubIDs
local npcs = Q13012ClientConfig.Npcs

function Q13012Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13012Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13012Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1301201)
    self:DestroySelf()
end

function Q13012Trigger:TriggerOut()
    print("TriggerOut")
end

return Q13012Trigger
