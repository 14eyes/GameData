require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73698Trigger = class("Q73698Trigger", GadgetActorProxy)
Q73698Trigger.defaultAlias = "Q73698Trigger"
local Q73698ClientConfig = require("Quest/Client/Q73698ClientConfig")

local this
local subIDs = Q73698ClientConfig.SubIDs
local npcs = Q73698ClientConfig.Npcs

function Q73698Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73698Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73698Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73698"):RequestInteraction(npcs.Npc4284Data.alias)
    this:DestroySelf()
end

function Q73698Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73698Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73698Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73698Trigger
