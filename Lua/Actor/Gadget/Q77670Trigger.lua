require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77670Trigger = class("Q77670Trigger", GadgetActorProxy)
Q77670Trigger.defaultAlias = "Q77670Trigger"
local Q77670ClientConfig = require("Quest/Client/Q77670ClientConfig")

local this
local subIDs = Q77670ClientConfig.SubIDs
local npcs = Q77670ClientConfig.Npcs
local points = Q77670ClientConfig.Points

function Q77670Trigger:OnPostDataPrepare()
    print("Q77670Trigger - OnPostDataPrepare")
    this = self
end

function Q77670Trigger:OnPostComponentPrepare()
    print("Q77670Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77670)
end

function Q77670Trigger:TriggerIn()
    print("Q77670Trigger - TriggerIn")
    actorMgr:GetActor("77670"):RequestInteraction(npcs.Npc1335.alias, "", true)
    this:DestroySelf()
end

function Q77670Trigger:PreTriggerIn()
    print("Q77670Trigger - PreTriggerIn")
end

function Q77670Trigger:LightUpTriggerIn()
    print("Q77670Trigger - LightUpTriggerIn")
end

function Q77670Trigger:TriggerOut()
    print("Q77670Trigger - TriggerOut")
end

return Q77670Trigger
