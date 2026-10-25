require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303006Trigger = class("Q303006Trigger", GadgetActorProxy)
Q303006Trigger.defaultAlias = "Q303006Trigger"
local Q3030ClientConfig = require("Quest/Client/Q3030ClientConfig")

local this
local subIDs = Q3030ClientConfig.SubIDs
local npcs = Q3030ClientConfig.Npcs

function Q303006Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303006Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303006Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3030"):RequestInteraction(npcs.Npc3162Data.alias)
    this:DestroySelf()
end

function Q303006Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303006Trigger
