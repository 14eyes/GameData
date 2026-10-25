require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73673Trigger = class("Q73673Trigger", GadgetActorProxy)
Q73673Trigger.defaultAlias = "Q73673Trigger"
local Q73673ClientConfig = require("Quest/Client/Q73673ClientConfig")

local subIDs = Q73673ClientConfig.SubIDs
local npcs = Q73673ClientConfig.Npcs

function Q73673Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73673Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73673Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73673"):RequestInteractionForceAlias(npcs.Npc4070Data.alias)
    self:DestroySelf()
end

function Q73673Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73673Trigger
