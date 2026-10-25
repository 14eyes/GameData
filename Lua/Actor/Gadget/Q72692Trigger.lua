require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72692Trigger = class("Q72692Trigger", GadgetActorProxy)
Q72692Trigger.defaultAlias = "Q72692Trigger"
local Q72692ClientConfig = require("Quest/Client/Q72692ClientConfig")

local subIDs = Q72692ClientConfig.SubIDs
local npcs = Q72692ClientConfig.Npcs

function Q72692Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72692Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72692Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72692"):RequestInteractionForceAlias(npcs.Npc30172Data.alias)
    self:DestroySelf()
end

function Q72692Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72692Trigger
