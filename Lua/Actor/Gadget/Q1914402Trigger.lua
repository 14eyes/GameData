require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914402Trigger = class("Q1914402Trigger", GadgetActorProxy)
Q1914402Trigger.defaultAlias = "Q1914402Trigger"
local Q19144ClientConfig = require("Quest/Client/Q19144ClientConfig")

local subIDs = Q19144ClientConfig.SubIDs
local npcs = Q19144ClientConfig.Npcs
local datas = Q19144ClientConfig.Datas

function Q1914402Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914402Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914402Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19144")
    actor:RequestInteraction(npcs.Coop_ShinobuData.alias)
    actor:EnablePlayerInput(true)
    self:DestroySelf()
end

function Q1914402Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914402Trigger
