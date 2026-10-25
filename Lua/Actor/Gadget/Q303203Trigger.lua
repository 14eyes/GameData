require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303203Trigger = class("Q303203Trigger", GadgetActorProxy)
Q303203Trigger.defaultAlias = "Q303203Trigger"
local Q3032ClientConfig = require("Quest/Client/Q3032ClientConfig")

local this
local subIDs = Q3032ClientConfig.SubIDs
local npcs = Q3032ClientConfig.Npcs
local datas = Q3032ClientConfig.Datas

function Q303203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303203Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3032"):RequestInteraction(npcs.Npc12991Data.alias)
    this:DestroySelf()
end

function Q303203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303203Trigger
