require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7724203Trigger = class("Q7724203Trigger", GadgetActorProxy)
Q7724203Trigger.defaultAlias = "Q7724203Trigger"
local Q77242ClientConfig = require("Quest/Client/Q77242ClientConfig")

local this
local subIDs = Q77242ClientConfig.SubIDs
local datas = Q77242ClientConfig.Datas
local npcs = Q77242ClientConfig.Npcs
local points = Q77242ClientConfig.Points

function Q7724203Trigger:OnPostDataPrepare()
    print("Q7724203Trigger - OnPostDataPrepare")
    this = self
end

function Q7724203Trigger:OnPostComponentPrepare()
    print("Q7724203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77242)
end

function Q7724203Trigger:TriggerIn()
    print("Q7724203Trigger - TriggerIn")
    actorMgr:GetActor("77242"):RequestInteraction(npcs.Npc22805.alias, nil, true)
    this:DestroySelf()
end

function Q7724203Trigger:PreTriggerIn()
    print("Q7724203Trigger - PreTriggerIn")
end

function Q7724203Trigger:LightUpTriggerIn()
    print("Q7724203Trigger - LightUpTriggerIn")
end

function Q7724203Trigger:TriggerOut()
    print("Q7724203Trigger - TriggerOut")
end

return Q7724203Trigger
