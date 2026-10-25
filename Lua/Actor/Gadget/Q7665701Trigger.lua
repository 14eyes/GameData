require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7665701Trigger = class("Q7665701Trigger", GadgetActorProxy)
Q7665701Trigger.defaultAlias = "Q7665701Trigger"
local Q76657ClientConfig = require("Quest/Client/Q76657ClientConfig")

local this
local subIDs = Q76657ClientConfig.SubIDs
local npcs = Q76657ClientConfig.Npcs
local points = Q76657ClientConfig.Points

function Q7665701Trigger:OnPostDataPrepare()
    print("Q7665701Trigger - OnPostDataPrepare")
    this = self
end

function Q7665701Trigger:OnPostComponentPrepare()
    print("Q7665701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76657)
end

function Q7665701Trigger:TriggerIn()
    print("Q7665701Trigger - TriggerIn")
    actorMgr:GetActor("76657"):RequestInteraction(npcs.Npc1313.alias, "", true)
    this:DestroySelf()
end

function Q7665701Trigger:PreTriggerIn()
    print("Q7665701Trigger - PreTriggerIn")
end

function Q7665701Trigger:LightUpTriggerIn()
    print("Q7665701Trigger - LightUpTriggerIn")
end

function Q7665701Trigger:TriggerOut()
    print("Q7665701Trigger - TriggerOut")
end

return Q7665701Trigger
