require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100914Trigger = class("Q100914Trigger", GadgetActorProxy)
Q100914Trigger.defaultAlias = "Q100914Trigger"
local Q1009ClientConfig = require("Quest/Client/Q1009ClientConfig")

function Q100914Trigger:OnPostDataPrepare() end

function Q100914Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(11, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100914Trigger:TriggerIn()
    print("IN Q100914Trigger")
    actorMgr:GetActor(Q1009ClientConfig.ActorAlias):RequestInteraction("Npc10258")
    self:DestroySelf()
end

function Q100914Trigger:TriggerOut() end
return Q100914Trigger
