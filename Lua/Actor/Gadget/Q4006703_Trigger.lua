require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006703_Trigger = class("Q4006703_Trigger", GadgetActorProxy)
Q4006703_Trigger.defaultAlias = "Q4006703_Trigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006703_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006703_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(36.21693, 49.32148, 28.38847, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006703_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40067")
    actor:CreateQuestNpcById(4006703, npcs.Npc1042Data.id, 1)
    actor:RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4006703_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006703_Trigger
