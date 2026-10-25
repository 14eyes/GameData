require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614509Trigger = class("Q7614509Trigger", GadgetActorProxy)
Q7614509Trigger.defaultAlias = "Q7614509Trigger"
local Q76145ClientConfig = require("Quest/Client/Q76145ClientConfig")

local this
local subIDs = Q76145ClientConfig.SubIDs
local npcs = Q76145ClientConfig.Npcs
local points = Q76145ClientConfig.Points

function Q7614509Trigger:OnPostDataPrepare()
    print("Q7614509Trigger - OnPostDataPrepare")
    this = self
end

function Q7614509Trigger:OnPostComponentPrepare()
    print("Q7614509Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76145)
end

function Q7614509Trigger:TriggerIn()
    print("Q7614509Trigger - TriggerIn")
    actorMgr:GetActor("76145"):RequestInteraction(npcs.Npc7656.alias, "", true)
    this:DestroySelf()
end

function Q7614509Trigger:PreTriggerIn()
    print("Q7614509Trigger - PreTriggerIn")
end

function Q7614509Trigger:LightUpTriggerIn()
    print("Q7614509Trigger - LightUpTriggerIn")
end

function Q7614509Trigger:TriggerOut()
    print("Q7614509Trigger - TriggerOut")
end

return Q7614509Trigger
