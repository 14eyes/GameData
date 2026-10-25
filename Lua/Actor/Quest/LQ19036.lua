require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19036 = class("Quest19036", QuestActorProxy)
Quest19036.defaultAlias = "Quest19036"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19036:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1903601"] = self.OnSubStart1903601,
        ["1903606"] = self.OnSubStart1903606,
        ["1903602"] = self.OnSubStart1903602,
        ["1903603"] = self.OnSubStart1903603,
        ["1903604"] = self.OnSubStart1903604,
        ["1903607"] = self.OnSubStart1903607,
        ["1903605"] = self.OnSubStart1903605
    }
end

function Quest19036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1903601"] = self.OnSubFinish1903601,
        ["1903606"] = self.OnSubFinish1903606,
        ["1903602"] = self.OnSubFinish1903602,
        ["1903603"] = self.OnSubFinish1903603,
        ["1903604"] = self.OnSubFinish1903604,
        ["1903607"] = self.OnSubFinish1903607,
        ["1903605"] = self.OnSubFinish1903605
    }
end

function Quest19036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19036:Start()
    print("Start")
end

function Quest19036:OnDestroy()
    print("OnDestroy")
end

function Quest19036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19036:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3142Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19036Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19036Trigger1", 3, false)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19036:OnSubStart1903601(arg1)
    print("OnSubStart1903601")
    self:CreateQuestNpc(arg1, npcs.Npc3041Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3041Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = self:GetQuestNpcActor(npcs.Npc3042Data.alias)
    v:DoFreeStyle(1050, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
end

function Quest19036:OnSubFinish1903601(arg1)
    print("OnSubFinish1903601")
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc3042Data.alias):DisableInteeHeadCtrl(false)
end

function Quest19036:OnSubStart1903606(arg1)
    print("OnSubStart1903606")
    self:CreateQuestNpc(arg1, npcs.Npc3142Data.id, 0)
end

function Quest19036:OnSubFinish1903606(arg1)
    print("OnSubFinish1903606")
    self:DestroyQuestNpcActor(npcs.Npc3041Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
end

function Quest19036:OnSubStart1903602(arg1)
    print("OnSubStart1903602")
    self:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3041Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19036:OnSubFinish1903602(arg1)
    print("OnSubFinish1903602")
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 19036)
end

function Quest19036:OnSubStart1903603(arg1)
    print("OnSubStart1903603")
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19036:OnSubFinish1903603(arg1)
    print("OnSubFinish1903603")
    self:DestroyQuestNpcActor(npcs.Npc3142Data.alias, 3)
end

function Quest19036:OnSubStart1903604(arg1)
    print("OnSubStart1903604")
end

function Quest19036:OnSubFinish1903604(arg1)
    print("OnSubFinish1903604")
    self:DestroyQuestNpcActor(npcs.Npc3142Data.alias, 3)
end

function Quest19036:OnSubStart1903607(arg1)
    print("OnSubStart1903607")
    actorMgr:CreateActorWithPos("Q19036Trigger", "Actor/Gadget/Q19036Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1903605_N511").pos, sceneData:GetDummyPoint(3, "Q1903605_N511").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19036:OnSubFinish1903607(arg1)
    print("OnSubFinish1903607")
end

function Quest19036:OnSubStart1903605(arg1)
    print("OnSubStart1903605")
    self:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q19036Trigger1", "Actor/Gadget/Q19036Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1903605_N511").pos, sceneData:GetDummyPoint(3, "Q1903605_N511").rot, true, false, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc3041Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)
end

function Quest19036:OnSubFinish1903605(arg1)
    print("OnSubFinish1903605")
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3041Data.alias, 3)
    end, nil, nil, "", false, true)
end

return Quest19036
