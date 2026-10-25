require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70527 = class("Quest70527", QuestActorProxy)
Quest70527.defaultAlias = "Quest70527"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70527:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70527:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7052701"] = self.OnSubStart7052701, ["7052702"] = self.OnSubStart7052702}
end

function Quest70527:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7052701"] = self.OnSubFinish7052701, ["7052702"] = self.OnSubFinish7052702}
end

function Quest70527:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70527:Start()
    print("Start")
end

function Quest70527:OnDestroy()
    print("OnDestroy")
end

function Quest70527:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70527:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70527:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30159Data.alias, 3)
    actorMgr:DestroyEntityActor("Q70527Trigger", 3, false)
end

function Quest70527:OnSubStart7052701(arg1)
    print("OnSubStart7052701")
    actorMgr:CreateActorWithPos("Q70527Trigger", "Actor/Gadget/Q70527Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7052701_N1419").pos, sceneData:GetDummyPoint(3, "Q7052701_N1419").rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1419Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30159Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1419Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30159Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest70527:OnSubFinish7052701(arg1)
    print("OnSubFinish7052701")
end

function Quest70527:OnSubStart7052702(arg1)
    print("OnSubStart7052702")
    this:GetQuestNpcActor(npcs.Npc1419Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30159Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest70527:OnSubFinish7052702(arg1)
    print("OnSubFinish7052702")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1419Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc30159Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1419Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30159Data.alias, 3)
        this:ShowTutorialDialog(1136)
    end)
end

return Quest70527
