require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79026Trigger = class("Q79026Trigger", GadgetActorProxy)
Q79026Trigger.defaultAlias = "Q79026Trigger"
local Q79026ClientConfig = require("Quest/Client/Q79026ClientConfig")

local subIDs = Q79026ClientConfig.SubIDs
local npcs = Q79026ClientConfig.Npcs

function Q79026Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79026Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79026Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("79026"):RequestInteractionForceAlias(npcs.Npc20815Data.alias)
    self:DestroySelf()
end

function Q79026Trigger:TriggerOut()
    print("TriggerOut")
end

return Q79026Trigger
