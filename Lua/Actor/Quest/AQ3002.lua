require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3002 = class("Quest3002", QuestActorProxy)
Quest3002.defaultAlias = "Quest3002"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["300201"] = self.OnSubStart300201,
        ["300202"] = self.OnSubStart300202,
        ["300203"] = self.OnSubStart300203,
        ["300204"] = self.OnSubStart300204,
        ["300205"] = self.OnSubStart300205,
        ["300206"] = self.OnSubStart300206,
        ["300207"] = self.OnSubStart300207,
        ["300208"] = self.OnSubStart300208,
        ["300213"] = self.OnSubStart300213,
        ["300209"] = self.OnSubStart300209,
        ["300210"] = self.OnSubStart300210,
        ["300211"] = self.OnSubStart300211,
        ["300212"] = self.OnSubStart300212
    }
end

function Quest3002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["300201"] = self.OnSubFinish300201,
        ["300202"] = self.OnSubFinish300202,
        ["300203"] = self.OnSubFinish300203,
        ["300204"] = self.OnSubFinish300204,
        ["300205"] = self.OnSubFinish300205,
        ["300206"] = self.OnSubFinish300206,
        ["300207"] = self.OnSubFinish300207,
        ["300208"] = self.OnSubFinish300208,
        ["300213"] = self.OnSubFinish300213,
        ["300209"] = self.OnSubFinish300209,
        ["300210"] = self.OnSubFinish300210,
        ["300211"] = self.OnSubFinish300211,
        ["300212"] = self.OnSubFinish300212
    }
end

function Quest3002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3002:Start()
    print("Start")
end

function Quest3002:OnDestroy()
    print("OnDestroy")
end

function Quest3002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3002:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest3002:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 300201 then
        actorUtils.FinishQuestID(false, 300213)
    elseif arg1 == 30021101 then
        self:GetQuestNpcActor(npcs.Npc1050Data.alias):SpawnAttach("Eff_Avatar_Boy_Bow_Tighnari_ElementalArt_Ball")
    elseif arg1 == 30021102 then
        self:GetQuestNpcActor(npcs.Npc1050Data.alias):UnSpawnAttach("Eff_Avatar_Boy_Bow_Tighnari_ElementalArt_Ball")
    end
end

function Quest3002:OnSubStart300201(arg1)
    print("OnSubStart300201")
    self:NpcCreateWithTrigger(npcs.Npc1050Data.id, 300201, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 2)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    self:NarratorOnlyTaskByData(datas.NarratorWithId300201)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300201(arg1)
    print("OnSubFinish300201")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3002:OnSubStart300202(arg1)
    print("OnSubStart300202")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q300202Trigger", "Actor/Gadget/Q300202Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300202_N1050").pos, sceneData:GetDummyPoint(3, "Q300202_N1050").rot, true, false, 3)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300202(arg1)
    print("OnSubFinish300202")
    self:ClearNarratorTask()
end

function Quest3002:OnSubStart300203(arg1)
    print("OnSubStart300203")
    self:NpcCreateWithTriggerBlack(npcs.Npc1050Data.id, 300203, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300203(arg1)
    print("OnSubFinish300203")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300202)
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3002:OnSubStart300204(arg1)
    print("OnSubStart300204")
    self:NpcCreateWithTriggerBlack(npcs.Npc1050Data.id, 300204, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300204(arg1)
    print("OnSubFinish300204")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3002:OnSubStart300205(arg1)
    print("OnSubStart300205")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300205(arg1)
    print("OnSubFinish300205")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300203)
end

function Quest3002:OnSubStart300206(arg1)
    print("OnSubStart300206")
    self:NpcCreateWithTriggerBlack(npcs.Npc1050Data.id, 300206, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300206(arg1)
    print("OnSubFinish300206")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3002:OnSubStart300207(arg1)
    print("OnSubStart300207")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    self:NpcCreateWithTrigger(npcs.Npc4301Data.id, 300207, 2)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300207(arg1)
    print("OnSubFinish300207")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4301Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4302Data.alias, 3)
end

function Quest3002:OnSubStart300208(arg1)
    print("OnSubStart300208")
    self:NpcCreateWithTriggerBlack(npcs.Npc1050Data.id, 300208, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300208(arg1)
    print("OnSubFinish300208")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300204)
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3002:OnSubStart300213(arg1)
    print("OnSubStart300213")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300213(arg1)
    print("OnSubFinish300213")
    self:ClearNarratorTask()
end

function Quest3002:OnSubStart300209(arg1)
    print("OnSubStart300209")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300209(arg1)
    print("OnSubFinish300209")
end

function Quest3002:OnSubStart300210(arg1)
    print("OnSubStart300210")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    self:CreateQuestNpcWithTrigger("Q300210CreateNPCwithTrigger", 300210, npcs.Npc1050Data.id, 1, 30)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300210(arg1)
    print("OnSubFinish300210")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3002:OnSubStart300211(arg1)
    print("OnSubStart300211")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    self:NpcCreateWithTriggerBlack(npcs.Npc4301Data.id, 300211, 2)
    self:GetQuestNpcActor(npcs.Npc1050Data.alias):UnSpawnAttach("Eff_Avatar_Boy_Bow_Tighnari_ElementalArt_Ball")
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300211(arg1)
    print("OnSubFinish300211")
    self:SafeDestroyQuestNpc(npcs.Npc4301Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12797Data.alias, 3)
end

function Quest3002:OnSubStart300212(arg1)
    print("OnSubStart300212")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q300212Trigger", "Actor/Gadget/Q300212Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300212_guide").pos, sceneData:GetDummyPoint(3, "Q300212_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q300213Trigger", "Actor/Gadget/Q300213Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300212_guide").pos, sceneData:GetDummyPoint(3, "Q300212_guide").rot, true, false, 3)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3002:OnSubFinish300212(arg1)
    print("OnSubFinish300212")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

return Quest3002
