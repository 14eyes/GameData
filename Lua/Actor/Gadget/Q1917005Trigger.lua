require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917005Trigger = class("Q1917005Trigger", GadgetActorProxy)
Q1917005Trigger.defaultAlias = "Q1917005Trigger"
local Q19170ClientConfig = require("Quest/Client/Q19170ClientConfig")

local this
local subIDs = Q19170ClientConfig.SubIDs
local npcs = Q19170ClientConfig.Npcs

function Q1917005Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917005Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917005Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19170"):RequestInteraction(npcs.Npc1051Data.alias)
    this:DestroySelf()
end

function Q1917005Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917005Trigger
