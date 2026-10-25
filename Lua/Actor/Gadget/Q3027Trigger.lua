require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3027Trigger = class("Q3027Trigger", GadgetActorProxy)
Q3027Trigger.defaultAlias = "Q3027Trigger"
local Q3027ClientConfig = require("Quest/Client/Q3027ClientConfig")

local subIDs = Q3027ClientConfig.SubIDs
local npcs = Q3027ClientConfig.Npcs

function Q3027Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3027Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3027Trigger:TriggerIn()
    print("TriggerIn")
end

function Q3027Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 302701)
    self:DestroySelf()
end

return Q3027Trigger
