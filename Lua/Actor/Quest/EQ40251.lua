require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40251 = class("Quest40251", QuestActorProxy)
Quest40251.defaultAlias = "Quest40251"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40251:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40251:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4025101"] = self.OnSubStart4025101,
        ["4025102"] = self.OnSubStart4025102,
        ["4025117"] = self.OnSubStart4025117,
        ["4025103"] = self.OnSubStart4025103,
        ["4025127"] = self.OnSubStart4025127,
        ["4025126"] = self.OnSubStart4025126,
        ["4025104"] = self.OnSubStart4025104,
        ["4025111"] = self.OnSubStart4025111,
        ["4025130"] = self.OnSubStart4025130,
        ["4025128"] = self.OnSubStart4025128,
        ["4025112"] = self.OnSubStart4025112,
        ["4025123"] = self.OnSubStart4025123,
        ["4025113"] = self.OnSubStart4025113,
        ["4025114"] = self.OnSubStart4025114,
        ["4025131"] = self.OnSubStart4025131,
        ["4025129"] = self.OnSubStart4025129,
        ["4025115"] = self.OnSubStart4025115,
        ["4025133"] = self.OnSubStart4025133,
        ["4025125"] = self.OnSubStart4025125,
        ["4025124"] = self.OnSubStart4025124,
        ["4025116"] = self.OnSubStart4025116,
        ["4025105"] = self.OnSubStart4025105,
        ["4025132"] = self.OnSubStart4025132,
        ["4025134"] = self.OnSubStart4025134,
        ["4025106"] = self.OnSubStart4025106,
        ["4025107"] = self.OnSubStart4025107,
        ["4025135"] = self.OnSubStart4025135,
        ["4025118"] = self.OnSubStart4025118,
        ["4025119"] = self.OnSubStart4025119,
        ["4025120"] = self.OnSubStart4025120,
        ["4025121"] = self.OnSubStart4025121,
        ["4025122"] = self.OnSubStart4025122,
        ["4025108"] = self.OnSubStart4025108,
        ["4025110"] = self.OnSubStart4025110,
        ["4025109"] = self.OnSubStart4025109
    }
end

function Quest40251:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4025101"] = self.OnSubFinish4025101,
        ["4025102"] = self.OnSubFinish4025102,
        ["4025117"] = self.OnSubFinish4025117,
        ["4025103"] = self.OnSubFinish4025103,
        ["4025127"] = self.OnSubFinish4025127,
        ["4025126"] = self.OnSubFinish4025126,
        ["4025104"] = self.OnSubFinish4025104,
        ["4025111"] = self.OnSubFinish4025111,
        ["4025130"] = self.OnSubFinish4025130,
        ["4025128"] = self.OnSubFinish4025128,
        ["4025112"] = self.OnSubFinish4025112,
        ["4025123"] = self.OnSubFinish4025123,
        ["4025113"] = self.OnSubFinish4025113,
        ["4025114"] = self.OnSubFinish4025114,
        ["4025131"] = self.OnSubFinish4025131,
        ["4025129"] = self.OnSubFinish4025129,
        ["4025115"] = self.OnSubFinish4025115,
        ["4025133"] = self.OnSubFinish4025133,
        ["4025125"] = self.OnSubFinish4025125,
        ["4025124"] = self.OnSubFinish4025124,
        ["4025116"] = self.OnSubFinish4025116,
        ["4025105"] = self.OnSubFinish4025105,
        ["4025132"] = self.OnSubFinish4025132,
        ["4025134"] = self.OnSubFinish4025134,
        ["4025106"] = self.OnSubFinish4025106,
        ["4025107"] = self.OnSubFinish4025107,
        ["4025135"] = self.OnSubFinish4025135,
        ["4025118"] = self.OnSubFinish4025118,
        ["4025119"] = self.OnSubFinish4025119,
        ["4025120"] = self.OnSubFinish4025120,
        ["4025121"] = self.OnSubFinish4025121,
        ["4025122"] = self.OnSubFinish4025122,
        ["4025108"] = self.OnSubFinish4025108,
        ["4025110"] = self.OnSubFinish4025110,
        ["4025109"] = self.OnSubFinish4025109
    }
