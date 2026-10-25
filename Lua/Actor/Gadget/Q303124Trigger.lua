require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303124Trigger = class("Q303124Trigger", GadgetActorProxy)
Q303124Trigger.defaultAlias = "Q303124Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303124Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303124Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303124Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):RequestInteraction(npcs.Npc12931Data.alias)
    this:DestroySelf()
end

function Q303124Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303124Trigger
