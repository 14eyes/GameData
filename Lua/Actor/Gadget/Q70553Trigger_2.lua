require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70553Trigger_2 = class("Q70553Trigger_2", GadgetActorProxy)
Q70553Trigger_2.defaultAlias = "Q70553Trigger_2"
local Q70553ClientConfig = require("Quest/Client/Q70553ClientConfig")

local this
local subIDs = Q70553ClientConfig.SubIDs
local npcs = Q70553ClientConfig.Npcs
local points = Q70553ClientConfig.Points

function Q70553Trigger_2:OnPostDataPrepare()
    print("Q70553Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q70553Trigger_2:OnPostComponentPrepare()
    print("Q70553Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70553)
end

function Q70553Trigger_2:TriggerIn()
    print("Q70553Trigger_2 - TriggerIn")
    actorMgr:GetActor("70553"):RequestInteraction(npcs.Npc1310.alias, "", true)
    this:DestroySelf()
end

function Q70553Trigger_2:PreTriggerIn()
    print("Q70553Trigger_2 - PreTriggerIn")
end

function Q70553Trigger_2:LightUpTriggerIn()
    print("Q70553Trigger_2 - LightUpTriggerIn")
end

function Q70553Trigger_2:TriggerOut()
    print("Q70553Trigger_2 - TriggerOut")
end

return Q70553Trigger_2
