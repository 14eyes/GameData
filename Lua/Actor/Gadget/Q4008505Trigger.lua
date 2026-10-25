require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008505Trigger = class("Q4008505Trigger", GadgetActorProxy)
Q4008505Trigger.defaultAlias = "Q4008505Trigger"
local Q40085ClientConfig = require("Quest/Client/Q40085ClientConfig")

local subIDs = Q40085ClientConfig.SubIDs
local npcs = Q40085ClientConfig.Npcs
local datas = Q40085ClientConfig.Datas

function Q4008505Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008505Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008505Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40085"):RequestInteraction(npcs.Npc12855Data.alias)
    self:DestroySelf()
end

function Q4008505Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008505Trigger
