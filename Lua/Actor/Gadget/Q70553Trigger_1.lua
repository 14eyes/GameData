require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70553Trigger_1 = class("Q70553Trigger_1", GadgetActorProxy)
Q70553Trigger_1.defaultAlias = "Q70553Trigger_1"
local Q70553ClientConfig = require("Quest/Client/Q70553ClientConfig")

local this
local subIDs = Q70553ClientConfig.SubIDs
local npcs = Q70553ClientConfig.Npcs
local points = Q70553ClientConfig.Points

function Q70553Trigger_1:OnPostDataPrepare()
    print("Q70553Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q70553Trigger_1:OnPostComponentPrepare()
    print("Q70553Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70553)
end

function Q70553Trigger_1:TriggerIn()
    print("Q70553Trigger_1 - TriggerIn")
    actorMgr:GetActor("70553"):RequestInteraction(npcs.Npc1310.alias, "", true)
    this:DestroySelf()
end

function Q70553Trigger_1:PreTriggerIn()
    print("Q70553Trigger_1 - PreTriggerIn")
end

function Q70553Trigger_1:LightUpTriggerIn()
    print("Q70553Trigger_1 - LightUpTriggerIn")
end

function Q70553Trigger_1:TriggerOut()
    print("Q70553Trigger_1 - TriggerOut")
end

return Q70553Trigger_1
