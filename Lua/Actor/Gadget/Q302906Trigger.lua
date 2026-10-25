require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302906Trigger = class("Q302906Trigger", GadgetActorProxy)
Q302906Trigger.defaultAlias = "Q302906Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302906Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302906Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302906Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("3029")
    actor:ClearNarratorTask()
    actor:RequestInteraction(npcs.Npc10013Data.alias)
    this:DestroySelf()
end

function Q302906Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302906Trigger
