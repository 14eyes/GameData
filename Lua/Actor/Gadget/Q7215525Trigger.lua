require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215525Trigger = class("Q7215525Trigger", GadgetActorProxy)
Q7215525Trigger.defaultAlias = "Q7215525Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function Q7215525Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215525Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215525Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72155"):RequestInteractionForceAlias(npcs.Npc3189Data.alias)
    self:DestroySelf()
end

function Q7215525Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215525Trigger
