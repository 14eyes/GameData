require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40097 = class("Quest40097", QuestActorProxy)
Quest40097.defaultAlias = "Quest40097"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40097:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40097:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4009701"] = self.OnSubStart4009701,
        ["4009708"] = self.OnSubStart4009708,
        ["4009709"] = self.OnSubStart4009709,
        ["4009702"] = self.OnSubStart4009702,
        ["4009703"] = self.OnSubStart4009703,
        ["4009704"] = self.OnSubStart4009704,
        ["4009711"] = self.OnSubStart4009711,
        ["4009705"] = self.OnSubStart4009705,
        ["4009710"] = self.OnSubStart4009710,
        ["4009712"] = self.OnSubStart4009712,
        ["4009706"] = self.OnSubStart4009706,
        ["4009707"] = self.OnSubStart4009707
    }
end

function Quest40097:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4009701"] = self.OnSubFinish4009701,
        ["4009708"] = self.OnSubFinish4009708,
        ["4009709"] = self.OnSubFinish4009709,
        ["4009702"] = self.OnSubFinish4009702,
        ["4009703"] = self.OnSubFinish4009703,
        ["4009704"] = self.OnSubFinish4009704,
        ["4009711"] = self.OnSubFinish4009711,
        ["4009705"] = self.OnSubFinish4009705,
        ["4009710"] = self.OnSubFinish4009710,
        ["4009712"] = self.OnSubFinish4009712,
        ["4009706"] = self.OnSubFinish4009706,
        ["4009707"] = self.OnSubFinish4009707
    }
end

function Quest40097:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40097:Start()
    print("Start")
end

function Quest40097:OnDestroy()
    print("OnDestroy")
end

function Quest40097:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40097:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40097:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1435Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.NPC1512Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4009701N1019Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009702N1058Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009704N1019Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009706N1001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009707N1019Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009709trigger", 3, false)
end

function Quest40097:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest40097:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest40097:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40097:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest40097:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4009711 then
        actorUtils.FinishQuestID(false, 4009711)
    elseif arg1 == 4009712 then
        actorUtils.FinishQuestID(false, 4009712)
    end
end

function Quest40097:OnSubStart4009701(arg1)
    print("OnSubStart4009701")
    this:NpcCreateWithTriggerBlack(npcs.Npc1019Data.id, 4009701, 0)
end

function Quest40097:OnSubFinish4009701(arg1)
    print("OnSubFinish4009701")
    this:ClearNarratorTask()
end

function Quest40097:OnSubStart4009708(arg1)
    print("OnSubStart4009708")
end

function Quest40097:OnSubFinish4009708(arg1)
    print("OnSubFinish4009708")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40097)
    end)
end

function Quest40097:OnSubStart4009709(arg1)
    print("OnSubStart4009709")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1435Data.id, 0)
        this:CreateQuestNpcWithTrigger("Q4009709trigger", 4009709, npcs.Npc1051Data.id, 0, 8)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1019Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1435Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40097:OnSubFinish4009709(arg1)
    print("OnSubFinish4009709")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1051Data.alias)
    this:NpcDestroy(npcs.Npc1019Data.alias, 3)
    this:NpcDestroy(npcs.Npc1435Data.alias, 3)
end

function Quest40097:OnSubStart4009702(arg1)
    print("OnSubStart4009702")
    this:NpcCreateWithTriggerBlack(npcs.Npc1058Data.id, 4009702, 0)
end

function Quest40097:OnSubFinish4009702(arg1)
    print("OnSubFinish4009702")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1058Data.alias)
end

function Quest40097:OnSubStart4009703(arg1)
    print("OnSubStart4009703")
    this:CreateQuestNpc(arg1, npcs.Npc1419Data.id, 0)
end

function Quest40097:OnSubFinish4009703(arg1)
    print("OnSubFinish4009703")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1419Data.alias)
end

function Quest40097:OnSubStart4009704(arg1)
    print("OnSubStart4009704")
    this:NpcCreateWithTrigger(npcs.Npc1019Data.id, 4009704, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1018Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1019Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest40097:OnSubFinish4009704(arg1)
    print("OnSubFinish4009704")
end

function Quest40097:OnSubStart4009711(arg1)
    print("OnSubStart4009711")
end

function Quest40097:OnSubFinish4009711(arg1)
    print("OnSubFinish4009711")
end

function Quest40097:OnSubStart4009705(arg1)
    print("OnSubStart4009705")
    this:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 0)
end

function Quest40097:OnSubFinish4009705(arg1)
    print("OnSubFinish4009705")
    this:NpcDestroy(npcs.Npc1019Data.alias, 3)
    this:NpcDestroy(npcs.Npc1050Data.alias, 3)
    this:NpcDestroy(npcs.Npc1058Data.alias, 3)
    this:NpcDestroy(npcs.Npc1051Data.alias, 3)
    this:NpcDestroy(npcs.Npc1018Data.alias, 3)
end

function Quest40097:OnSubStart4009710(arg1)
    print("OnSubStart4009710")
end

function Quest40097:OnSubFinish4009710(arg1)
    print("OnSubFinish4009710")
end

function Quest40097:OnSubStart4009712(arg1)
    print("OnSubStart4009712")
end

function Quest40097:OnSubFinish4009712(arg1)
    print("OnSubFinish4009712")
end

function Quest40097:OnSubStart4009706(arg1)
    print("OnSubStart4009706")
    this:NpcCreateWithTrigger(npcs.WendyData.id, 4009706, 0)
    this:GetQuestNpcActor(npcs.WendyData.alias):SitOnChair(0)
end

function Quest40097:OnSubFinish4009706(arg1)
    print("OnSubFinish4009706")
end

function Quest40097:OnSubStart4009707(arg1)
    print("OnSubStart4009707")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.WendyData.id, 0)
        this:NpcCreateWithTrigger(npcs.Npc1019Data.id, 4009707, 0)
        this:GetQuestNpcActor(npcs.WendyData.alias):SitOnChair(0)
    end)
end

function Quest40097:OnSubFinish4009707(arg1)
    print("OnSubFinish4009707")
    this:NpcDestroy(npcs.WendyData.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1019Data.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:CallDelay(5, function(arg1)
            actorUtils.ShowActivityPage(2020)
        end)
    end)
end

return Quest40097