end

function Quest40251:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4025126"] = self.OnSubFailed4025126,
        ["4025104"] = self.OnSubFailed4025104,
        ["4025111"] = self.OnSubFailed4025111,
        ["4025130"] = self.OnSubFailed4025130,
        ["4025112"] = self.OnSubFailed4025112,
        ["4025123"] = self.OnSubFailed4025123,
        ["4025113"] = self.OnSubFailed4025113,
        ["4025114"] = self.OnSubFailed4025114,
        ["4025131"] = self.OnSubFailed4025131,
        ["4025115"] = self.OnSubFailed4025115,
        ["4025133"] = self.OnSubFailed4025133,
        ["4025124"] = self.OnSubFailed4025124,
        ["4025116"] = self.OnSubFailed4025116,
        ["4025105"] = self.OnSubFailed4025105,
        ["4025132"] = self.OnSubFailed4025132,
        ["4025134"] = self.OnSubFailed4025134,
        ["4025118"] = self.OnSubFailed4025118,
        ["4025119"] = self.OnSubFailed4025119,
        ["4025120"] = self.OnSubFailed4025120,
        ["4025121"] = self.OnSubFailed4025121
    }
end

function Quest40251:Start()
    print("Start")
end

function Quest40251:OnDestroy()
    print("OnDestroy")
end

function Quest40251:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40251:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40251:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4025102N1093Trigger")
    this:DestroyNpcTrigger("Q4025107N1083Trigger")
    this:DestroyNpcTrigger("Q4025108N1093Trigger")
    this:DestroyNpcTrigger("Q4025117N1021Trigger")
    this:DestroyNpcTrigger("Q4025118N10232Trigger")
    this:DestroyNpcTrigger("Q4025119N10232Trigger")
    this:DestroyNpcTrigger("Q4025120N10232Trigger")
    this:DestroyNpcTrigger("Q4025121N10232Trigger")
    this:DestroyNpcTrigger("Q4025126N1093Trigger")
    this:DestroyNpcTrigger("Q4025132N17259Trigger")
    this:DestroyNpcTrigger("Q4025131N17259Trigger")
    this:ActorDestroy("Q4025106Trigger", 40251)
    this:ActorDestroy("Q4025117TriggerLJMtalk", 40251)
    this:ActorDestroy("Q4025122Trigger", 40251)
    this:ActorDestroy("Q4025123Trigger", 40251)
    this:ActorDestroy("Q4025130Trigger_1", 40251)
    this:ActorDestroy("Q4025133Trigger", 40251)
    this:ActorDestroy("Q4025135Trigger", 40251)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1323.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10232.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10284.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20028.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10232.alias, 20380)
    this:SafeDestroyQuestNpc(npcs.Npc17259.alias, 20379)
    this:SafeDestroyQuestNpc(npcs.Npc1021.alias, 20379)
    this:SafeDestroyQuestNpc(npcs.Npc1041.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17131.alias, 3)
    this:BanCrowdNpc(3115, 6, datas.InstanceIDList_1, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 20379)
    this:SafeDestroyQuestNpc(npcs.Npc1041.alias, 20379)
    this:SafeDestroyQuestNpc(npcs.Npc10045.alias, 20379)
    this:SafeDestroyQuestNpc(npcs.Npc17131.alias, 20379)
    this:CancelStoryByQuest(134025104)
    this:CancelStoryByQuest(134025112)
    this:CancelStoryByQuest(134025125)
    this:RecycleAllRes()
end

function Quest40251:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4025106Trigger", 40251)
    this:ActorDestroy("Q4025117TriggerLJMtalk", 40251)
    this:ActorDestroy("Q4025122Trigger", 40251)
    this:ActorDestroy("Q4025123Trigger", 40251)
    this:ActorDestroy("Q4025130Trigger_1", 40251)
    this:ActorDestroy("Q4025133Trigger", 40251)
    this:ActorDestroy("Q4025135Trigger", 40251)
    this:BanCrowdNpc(3115, 6, datas.InstanceIDList_1, false, true)
