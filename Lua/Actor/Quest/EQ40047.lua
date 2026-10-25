require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40047 = class("Quest40047", QuestActorProxy)
Quest40047.defaultAlias = "Quest40047"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40047:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40047:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4004701"] = self.OnSubStart4004701,
        ["4004702"] = self.OnSubStart4004702,
        ["4004703"] = self.OnSubStart4004703,
        ["4004704"] = self.OnSubStart4004704,
        ["4004718"] = self.OnSubStart4004718,
        ["4004719"] = self.OnSubStart4004719,
        ["4004705"] = self.OnSubStart4004705,
        ["4004706"] = self.OnSubStart4004706,
        ["4004707"] = self.OnSubStart4004707,
        ["4004708"] = self.OnSubStart4004708,
        ["4004709"] = self.OnSubStart4004709,
        ["4004710"] = self.OnSubStart4004710,
        ["4004711"] = self.OnSubStart4004711,
        ["4004712"] = self.OnSubStart4004712,
        ["4004713"] = self.OnSubStart4004713,
        ["4004714"] = self.OnSubStart4004714,
        ["4004715"] = self.OnSubStart4004715,
        ["4004716"] = self.OnSubStart4004716,
        ["4004717"] = self.OnSubStart4004717
    }
end

function Quest40047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4004701"] = self.OnSubFinish4004701,
        ["4004702"] = self.OnSubFinish4004702,
        ["4004703"] = self.OnSubFinish4004703,
        ["4004704"] = self.OnSubFinish4004704,
        ["4004718"] = self.OnSubFinish4004718,
        ["4004719"] = self.OnSubFinish4004719,
        ["4004705"] = self.OnSubFinish4004705,
        ["4004706"] = self.OnSubFinish4004706,
        ["4004707"] = self.OnSubFinish4004707,
        ["4004708"] = self.OnSubFinish4004708,
        ["4004709"] = self.OnSubFinish4004709,
        ["4004710"] = self.OnSubFinish4004710,
        ["4004711"] = self.OnSubFinish4004711,
        ["4004712"] = self.OnSubFinish4004712,
        ["4004713"] = self.OnSubFinish4004713,
        ["4004714"] = self.OnSubFinish4004714,
        ["4004715"] = self.OnSubFinish4004715,
        ["4004716"] = self.OnSubFinish4004716,
        ["4004717"] = self.OnSubFinish4004717
    }
end

function Quest40047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40047:Start()
    print("Start")
end

function Quest40047:OnDestroy()
    print("OnDestroy")
end

function Quest40047:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ActionSafeCall(self.ShowActivityUI)
end

function Quest40047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40047:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3193Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30104Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30104Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.Npc30000Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.Npc1005Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.Npc30105Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.Npc30106Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.Npc30107Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.Npc30108Data.alias, 7)
    actorMgr:DestroyEntityActor("Q4004704Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004711Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004719Trigger", 3, false)
end

function Quest40047:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest40047:Funcshowbalck()
    print("Funcshowbalck")
    self:ShowBlackScreen(0.5, 1.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest40047:FuncTransmit()
    print("FuncTransmit")
    self:TransmitPlayerWithTextByQuestId(4004704, 1, datas.TextmapId, 2)
end

function Quest40047:ShowActivityUI()
    print("ShowActivityUI")
    actorUtils.ShowActivityPage(2011)
    self:CallDelay(1, self.FuncTutorialDialog)
end

function Quest40047:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ClearNarratorTask()
        self:StopNarrator()
    end
end

function Quest40047:FuncTutorialDialog()
    print("FuncTutorialDialog")
    self:ShowTutorialDialog(845)
end

function Quest40047:FunCreate4004715NPC()
    print("FunCreate4004715NPC")
    self:CreateQuestNpcById(4004715, npcs.Npc30000Data.id, 1)
    actorMgr:CreateActorWithPos("Q4004715Trigger", "Actor/Gadget/Q4004715Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004715_guide").pos, sceneData:GetDummyPoint(7, "Q4004715_guide").rot, true, false, 7)
