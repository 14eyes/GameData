require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303002Trigger = class("Q303002Trigger", GadgetActorProxy)
Q303002Trigger.defaultAlias = "Q303002Trigger"
local Q3030ClientConfig = require("Quest/Client/Q3030ClientConfig")

local this
local subIDs = Q3030ClientConfig.SubIDs
local npcs = Q3030ClientConfig.Npcs

function Q303002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303002Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3030"):RequestInteraction(npcs.Npc3027Data.alias)
    this:DestroySelf()
end

function Q303002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303002Trigger
