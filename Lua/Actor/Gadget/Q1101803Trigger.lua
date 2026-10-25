require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101803Trigger = class("Q1101803Trigger", GadgetActorProxy)
Q1101803Trigger.defaultAlias = "Q1101803Trigger"
local Q11018ClientConfig = require("Quest/Client/Q11018ClientConfig")

local subIDs = Q11018ClientConfig.SubIDs
local npcs = Q11018ClientConfig.Npcs

function Q1101803Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1101803Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101803Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11018"):RequestInteraction(npcs.Npc2003Data.alias)
    self:DestroySelf()
end

function Q1101803Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1101803Trigger
