require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7668301Trigger = class("Q7668301Trigger", GadgetActorProxy)
Q7668301Trigger.defaultAlias = "Q7668301Trigger"
local Q76683ClientConfig = require("Quest/Client/Q76683ClientConfig")

local this
local subIDs = Q76683ClientConfig.SubIDs
local npcs = Q76683ClientConfig.Npcs
local points = Q76683ClientConfig.Points

function Q7668301Trigger:OnPostDataPrepare()
    print("Q7668301Trigger - OnPostDataPrepare")
    this = self
end

function Q7668301Trigger:OnPostComponentPrepare()
    print("Q7668301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76683)
end

function Q7668301Trigger:TriggerIn()
    print("Q7668301Trigger - TriggerIn")
    actorMgr:GetActor("76683"):RequestInteraction(npcs.Npc31084.alias, nil, true)
    this:DestroySelf()
end

function Q7668301Trigger:PreTriggerIn()
    print("Q7668301Trigger - PreTriggerIn")
end

function Q7668301Trigger:LightUpTriggerIn()
    print("Q7668301Trigger - LightUpTriggerIn")
end

function Q7668301Trigger:TriggerOut()
    print("Q7668301Trigger - TriggerOut")
end

return Q7668301Trigger
