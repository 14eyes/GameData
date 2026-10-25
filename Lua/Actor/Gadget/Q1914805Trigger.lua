require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914805Trigger = class("Q1914805Trigger", GadgetActorProxy)
Q1914805Trigger.defaultAlias = "Q1914805Trigger"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q1914805Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914805Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914805Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19148"):RequestInteraction(npcs.Npc12512Data.alias)
    self:DestroySelf()
end

function Q1914805Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914805Trigger
