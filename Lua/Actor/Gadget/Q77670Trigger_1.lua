require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77670Trigger_1 = class("Q77670Trigger_1", GadgetActorProxy)
Q77670Trigger_1.defaultAlias = "Q77670Trigger_1"
local Q77670ClientConfig = require("Quest/Client/Q77670ClientConfig")

local this
local subIDs = Q77670ClientConfig.SubIDs
local npcs = Q77670ClientConfig.Npcs
local points = Q77670ClientConfig.Points

function Q77670Trigger_1:OnPostDataPrepare()
    print("Q77670Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q77670Trigger_1:OnPostComponentPrepare()
    print("Q77670Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77670)
end

function Q77670Trigger_1:TriggerIn()
    print("Q77670Trigger_1 - TriggerIn")
    actorMgr:GetActor("77670"):RequestInteraction(npcs.Npc1332.alias, "", true)
    this:DestroySelf()
end

function Q77670Trigger_1:PreTriggerIn()
    print("Q77670Trigger_1 - PreTriggerIn")
end

function Q77670Trigger_1:LightUpTriggerIn()
    print("Q77670Trigger_1 - LightUpTriggerIn")
end

function Q77670Trigger_1:TriggerOut()
    print("Q77670Trigger_1 - TriggerOut")
end

return Q77670Trigger_1
