require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614506Trigger = class("Q7614506Trigger", GadgetActorProxy)
Q7614506Trigger.defaultAlias = "Q7614506Trigger"
local Q76145ClientConfig = require("Quest/Client/Q76145ClientConfig")

local this
local subIDs = Q76145ClientConfig.SubIDs
local npcs = Q76145ClientConfig.Npcs
local points = Q76145ClientConfig.Points

function Q7614506Trigger:OnPostDataPrepare()
    print("Q7614506Trigger - OnPostDataPrepare")
    this = self
end

function Q7614506Trigger:OnPostComponentPrepare()
    print("Q7614506Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76145)
end

function Q7614506Trigger:TriggerIn()
    print("Q7614506Trigger - TriggerIn")
    actorMgr:GetActor("76145"):RequestInteraction(npcs.Npc7656.alias, "", true)
    this:DestroySelf()
end

function Q7614506Trigger:PreTriggerIn()
    print("Q7614506Trigger - PreTriggerIn")
end

function Q7614506Trigger:LightUpTriggerIn()
    print("Q7614506Trigger - LightUpTriggerIn")
end

function Q7614506Trigger:TriggerOut()
    print("Q7614506Trigger - TriggerOut")
end

return Q7614506Trigger