end

function Quest40047:OnSubStart4004701(arg1)
    print("OnSubStart4004701")
    self.CreateQuestNpc(self, arg1, npcs.Npc30104Data.id, 2)
    self.CreateQuestNpcWithTrigger(self, "Q4004701Trigger", 4004701, 1037, 1, 10)
    self.GetQuestNpcActor(self, npcs.Npc1037Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    if self.GetQuestVar(self, 4004701, 4) == 0 then
        self.NarratorOnlyTaskByData(self, datas.NarratorWithId4004701, function()
            self:SetQuestVar(4004701, 4, 1)
        end)
    end
end

function Quest40047:OnSubFinish4004701(arg1)
    print("OnSubFinish4004701")
    self:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30104Data.alias, 3)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40047:OnSubStart4004702(arg1)
    print("OnSubStart4004702")
    self:CreateQuestNpcWithTrigger("Q4004702Trigger", 4004702, 3193, 2, 7)
end

function Quest40047:OnSubFinish4004702(arg1)
    print("OnSubFinish4004702")
    self:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
end

function Quest40047:OnSubStart4004703(arg1)
    print("OnSubStart4004703")
    self:CreateQuestNpc(arg1, npcs.Npc30104Data.id, 1)
end

function Quest40047:OnSubFinish4004703(arg1)
    print("OnSubFinish4004703")
    self:SafeDestroyQuestNpc(npcs.Npc3193Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc30104Data.alias)
end

function Quest40047:OnSubStart4004704(arg1)
    print("OnSubStart4004704")
    actorMgr:CreateActorWithPos("Q4004704Trigger", "Actor/Gadget/Q4004704Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004704_transmit").pos, sceneData:GetDummyPoint(7, "Q4004704_transmit").rot, true, false, 7)
    self:LevelLoadFinishSafeCall(self.FuncTransmit)
end

function Quest40047:OnSubFinish4004704(arg1)
    print("OnSubFinish4004704")
end

function Quest40047:OnSubStart4004718(arg1)
    print("OnSubStart4004718")
    self:CreateQuestNpc(arg1, npcs.Npc30104Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc30105Data.alias):DoFreeStyle(4130, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc30105Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc30106Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc30106Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc30107Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc30107Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc30108Data.id, 5)
end

function Quest40047:OnSubFinish4004718(arg1)
    print("OnSubFinish4004718")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc30104Data.alias)
end

function Quest40047:OnSubStart4004719(arg1)
    print("OnSubStart4004719")
    self:GetQuestNpcActor(npcs.Npc30105Data.alias):DoFreeStyle(4130, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30106Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30107Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc30000Data.id, 1)
    actorMgr:CreateActorWithPos("Q4004719Trigger", "Actor/Gadget/Q4004719Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004705_guide").pos, sceneData:GetDummyPoint(7, "Q4004705_guide").rot, true, false, 7)
end

function Quest40047:OnSubFinish4004719(arg1)
    print("OnSubFinish4004719")
    self:SafeDestroyQuestNpc(npcs.Npc30108Data.alias, 7)
end

