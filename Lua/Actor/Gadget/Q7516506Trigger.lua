require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7516506Trigger = class("Q7516506Trigger", GadgetActorProxy)
Q7516506Trigger.defaultAlias = "Q7516506Trigger"
local Q75165ClientConfig = require("Quest/Client/Q75165ClientConfig")

local this
local subIDs = Q75165ClientConfig.SubIDs
local npcs = Q75165ClientConfig.Npcs
local points = Q75165ClientConfig.Points

function Q7516506Trigger:OnPostDataPrepare()
    print("Q7516506Trigger - OnPostDataPrepare")
    this = self
end

function Q7516506Trigger:OnPostComponentPrepare()
    print("Q7516506Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75165)
end

function Q7516506Trigger:TriggerIn()
    print("Q7516506Trigger - TriggerIn")
    actorMgr:GetActor("75165"):RequestInteractionForceAlias(npcs.Npc6458.alias, "", true)
    this:DestroySelf()
end

function Q7516506Trigger:PreTriggerIn()
    print("Q7516506Trigger - PreTriggerIn")
end

function Q7516506Trigger:LightUpTriggerIn()
    print("Q7516506Trigger - LightUpTriggerIn")
end

function Q7516506Trigger:TriggerOut()
    print("Q7516506Trigger - TriggerOut")
end

return Q7516506Trigger
