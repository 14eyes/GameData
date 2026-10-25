require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007614_Trigger = class("Q4007614_Trigger", GadgetActorProxy)
Q4007614_Trigger.defaultAlias = "Q4007614_Trigger"
local Q40076ClientConfig = require("Quest/Client/Q40076ClientConfig")

local subIDs = Q40076ClientConfig.SubIDs
local npcs = Q40076ClientConfig.Npcs

function Q4007614_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007614_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007614_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40076"):RequestInteraction(npcs.Npc12605Data.alias)
    self:DestroySelf()
end

function Q4007614_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007614_Trigger