end

function Quest40251:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest40251:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40251:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40251:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40251:OnSubStart4025101(arg1)
    print("OnSubStart4025101")
end

function Quest40251:OnSubFinish4025101(arg1)
    print("OnSubFinish4025101")
    this:QuestNarratorTask(datas.NarratorWithId_4025101, nil)
    this:CancelStoryByQuest(134025007)
    this:CancelStoryByQuest(134025009)
    this:CancelStoryByQuest(134025008)
    this:CancelStoryByQuest(134025010)
    this:CancelStoryByQuest(134025012)
end

function Quest40251:OnSubStart4025102(arg1)
    print("OnSubStart4025102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1093.id, 0, 10, 4025102)
    this:BanCrowdNpc(3115, 6, datas.InstanceIDList_1, true, true)
end

function Quest40251:OnSubFinish4025102(arg1)
    print("OnSubFinish4025102")
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
    this:BanCrowdNpc(3115, 6, datas.InstanceIDList_1, false, true)
end

function Quest40251:OnSubStart4025117(arg1)
    print("OnSubStart4025117")
    this:NpcCreateWithNpcTrigger(npcs.Npc1021.id, 0, 12, 4025117)
    this:CreateQuestNpc(arg1, npcs.Npc1041.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10045.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17131.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4025117TriggerLJMtalk", "Actor/Gadget/Q4025117TriggerLJMtalk", 70900002, 0, points._Q4025117TriggerLJMtalkPoint_.pos, points._Q4025117TriggerLJMtalkPoint_.rot, true, false, 3, nil, 0, 40251)
end

function Quest40251:OnSubFinish4025117(arg1)
    print("OnSubFinish4025117")
    this:ActorDestroy("Q4025117TriggerLJMtalk", 40251)
end

function Quest40251:OnSubStart4025103(arg1)
    print("OnSubStart4025103")
    this:CreateQuestNpc(arg1, npcs.Npc1021.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1041.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1041.alias, 40251):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc10045.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10045.alias, 40251):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc10045.alias, 40251):DisableInteeHeadCtrl(true)
end

function Quest40251:OnSubFinish4025103(arg1)
    print("OnSubFinish4025103")
    this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2188, dungeonId = 1347, questId = 4025103, questPointCfgId = 1}, datas.__EmbedClientConfig_16, nil, nil)
end

function Quest40251:OnSubStart4025127(arg1)
    print("OnSubStart4025127")
end

function Quest40251:OnSubFinish4025127(arg1)
    print("OnSubFinish4025127")
    this:ShowBlackScreenWithDialogText(0, 2, 0.5, nil, nil, nil, 0, false, true)
end

function Quest40251:OnSubStart4025126(arg1)
    print("OnSubStart4025126")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4025126, 0, 15, 1, npcs.Npc1093.id)
end

function Quest40251:OnSubFinish4025126(arg1)
    print("OnSubFinish4025126")
end

function Quest40251:OnSubFailed4025126(arg1)
    print("OnSubFailed4025126")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025104(arg1)
    print("OnSubStart4025104")
    this:DeployStoryByQuest(134025104)
end

function Quest40251:OnSubFinish4025104(arg1)
    print("OnSubFinish4025104")
end

function Quest40251:OnSubFailed4025104(arg1)
    print("OnSubFailed4025104")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025111(arg1)
    print("OnSubStart4025111")
    this:DeployStoryByQuest(134025104)
end

function Quest40251:OnSubFinish4025111(arg1)
    print("OnSubFinish4025111")
end

