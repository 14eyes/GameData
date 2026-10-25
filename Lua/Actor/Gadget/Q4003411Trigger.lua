require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4003411Trigger = class("Q4003411Trigger", GadgetActorProxy)
Q4003411Trigger.defaultAlias = "Q4003411Trigger"
local Q40034ClientConfig = require("Quest/Client/Q40034ClientConfig")

local subIDs = Q40034ClientConfig.SubIDs
local npcs = Q40034ClientConfig.Npcs
local datas = Q40034ClientConfig.Datas

function Q4003411Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4003411Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4003411Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40034"):RequestInteraction(npcs.Npc12287Data.alias)
    self:DestroySelf()
end

function Q4003411Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4003411Trigger
