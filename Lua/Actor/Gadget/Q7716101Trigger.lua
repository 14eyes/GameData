require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7716101Trigger = class("Q7716101Trigger", GadgetActorProxy)
Q7716101Trigger.defaultAlias = "Q7716101Trigger"
local Q77161ClientConfig = require("Quest/Client/Q77161ClientConfig")

local this
local subIDs = Q77161ClientConfig.SubIDs
local npcs = Q77161ClientConfig.Npcs

function Q7716101Trigger:OnPostDataPrepare()
    print("Q7716101Trigger - OnPostDataPrepare")
    this = self
end

function Q7716101Trigger:OnPostComponentPrepare()
    print("Q7716101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77161)
end

function Q7716101Trigger:TriggerIn()
    print("Q7716101Trigger - TriggerIn")
    actorMgr:GetActor("77161"):RequestInteraction(npcs.Npc22730_1.alias, "", true)
    this:DestroySelf()
end

function Q7716101Trigger:PreTriggerIn()
    print("Q7716101Trigger - PreTriggerIn")
end

function Q7716101Trigger:LightUpTriggerIn()
    print("Q7716101Trigger - LightUpTriggerIn")
end

function Q7716101Trigger:TriggerOut()
    print("Q7716101Trigger - TriggerOut")
end

return Q7716101Trigger
