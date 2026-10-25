require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917004Trigger = class("Q1917004Trigger", GadgetActorProxy)
Q1917004Trigger.defaultAlias = "Q1917004Trigger"
local Q19170ClientConfig = require("Quest/Client/Q19170ClientConfig")

local this
local subIDs = Q19170ClientConfig.SubIDs
local npcs = Q19170ClientConfig.Npcs

function Q1917004Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917004Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917004Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19170"):RequestInteraction(npcs.Coop_FaruzanData.alias)
    this:DestroySelf()
end

function Q1917004Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917004Trigger
