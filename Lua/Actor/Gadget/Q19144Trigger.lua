require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19144Trigger = class("Q19144Trigger", GadgetActorProxy)
Q19144Trigger.defaultAlias = "Q19144Trigger"
local Q19144ClientConfig = require("Quest/Client/Q19144ClientConfig")

local subIDs = Q19144ClientConfig.SubIDs
local npcs = Q19144ClientConfig.Npcs

function Q19144Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19144Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19144Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19144"):RequestInteraction(npcs.Npc12277Data.alias)
    self:DestroySelf()
end

function Q19144Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19144Trigger
