require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914509Trigger = class("Q1914509Trigger", GadgetActorProxy)
Q1914509Trigger.defaultAlias = "Q1914509Trigger"
local Q19145ClientConfig = require("Quest/Client/Q19145ClientConfig")

local subIDs = Q19145ClientConfig.SubIDs
local npcs = Q19145ClientConfig.Npcs
local datas = Q19145ClientConfig.Datas

function Q1914509Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914509Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914509Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19145")
    actor:CreateQuestNpcById(1914509, npcs.Coop_ShinobuData.id, 1)
    actor:RequestInteraction(npcs.Coop_ShinobuData.alias)
    self:DestroySelf()
end

function Q1914509Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914509Trigger