function Quest40251:OnSubFailed4025111(arg1)
    print("OnSubFailed4025111")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025130(arg1)
    print("OnSubStart4025130")
    this:CreateQuestNpc(arg1, npcs.Npc17259.id, 0, false, 0)
    this:DeployStoryByQuest(134025104)
    actorMgr:CreateActorWithPos("Q4025130Trigger_1", "Actor/Gadget/Q4025130Trigger_1", 70900002, 0, points._Q4025130Trigger_1Point_.pos, points._Q4025130Trigger_1Point_.rot, true, false, 20379, nil, 0, 40251)
end

function Quest40251:OnSubFinish4025130(arg1)
    print("OnSubFinish4025130")
    this:NpcDestroyImmediately(20379, npcs.Npc17259.alias)
    this:CancelAllStory()
end

function Quest40251:OnSubFailed4025130(arg1)
    print("OnSubFailed4025130")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025128(arg1)
    print("OnSubStart4025128")
end

function Quest40251:OnSubFinish4025128(arg1)
    print("OnSubFinish4025128")
end

function Quest40251:OnSubStart4025112(arg1)
    print("OnSubStart4025112")
    this:CreateQuestNpc(arg1, npcs.Npc1093.id, 0, false, 0)
    this:DeployStoryByQuest(134025112)
end

function Quest40251:OnSubFinish4025112(arg1)
    print("OnSubFinish4025112")
end

function Quest40251:OnSubFailed4025112(arg1)
    print("OnSubFailed4025112")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025123(arg1)
    print("OnSubStart4025123")
    actorMgr:CreateActorWithPos("Q4025123Trigger", "Actor/Gadget/Q4025123Trigger", 70900002, 0, points._Q4025123TriggerPoint_.pos, points._Q4025123TriggerPoint_.rot, true, false, 20379, nil, 0, 40251)
    this:DeployStoryByQuest(134025112)
end

function Quest40251:OnSubFinish4025123(arg1)
    print("OnSubFinish4025123")
    this:QuestNarratorTask(datas.NarratorWithId_4025103, nil)
    this:CancelAllStory()
end

function Quest40251:OnSubFailed4025123(arg1)
    print("OnSubFailed4025123")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025113(arg1)
    print("OnSubStart4025113")
end

function Quest40251:OnSubFinish4025113(arg1)
    print("OnSubFinish4025113")
end

function Quest40251:OnSubFailed4025113(arg1)
    print("OnSubFailed4025113")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025114(arg1)
    print("OnSubStart4025114")
end

function Quest40251:OnSubFinish4025114(arg1)
    print("OnSubFinish4025114")
end

function Quest40251:OnSubFailed4025114(arg1)
    print("OnSubFailed4025114")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025131(arg1)
    print("OnSubStart4025131")
    this:NpcCreateWithNpcTrigger(npcs.Npc17259.id, 0, 20, 4025131)
end

function Quest40251:OnSubFinish4025131(arg1)
    print("OnSubFinish4025131")
    this:NpcDestroyImmediately(20379, npcs.Npc17259.alias)
    this:CancelAllStory()
end

function Quest40251:OnSubFailed4025131(arg1)
    print("OnSubFailed4025131")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025129(arg1)
    print("OnSubStart4025129")
end

function Quest40251:OnSubFinish4025129(arg1)
    print("OnSubFinish4025129")
end

function Quest40251:OnSubStart4025115(arg1)
    print("OnSubStart4025115")
    this:DeployStoryByQuest(134025125)
end

function Quest40251:OnSubFinish4025115(arg1)
    print("OnSubFinish4025115")
end

function Quest40251:OnSubFailed4025115(arg1)
    print("OnSubFailed4025115")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025133(arg1)
    print("OnSubStart4025133")
    actorMgr:CreateActorWithPos("Q4025133Trigger", "Actor/Gadget/Q4025133Trigger", 70900002, 0, points._Q4025133TriggerPoint_.pos, points._Q4025133TriggerPoint_.rot, true, false, 20379, nil, 0, 40251)
    this:DeployStoryByQuest(134025125)
end

function Quest40251:OnSubFinish4025133(arg1)
    print("OnSubFinish4025133")
    actorUtils.ShowReminder(1005050015)
end

