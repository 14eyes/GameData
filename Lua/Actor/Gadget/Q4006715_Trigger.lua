require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006715_Trigger = class("Q4006715_Trigger", GadgetActorProxy)
Q4006715_Trigger.defaultAlias = "Q4006715_Trigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006715_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006715_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(68.07191, 70.01786, 39.61562, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006715_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40067")
    actor:CreateQuestNpcById(4006715, npcs.Npc12646Data.id, 1)
    actor:RequestInteraction(npcs.Npc12646Data.alias)
    self:DestroySelf()
end

function Q4006715_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006715_Trigger
