require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006618_Trigger = class("Q4006618_Trigger", GadgetActorProxy)
Q4006618_Trigger.defaultAlias = "Q4006618_Trigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local datas = Q40066ClientConfig.Datas

function Q4006618_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006618_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006618_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40066")
    actor:CreateQuestNpcById(4006618, npcs.Npc1032Data.id, 2)
    actor:RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4006618_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006618_Trigger
