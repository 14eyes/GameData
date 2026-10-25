require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77207 = class("Quest77207", QuestActorProxy)
Quest77207.defaultAlias = "Quest77207"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77207:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77207:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7720701"] = self.OnSubStart7720701,
        ["7720702"] = self.OnSubStart7720702,
        ["7720703"] = self.OnSubStart7720703
    }
end

function Quest77207:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7720701"] = self.OnSubFinish7720701,
        ["7720702"] = self.OnSubFinish7720702,
        ["7720703"] = self.OnSubFinish7720703
    }
end

function Quest77207:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77207:Start()
    print("Start")
end

function Quest77207:OnDestroy()
    print("OnDestroy")
end

function Quest77207:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77207:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77207:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77207:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77207:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77207:OnSubStart7720701(arg1)
    print("OnSubStart7720701")
    this:CreateQuestOrphanNpc(arg1, 7425, 0, false, 0.5, datas.Q7720701)
    this:GetQuestNpcActor(npcs.Npc7425.alias, 77207):DoFreeStyle(4124, true, nil, true, true, false, false)
    this:DeployRangeStoryByQuest(147720700, 3, {x = 9541.846, y = 394.243, z = 6661.015}, 40, 50)
    this:GetQuestNpcActor(npcs.Npc7425.alias, 77207):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7425.alias, 77207):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
end

function Quest77207:OnSubFinish7720701(arg1)
    print("OnSubFinish7720701")
    this:NpcDestroyImmediately(3, npcs.Npc7425.alias)
    this:CancelRangeStoryByQuest(147720700)
end

function Quest77207:OnSubStart7720702(arg1)
    print("OnSubStart7720702")
    this:CreateQuestOrphanNpc(arg1, 7425, 0, false, 0.5, datas.Q7720702)
    this:GetQuestNpcActor(npcs.Npc7425.alias, 77207):DoFreeStyle(4124, true, nil, true, true, false, false)
    this:DeployRangeStoryByQuest(147720700, 3, {x = 9431.418, y = 372.773, z = 6592.215}, 40, 50)
    this:GetQuestNpcActor(npcs.Npc7425.alias, 77207):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7425.alias, 77207):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
end

function Quest77207:OnSubFinish7720702(arg1)
    print("OnSubFinish7720702")
    this:NpcDestroyImmediately(3, npcs.Npc7425.alias)
    this:CancelRangeStoryByQuest(147720700)
end

function Quest77207:OnSubStart7720703(arg1)
    print("OnSubStart7720703")
    this:CreateQuestOrphanNpc(arg1, 7425, 0, false, 0.5, datas.Q7720703)
    this:GetQuestNpcActor(npcs.Npc7425.alias, 77207):DoFreeStyle(4124, true, nil, true, true, false, false)
    this:DeployRangeStoryByQuest(147720700, 3, {x = 9604.743, y = 339.704, z = 6779.582}, 40, 50)
    this:GetQuestNpcActor(npcs.Npc7425.alias, 77207):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7425.alias, 77207):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
end

function Quest77207:OnSubFinish7720703(arg1)
    print("OnSubFinish7720703")
    this:NpcDestroyImmediately(3, npcs.Npc7425.alias)
    this:CancelRangeStoryByQuest(147720700)
end

return Quest77207
