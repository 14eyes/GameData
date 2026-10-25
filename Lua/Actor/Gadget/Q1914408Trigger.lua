require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914408Trigger = class("Q1914408Trigger", GadgetActorProxy)
Q1914408Trigger.defaultAlias = "Q1914408Trigger"
local Q19144ClientConfig = require("Quest/Client/Q19144ClientConfig")

local subIDs = Q19144ClientConfig.SubIDs
local npcs = Q19144ClientConfig.Npcs
local datas = Q19144ClientConfig.Datas

function Q1914408Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914408Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914408Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19144"):RequestInteraction(npcs.Npc1044Data.alias)
    self:DestroySelf()
end

function Q1914408Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914408Trigger
