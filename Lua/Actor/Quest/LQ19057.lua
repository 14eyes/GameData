require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19057 = class("Quest19057", QuestActorProxy)
Quest19057.defaultAlias = "Quest19057"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19057:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19057:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1905701"] = self.OnSubStart1905701,
        ["1905707"] = self.OnSubStart1905707,
        ["1905702"] = self.OnSubStart1905702,
        ["1905708"] = self.OnSubStart1905708,
        ["1905703"] = self.OnSubStart1905703,
        ["1905704"] = self.OnSubStart1905704,
        ["1905705"] = self.OnSubStart1905705,
        ["1905706"] = self.OnSubStart1905706
    }
end

function Quest19057:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1905701"] = self.OnSubFinish1905701,
        ["1905707"] = self.OnSubFinish1905707,
        ["1905702"] = self.OnSubFinish1905702,
        ["1905708"] = self.OnSubFinish1905708,
        ["1905703"] = self.OnSubFinish1905703,
        ["1905704"] = self.OnSubFinish1905704,
        ["1905705"] = self.OnSubFinish1905705,
        ["1905706"] = self.OnSubFinish1905706
    }
end

function Quest19057:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19057:Start()
    print("Start")
end

function Quest19057:OnDestroy()
    print("OnDestroy")
end

function Quest19057:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19057:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19057:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12552Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12553Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12549Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19057Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19057Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19057Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q19057Trigger3", 3, false)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19057:OnSubStart1905701(arg1)
    print("OnSubStart1905701")
    self:CreateQuestNpc(arg1, npcs.Npc3106Data.id, 0)
    actorMgr:CreateActorWithPos("Q19057Trigger", "Actor/Gadget/Q19057Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905701_N3002").pos, sceneData:GetDummyPoint(3, "Q1905701_N3002").rot, true, false, 3)
end

function Quest19057:OnSubFinish1905701(arg1)
    print("OnSubFinish1905701")
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 19057)
end

function Quest19057:OnSubStart1905707(arg1)
    print("OnSubStart1905707")
    actorMgr:GetActor("19057"):RequestCoopInteractionFromSubStartPoint(105901, 1905701)
end

function Quest19057:OnSubFinish1905707(arg1)
    print("OnSubFinish1905707")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19057:OnSubStart1905702(arg1)
    print("OnSubStart1905702")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12553Data.id, 0)
        actorMgr:GetActor("19057"):RequestCoopInteractionFromSubStartPoint(105901, 1905702)
    end)
end

function Quest19057:OnSubFinish1905702(arg1)
    print("OnSubFinish1905702")
    self:DestroyQuestNpcActor(npcs.Npc3106Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12552Data.alias, 3)
end

function Quest19057:OnSubStart1905708(arg1)
    print("OnSubStart1905708")
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12549Data.id, 0)
    actorMgr:CreateActorWithPos("Q19057Trigger1", "Actor/Gadget/Q19057Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905703_N1044").pos, sceneData:GetDummyPoint(3, "Q1905703_N1044").rot, true, false, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12549Data.alias)
    questNpcActor:DoFreeStyle(1060, true, nil, true, true, false, true)
    local v = self:GetQuestNpcActor(npcs.Npc1044Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest19057:OnSubFinish1905708(arg1)
    print("OnSubFinish1905708")
end

function Quest19057:OnSubStart1905703(arg1)
    print("OnSubStart1905703")
    actorMgr:CreateActorWithPos("Q19057Trigger3", "Actor/Gadget/Q19057Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905703_N1044").pos, sceneData:GetDummyPoint(3, "Q1905703_N1044").rot, true, false, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12549Data.alias)
    questNpcActor:DoFreeStyle(1060, true, nil, true, true, false, true)
    local v = self:GetQuestNpcActor(npcs.Npc1044Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest19057:OnSubFinish1905703(arg1)
    print("OnSubFinish1905703")
    self:DestroyQuestNpcActor(npcs.Npc12553Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12549Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1044Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc12549Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DisableInteeHeadCtrl(false)
end

function Quest19057:OnSubStart1905704(arg1)
    print("OnSubStart1905704")
end

function Quest19057:OnSubFinish1905704(arg1)
    print("OnSubFinish1905704")
end

function Quest19057:OnSubStart1905705(arg1)
    print("OnSubStart1905705")
    self:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12552Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12553Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3045Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc3045Data.alias):DoFreeStyle(5010, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1170, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12552Data.alias):DoFreeStyle(1170, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q19057Trigger2", "Actor/Gadget/Q19057Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905802_guide").pos, sceneData:GetDummyPoint(3, "Q1905802_guide").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest19057:OnSubFinish1905705(arg1)
    print("OnSubFinish1905705")
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1044Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12552Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12553Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3045Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12276Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12277Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12278Data.alias, 3)
end

function Quest19057:OnSubStart1905706(arg1)
    print("OnSubStart1905706")
end

function Quest19057:OnSubFinish1905706(arg1)
    print("OnSubFinish1905706")
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1044Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12552Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12553Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3045Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12276Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12277Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12278Data.alias, 3)
end

return Quest19057
