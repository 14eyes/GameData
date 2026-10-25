require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006713_Trigger = class("Q4006713_Trigger", GadgetActorProxy)
Q4006713_Trigger.defaultAlias = "Q4006713_Trigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006713_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006713_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006713_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40067")
    actor:CreateQuestNpcById(4006713, npcs.Npc1032Data.id, 1)
    actor:RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4006713_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006713_Trigger
