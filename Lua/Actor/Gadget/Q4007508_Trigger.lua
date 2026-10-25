require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007508_Trigger = class("Q4007508_Trigger", GadgetActorProxy)
Q4007508_Trigger.defaultAlias = "Q4007508_Trigger"
local Q40075ClientConfig = require("Quest/Client/Q40075ClientConfig")

local subIDs = Q40075ClientConfig.SubIDs
local npcs = Q40075ClientConfig.Npcs
local datas = Q40075ClientConfig.Datas

function Q4007508_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007508_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007508_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40075")
    actor:CreateQuestNpcById(4007508, npcs.Npc10095Data.id, 1)
    actor:RequestInteraction(npcs.Npc10095Data.alias)
    self:DestroySelf()
end

function Q4007508_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007508_Trigger
