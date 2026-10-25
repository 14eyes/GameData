require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303111Trigger = class("Q303111Trigger", GadgetActorProxy)
Q303111Trigger.defaultAlias = "Q303111Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303111Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303111Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303111Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):RequestInteraction(npcs.Npc12947Data.alias)
    this:DestroySelf()
end

function Q303111Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303111Trigger