function Quest40251:OnSubFailed4025133(arg1)
    print("OnSubFailed4025133")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025125(arg1)
    print("OnSubStart4025125")
    this:DeployStoryByQuest(134025125)
end

function Quest40251:OnSubFinish4025125(arg1)
    print("OnSubFinish4025125")
    actorUtils.ShowReminder(1005050017)
end

function Quest40251:OnSubStart4025124(arg1)
    print("OnSubStart4025124")
    this:CallOnElemViewOpenInSpecificArea("ElementView40251", 20379, {x = 1873.971, y = 280.1925, z = 1491.569}, 20, function(arg1)
        actorUtils.FinishQuestID(false, 4025124)
    end)
end

function Quest40251:OnSubFinish4025124(arg1)
    print("OnSubFinish4025124")
    this:UnCallOnElemViewOpenInSpecificArea("ElementView40251")
end

function Quest40251:OnSubFailed4025124(arg1)
    print("OnSubFailed4025124")
    this:UnCallOnElemViewOpenInSpecificArea("ElementView40251")
end

function Quest40251:OnSubStart4025116(arg1)
    print("OnSubStart4025116")
    this:DeployStoryByQuest(134025125)
end

function Quest40251:OnSubFinish4025116(arg1)
    print("OnSubFinish4025116")
    actorUtils.ShowReminder(1005050017)
end

function Quest40251:OnSubFailed4025116(arg1)
    print("OnSubFailed4025116")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025105(arg1)
    print("OnSubStart4025105")
    this:DeployStoryByQuest(134025125)
end

function Quest40251:OnSubFinish4025105(arg1)
    print("OnSubFinish4025105")
end

function Quest40251:OnSubFailed4025105(arg1)
    print("OnSubFailed4025105")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025132(arg1)
    print("OnSubStart4025132")
    this:NpcCreateWithNpcTrigger(npcs.Npc17259.id, 0, 20, 4025132)
    this:DeployStoryByQuest(134025125)
end

function Quest40251:OnSubFinish4025132(arg1)
    print("OnSubFinish4025132")
    this:NpcDestroyImmediately(20379, npcs.Npc17259.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:CancelAllStory()
end

function Quest40251:OnSubFailed4025132(arg1)
    print("OnSubFailed4025132")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025134(arg1)
    print("OnSubStart4025134")
    this:CreateQuestNpc(arg1, npcs.Npc1021.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1041.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10045.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17131.id, 0, false, 0)
end

function Quest40251:OnSubFinish4025134(arg1)
    print("OnSubFinish4025134")
end

function Quest40251:OnSubFailed4025134(arg1)
    print("OnSubFailed4025134")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025106(arg1)
    print("OnSubStart4025106")
    this:CreateQuestNpc(arg1, npcs.Npc17131.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10045.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1041.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1021.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4025106Trigger", "Actor/Gadget/Q4025106Trigger", 70900002, 0, points._Q4025106TriggerPoint_.pos, points._Q4025106TriggerPoint_.rot, true, false, 3, nil, 0, 40251)
end

function Quest40251:OnSubFinish4025106(arg1)
    print("OnSubFinish4025106")
end

function Quest40251:OnSubStart4025107(arg1)
    print("OnSubStart4025107")
    this:NpcCreateWithNpcTrigger(npcs.Npc1083.id, 0, 15, 4025107)
    this:CreateQuestNpc(arg1, npcs.Npc1323.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2093.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10232.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10284.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20028.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1021.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1021.alias, 40251):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1041.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10045.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10045.alias, 40251):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17131.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1093.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1083.alias, 40251):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc10232.alias, 40251):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1323.alias, 40251):SitOnChair(0, true)
    if sceneData.currSceneID == 20380 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitDataZL, nil, nil, nil)
    end
end

function Quest40251:OnSubFinish4025107(arg1)
    print("OnSubFinish4025107")
end

