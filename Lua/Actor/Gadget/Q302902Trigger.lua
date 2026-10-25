require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302902Trigger = class("Q302902Trigger", GadgetActorProxy)
Q302902Trigger.defaultAlias = "Q302902Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302902Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302902Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302902Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):RequestInteraction(npcs.Npc12991Data.alias)
    this:DestroySelf()
end

function Q302902Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302902Trigger
