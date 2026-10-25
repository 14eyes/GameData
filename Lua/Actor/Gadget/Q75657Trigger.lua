require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75657Trigger = class("Q75657Trigger", GadgetActorProxy)
Q75657Trigger.defaultAlias = "Q75657Trigger"
local Q75657ClientConfig = require("Quest/Client/Q75657ClientConfig")

local this
local subIDs = Q75657ClientConfig.SubIDs
local npcs = Q75657ClientConfig.Npcs
local points = Q75657ClientConfig.Points

function Q75657Trigger:OnPostDataPrepare()
    print("[MainId: 75657][Trigger: Q75657Trigger] OnPostDataPrepare")
    this = self
end

function Q75657Trigger:OnPostComponentPrepare()
    print("[MainId: 75657][Trigger: Q75657Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75657)
end

function Q75657Trigger:TriggerIn()
    print("[MainId: 75657][Trigger: Q75657Trigger] TriggerIn")
    local actor = actorMgr:GetActor("75657")
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc30632Data.alias)
    globalActor:DisablePaimonInProfilePage({3})
    actor:CreateQuestNpcById(7565701, npcs.Npc30632Data.id, 0)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_None", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Normal01", 0, true, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Q75657Trigger:PreTriggerIn()
    print("[MainId: 75657][Trigger: Q75657Trigger] PreTriggerIn")
end

function Q75657Trigger:LightUpTriggerIn()
    print("[MainId: 75657][Trigger: Q75657Trigger] LightUpTriggerIn")
end

function Q75657Trigger:TriggerOut()
    print("[MainId: 75657][Trigger: Q75657Trigger] TriggerOut")
    local questNpcActor = actorMgr:GetActor("75657"):GetQuestNpcActor(npcs.Npc30632Data.alias)
    globalActor:ResumePaimonInProfilePage({3})
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:DestroyWithDisappear(false)
end

return Q75657Trigger