function Quest40251:OnSubStart4025135(arg1)
    print("OnSubStart4025135")
    actorMgr:CreateActorWithPos("Q4025135Trigger", "Actor/Gadget/Q4025135Trigger", 70900002, 0, points._Q4025135TriggerPoint_.pos, points._Q4025135TriggerPoint_.rot, true, false, 3, nil, 0, 40251)
end

function Quest40251:OnSubFinish4025135(arg1)
    print("OnSubFinish4025135")
end

function Quest40251:OnSubStart4025118(arg1)
    print("OnSubStart4025118")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4025118, 0, 15, 2, npcs.Npc10232.id)
end

function Quest40251:OnSubFinish4025118(arg1)
    print("OnSubFinish4025118")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataZL, nil, nil, nil)
end

function Quest40251:OnSubFailed4025118(arg1)
    print("OnSubFailed4025118")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025119(arg1)
    print("OnSubStart4025119")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4025119, 0, 15, 2, npcs.Npc10232.id)
end

function Quest40251:OnSubFinish4025119(arg1)
    print("OnSubFinish4025119")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataZL, nil, nil, nil)
end

function Quest40251:OnSubFailed4025119(arg1)
    print("OnSubFailed4025119")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025120(arg1)
    print("OnSubStart4025120")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4025120, 0, 15, 2, npcs.Npc10232.id)
end

function Quest40251:OnSubFinish4025120(arg1)
    print("OnSubFinish4025120")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataZL, nil, nil, nil)
end

function Quest40251:OnSubFailed4025120(arg1)
    print("OnSubFailed4025120")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025121(arg1)
    print("OnSubStart4025121")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4025121, 0, 15, 2, npcs.Npc10232.id)
end

function Quest40251:OnSubFinish4025121(arg1)
    print("OnSubFinish4025121")
    this:NpcDestroyImmediately(3, npcs.Npc1021.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1041.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10045.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17131.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataZL, nil, nil, nil)
end

function Quest40251:OnSubFailed4025121(arg1)
    print("OnSubFailed4025121")
    this:RecycleAllRes()
end

function Quest40251:OnSubStart4025122(arg1)
    print("OnSubStart4025122")
    this:CreateQuestNpc(arg1, npcs.Npc1323.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1083.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2093.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10232.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10284.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20028.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4025122Trigger", "Actor/Gadget/Q4025122Trigger", 70900002, 0, points._Q4025122TriggerPoint_.pos, points._Q4025122TriggerPoint_.rot, true, false, 3, nil, 0, 40251)
end

function Quest40251:OnSubFinish4025122(arg1)
    print("OnSubFinish4025122")
end

function Quest40251:OnSubStart4025108(arg1)
    print("OnSubStart4025108")
    this:CreateQuestNpc(arg1, npcs.Npc1021.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1021.alias, 40251):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1083.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1083.alias, 40251):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1323.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1323.alias, 40251):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc2093.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2093.alias, 40251):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc10232.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10232.alias, 40251):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc10284.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10284.alias, 40251):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc20028.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc20028.alias, 40251):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1093.id, 0, 15, 4025108)
    this:GetQuestNpcActor(npcs.Npc1093.alias, 40251):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc10045.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1041.id, 0, false, 0)
end

function Quest40251:OnSubFinish4025108(arg1)
    print("OnSubFinish4025108")
    this:NpcDestroyImmediately(3, npcs.Npc1021.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1083.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2093.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10232.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10284.alias)
    this:NpcDestroyImmediately(3, npcs.Npc20028.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10045.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1041.alias)
end

function Quest40251:OnSubStart4025110(arg1)
    print("OnSubStart4025110")
    this:CreateQuestNpc(arg1, npcs.Npc17131.id, 0, false, 0)
end

function Quest40251:OnSubFinish4025110(arg1)
    print("OnSubFinish4025110")
    this:NpcDestroyImmediately(3, npcs.Npc17131.alias)
end

function Quest40251:OnSubStart4025109(arg1)
    print("OnSubStart4025109")
end

function Quest40251:OnSubFinish4025109(arg1)
    print("OnSubFinish4025109")
end

return Quest40251
