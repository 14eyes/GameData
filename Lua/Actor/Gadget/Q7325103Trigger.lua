require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325103Trigger = class("Q7325103Trigger", GadgetActorProxy)
Q7325103Trigger.defaultAlias = "Q7325103Trigger"
local Q73251ClientConfig = require("Quest/Client/Q73251ClientConfig")

local subIDs = Q73251ClientConfig.SubIDs
local npcs = Q73251ClientConfig.Npcs

function Q7325103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7325103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325103Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325103)
    self:DestroySelf()
end

function Q7325103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325103Trigger
