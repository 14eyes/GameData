require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401711_Trigger = class("Q1401711_Trigger", GadgetActorProxy)
Q1401711_Trigger.defaultAlias = "Q1401711_Trigger"
local Q14017ClientConfig = require("Quest/Client/Q14017ClientConfig")

local this
local subIDs = Q14017ClientConfig.SubIDs
local npcs = Q14017ClientConfig.Npcs
local points = Q14017ClientConfig.Points
local datas = Q14017ClientConfig.Datas

function Q1401711_Trigger:OnPostDataPrepare()
    print("[MainId: 14017][Trigger: Q1401711_Trigger] OnPostDataPrepare")
    this = self
end

function Q1401711_Trigger:OnPostComponentPrepare()
    print("[MainId: 14017][Trigger: Q1401711_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(65, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401711_Trigger:TriggerIn()
    print("[MainId: 14017][Trigger: Q1401711_Trigger] TriggerIn")
    local actor = actorMgr:GetActor("14017")
    actor:CreateQuestNpcById(1401711, npcs.Npc13774Data.id, 0)
    actor:CreateQuestNpcById(1401711, npcs.Npc13775Data.id, 0)
    actor:CreateQuestNpcById(1401711, npcs.Npc13776Data.id, 0)
    actor:CreateQuestNpcById(1401711, npcs.Npc13777Data.id, 0)
    actor:CreateQuestNpcById(1401711, npcs.Npc13320Data.id, 0)
    actor:GetQuestNpcActor(npcs.Npc13774Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    actor:GetQuestNpcActor(npcs.Npc13775Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    actor:GetQuestNpcActor(npcs.Npc13776Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    actor:GetQuestNpcActor(npcs.Npc13777Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    actor:RequestInteraction(npcs.Npc13320Data.alias, "", true)
    this:DestroySelf()
end

function Q1401711_Trigger:PreTriggerIn()
    print("[MainId: 14017][Trigger: Q1401711_Trigger] PreTriggerIn")
end

function Q1401711_Trigger:LightUpTriggerIn()
    print("[MainId: 14017][Trigger: Q1401711_Trigger] LightUpTriggerIn")
end

function Q1401711_Trigger:TriggerOut()
    print("[MainId: 14017][Trigger: Q1401711_Trigger] TriggerOut")
end

return Q1401711_Trigger
