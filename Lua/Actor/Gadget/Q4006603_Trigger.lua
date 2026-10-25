require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006603_Trigger = class("Q4006603_Trigger", GadgetActorProxy)
Q4006603_Trigger.defaultAlias = "Q4006603_Trigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local gadgets = Q40066ClientConfig.Gadgets
local datas = Q40066ClientConfig.Datas

function Q4006603_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006603_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006603_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40066")
    actor:CreateQuestNpcById(4006603, npcs.Npc1042Data.id, 1)
    actor:RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4006603_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006603_Trigger
