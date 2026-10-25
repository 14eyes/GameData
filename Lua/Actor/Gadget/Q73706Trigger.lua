require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73706Trigger = class("Q73706Trigger", GadgetActorProxy)
Q73706Trigger.defaultAlias = "Q73706Trigger"
local Q73706ClientConfig = require("Quest/Client/Q73706ClientConfig")

local this
local subIDs = Q73706ClientConfig.SubIDs
local npcs = Q73706ClientConfig.Npcs
local points = Q73706ClientConfig.Points

function Q73706Trigger:OnPostDataPrepare()
    print("Q73706Trigger - OnPostDataPrepare")
    this = self
end

function Q73706Trigger:OnPostComponentPrepare()
    print("Q73706Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73706)
end

function Q73706Trigger:TriggerIn()
    print("Q73706Trigger - TriggerIn")
    actorMgr:GetActor("73706"):RequestInteraction(npcs.Npc1051.alias, "", true)
    this:DestroySelf()
end

function Q73706Trigger:PreTriggerIn()
    print("Q73706Trigger - PreTriggerIn")
end

function Q73706Trigger:LightUpTriggerIn()
    print("Q73706Trigger - LightUpTriggerIn")
end

function Q73706Trigger:TriggerOut()
    print("Q73706Trigger - TriggerOut")
end

return Q73706Trigger