function Quest40047:OnSubStart4004705(arg1)
    print("OnSubStart4004705")
    self:GetQuestNpcActor(npcs.Npc30105Data.alias):DoFreeStyle(4130, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30106Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30107Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q4004705Trigger", "Actor/Gadget/Q4004705Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004705_guide").pos, sceneData:GetDummyPoint(7, "Q4004705_guide").rot, true, false, 7)
end

function Quest40047:OnSubFinish4004705(arg1)
    print("OnSubFinish4004705")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40047:OnSubStart4004706(arg1)
    print("OnSubStart4004706")
end

function Quest40047:OnSubFinish4004706(arg1)
    print("OnSubFinish4004706")
end

function Quest40047:OnSubStart4004707(arg1)
    print("OnSubStart4004707")
end

function Quest40047:OnSubFinish4004707(arg1)
    print("OnSubFinish4004707")
end

function Quest40047:OnSubStart4004708(arg1)
    print("OnSubStart4004708")
end

function Quest40047:OnSubFinish4004708(arg1)
    print("OnSubFinish4004708")
end

function Quest40047:OnSubStart4004709(arg1)
    print("OnSubStart4004709")
end

function Quest40047:OnSubFinish4004709(arg1)
    print("OnSubFinish4004709")
end

function Quest40047:OnSubStart4004710(arg1)
    print("OnSubStart4004710")
    self:CreateQuestNpc(arg1, npcs.Npc30000Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc30105Data.alias):DoFreeStyle(4130, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30106Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30107Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc30175Data.id, 2)
end

function Quest40047:OnSubFinish4004710(arg1)
    print("OnSubFinish4004710")
    self:SafeDestroyQuestNpc(npcs.Npc30175Data.alias, 7)
    self:NarratorOnlyTaskByData(datas.NarratorWithId4004704, nil, 40047)
end

function Quest40047:OnSubStart4004711(arg1)
    print("OnSubStart4004711")
    self:GetQuestNpcActor(npcs.Npc30105Data.alias):DoFreeStyle(4130, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30106Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30107Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q4004711Trigger", "Actor/Gadget/Q4004711Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004711_guide").pos, sceneData:GetDummyPoint(7, "Q4004711_guide").rot, true, false, 7)
end

function Quest40047:OnSubFinish4004711(arg1)
    print("OnSubFinish4004711")
end

function Quest40047:OnSubStart4004712(arg1)
    print("OnSubStart4004712")
    self:GetQuestNpcActor(npcs.Npc30105Data.alias):DoFreeStyle(4130, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30106Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30107Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpcWithTriggerBlack("Q4004712Tigger", 4004712, 1005, 1, 5, 1)
end

function Quest40047:OnSubFinish4004712(arg1)
    print("OnSubFinish4004712")
    self:SafeDestroyQuestNpc(npcs.Npc30105Data.alias, 7)
    self:GetQuestNpcActor(npcs.Npc1005Data.alias):DestroyWithDisappear(false)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40047:OnSubStart4004713(arg1)
    print("OnSubStart4004713")
    self:CreateQuestNpc(arg1, npcs.Npc30106Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc30107Data.id, 2)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30107Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false)
    local v = self:GetQuestNpcActor(npcs.Npc30106Data.alias)
    v:DoFreeStyle(1190, true, nil, true, true, false)
    v:DisableInteeHeadCtrl(true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40047:OnSubFinish4004713(arg1)
    print("OnSubFinish4004713")
end

function Quest40047:OnSubStart4004714(arg1)
    print("OnSubStart4004714")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30106Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    local v = self:GetQuestNpcActor(npcs.Npc30107Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest40047:OnSubFinish4004714(arg1)
    print("OnSubFinish4004714")
    self:CallDelay(2, self.Funcshowbalck)
end

function Quest40047:OnSubStart4004715(arg1)
    print("OnSubStart4004715")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30106Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    local v = self:GetQuestNpcActor(npcs.Npc30107Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false)
    self:CallDelay(2, self.FunCreate4004715NPC)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest40047:OnSubFinish4004715(arg1)
    print("OnSubFinish4004715")
end

function Quest40047:OnSubStart4004716(arg1)
    print("OnSubStart4004716")
    self:CreateQuestNpc(arg1, npcs.Npc30000Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30106Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    local v = self:GetQuestNpcActor(npcs.Npc30107Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest40047:OnSubFinish4004716(arg1)
    print("OnSubFinish4004716")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4004703, nil, 40047)
end

function Quest40047:OnSubStart4004717(arg1)
    print("OnSubStart4004717")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30106Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    local v = self:GetQuestNpcActor(npcs.Npc30107Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest40047:OnSubFinish4004717(arg1)
    print("OnSubFinish4004717")
    self:NpcDestroyWithBlackscreen(7, npcs.Npc30000Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc30106Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.Npc30107Data.alias, 7)
end

return Quest40047
