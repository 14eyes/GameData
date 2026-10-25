require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7011 = class("Quest7011", QuestActorProxy)
Quest7011.defaultAlias = "Quest7011"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7011:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["701150"] = self.OnSubStart701150,
        ["701151"] = self.OnSubStart701151,
        ["701101"] = self.OnSubStart701101,
        ["701119"] = self.OnSubStart701119,
        ["701152"] = self.OnSubStart701152,
        ["701102"] = self.OnSubStart701102,
        ["701103"] = self.OnSubStart701103,
        ["701104"] = self.OnSubStart701104,
        ["701139"] = self.OnSubStart701139,
        ["701105"] = self.OnSubStart701105,
        ["701106"] = self.OnSubStart701106,
        ["701138"] = self.OnSubStart701138,
        ["701107"] = self.OnSubStart701107,
        ["701108"] = self.OnSubStart701108,
        ["701109"] = self.OnSubStart701109,
        ["701110"] = self.OnSubStart701110,
        ["701111"] = self.OnSubStart701111,
        ["701135"] = self.OnSubStart701135,
        ["701136"] = self.OnSubStart701136,
        ["701112"] = self.OnSubStart701112,
        ["701133"] = self.OnSubStart701133,
        ["701113"] = self.OnSubStart701113,
        ["701114"] = self.OnSubStart701114,
        ["701115"] = self.OnSubStart701115,
        ["701116"] = self.OnSubStart701116,
        ["701117"] = self.OnSubStart701117,
        ["701118"] = self.OnSubStart701118,
        ["701134"] = self.OnSubStart701134,
        ["701120"] = self.OnSubStart701120,
        ["701121"] = self.OnSubStart701121,
        ["701122"] = self.OnSubStart701122,
        ["701123"] = self.OnSubStart701123,
        ["701124"] = self.OnSubStart701124,
        ["701132"] = self.OnSubStart701132,
        ["701125"] = self.OnSubStart701125,
        ["701131"] = self.OnSubStart701131,
        ["701129"] = self.OnSubStart701129,
        ["701130"] = self.OnSubStart701130,
        ["701137"] = self.OnSubStart701137,
        ["701126"] = self.OnSubStart701126,
        ["701128"] = self.OnSubStart701128,
        ["701127"] = self.OnSubStart701127
    }
end

function Quest7011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["701150"] = self.OnSubFinish701150,
        ["701151"] = self.OnSubFinish701151,
        ["701101"] = self.OnSubFinish701101,
        ["701119"] = self.OnSubFinish701119,
        ["701152"] = self.OnSubFinish701152,
        ["701102"] = self.OnSubFinish701102,
        ["701103"] = self.OnSubFinish701103,
        ["701104"] = self.OnSubFinish701104,
        ["701139"] = self.OnSubFinish701139,
        ["701105"] = self.OnSubFinish701105,
        ["701106"] = self.OnSubFinish701106,
        ["701138"] = self.OnSubFinish701138,
        ["701107"] = self.OnSubFinish701107,
        ["701108"] = self.OnSubFinish701108,
        ["701109"] = self.OnSubFinish701109,
        ["701110"] = self.OnSubFinish701110,
        ["701111"] = self.OnSubFinish701111,
        ["701135"] = self.OnSubFinish701135,
        ["701136"] = self.OnSubFinish701136,
        ["701112"] = self.OnSubFinish701112,
        ["701133"] = self.OnSubFinish701133,
        ["701113"] = self.OnSubFinish701113,
        ["701114"] = self.OnSubFinish701114,
        ["701115"] = self.OnSubFinish701115,
        ["701116"] = self.OnSubFinish701116,
        ["701117"] = self.OnSubFinish701117,
        ["701118"] = self.OnSubFinish701118,
        ["701134"] = self.OnSubFinish701134,
        ["701120"] = self.OnSubFinish701120,
        ["701121"] = self.OnSubFinish701121,
        ["701122"] = self.OnSubFinish701122,
        ["701123"] = self.OnSubFinish701123,
        ["701124"] = self.OnSubFinish701124,
        ["701132"] = self.OnSubFinish701132,
        ["701125"] = self.OnSubFinish701125,
        ["701131"] = self.OnSubFinish701131,
        ["701129"] = self.OnSubFinish701129,
        ["701130"] = self.OnSubFinish701130,
        ["701137"] = self.OnSubFinish701137,
        ["701126"] = self.OnSubFinish701126,
        ["701128"] = self.OnSubFinish701128,
        ["701127"] = self.OnSubFinish701127
    }
end

function Quest7011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["701150"] = self.OnSubFailed701150,
        ["701151"] = self.OnSubFailed701151,
        ["701119"] = self.OnSubFailed701119,
        ["701102"] = self.OnSubFailed701102,
        ["701103"] = self.OnSubFailed701103,
        ["701104"] = self.OnSubFailed701104,
        ["701105"] = self.OnSubFailed701105,
        ["701106"] = self.OnSubFailed701106,
        ["701107"] = self.OnSubFailed701107,
        ["701108"] = self.OnSubFailed701108,
        ["701109"] = self.OnSubFailed701109,
        ["701110"] = self.OnSubFailed701110,
        ["701111"] = self.OnSubFailed701111,
        ["701112"] = self.OnSubFailed701112,
        ["701113"] = self.OnSubFailed701113,
        ["701114"] = self.OnSubFailed701114,
        ["701115"] = self.OnSubFailed701115,
        ["701116"] = self.OnSubFailed701116,
        ["701117"] = self.OnSubFailed701117,
        ["701118"] = self.OnSubFailed701118,
        ["701120"] = self.OnSubFailed701120,
        ["701121"] = self.OnSubFailed701121,
        ["701122"] = self.OnSubFailed701122,
        ["701123"] = self.OnSubFailed701123,
        ["701124"] = self.OnSubFailed701124,
        ["701125"] = self.OnSubFailed701125,
        ["701129"] = self.OnSubFailed701129,
        ["701130"] = self.OnSubFailed701130,
        ["701126"] = self.OnSubFailed701126
    }
end

function Quest7011:Start()
    print("Start")
end

function Quest7011:OnDestroy()
    print("OnDestroy")
end

function Quest7011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7011:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q701111Trigger", 7011)
    this:ActorDestroy("Q701115Trigger", 7011)
    this:ActorDestroy("Q701120Trigger", 7011)
    this:ActorDestroy("Q701125Trigger", 7011)
    this:ActorDestroy("Q701126Trigger", 7011)
    this:ActorDestroy("Q701126Trigger_Trans", 7011)
    this:ActorDestroy("Q701151Trigger", 7011)
    this:ActorDestroy("Q701152Trigger", 7011)
    this:ActorDestroy("Q701128Trigger", 7011)
    this:ActorDestroy("Q701128Trigger_Trans", 7011)
    this:ActorDestroy("Q701129Trigger", 7011)
    this:ActorDestroy("Q701134Trigger", 7011)
    this:ActorDestroy("Q701125Trigger", 7011)
    this:ActorDestroy("Q701137Trigger", 7011)
    this:ActorDestroy("Q701138Trigger", 7011)
    this:ActorDestroy("Q701139Trigger", 7011)
end

function Quest7011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 70112601 then
        this:ActorDestroy("Q701126Trigger", 7011)
        this:ActorDestroy("Q701126Trigger_Trans", 7011)
    end
end

function Quest7011:ActorDestroy(arg1, arg2)
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

function Quest7011:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7011:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7011:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7011:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest7011:OnSubStart701150(arg1)
    print("OnSubStart701150")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16888.id, 0, 701150, 40, true)
end

function Quest7011:OnSubFinish701150(arg1)
    print("OnSubFinish701150")
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
    this:SetNavigationByMainId(7011, true)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitBlackSilentData, nil, nil, nil)
end

function Quest7011:OnSubFailed701150(arg1)
    print("OnSubFailed701150")
    this:ClearNpcTriggerByQuestId(701150)
end

function Quest7011:OnSubStart701151(arg1)
    print("OnSubStart701151")
    actorMgr:CreateActorWithPos("Q701151Trigger", "Actor/Gadget/Q701151Trigger", 70900002, 0, points._Q701151TriggerPoint_.pos, points._Q701151TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701151(arg1)
    print("OnSubFinish701151")
end

function Quest7011:OnSubFailed701151(arg1)
    print("OnSubFailed701151")
    this:ActorDestroy("Q701151Trigger", 7011)
end

function Quest7011:OnSubStart701101(arg1)
    print("OnSubStart701101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701101, 0, 30, 1, npcs.Npc15380.id)
end

function Quest7011:OnSubFinish701101(arg1)
    print("OnSubFinish701101")
    this:NpcDestroyImmediately(3, npcs.Npc15380.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitBlackSilentData, nil, nil, nil)
end

function Quest7011:OnSubStart701119(arg1)
    print("OnSubStart701119")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16888.id, 0, 701119, 40, true)
end

function Quest7011:OnSubFinish701119(arg1)
    print("OnSubFinish701119")
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
    this:SetNavigationByMainId(7011, true)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitBlackSilentData, nil, nil, nil)
end

function Quest7011:OnSubFailed701119(arg1)
    print("OnSubFailed701119")
    this:ClearNpcTriggerByQuestId(701119)
end

function Quest7011:OnSubStart701152(arg1)
    print("OnSubStart701152")
    actorMgr:CreateActorWithPos("Q701152Trigger", "Actor/Gadget/Q701152Trigger", 70900002, 0, points._Q701152TriggerPoint_.pos, points._Q701152TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701152(arg1)
    print("OnSubFinish701152")
    this:SetNavigationByMainId(7011, true)
end

function Quest7011:OnSubStart701102(arg1)
    print("OnSubStart701102")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701102, 0, 39, 1, npcs.Npc16888.id)
end

function Quest7011:OnSubFinish701102(arg1)
    print("OnSubFinish701102")
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
    this:SetNavigationByMainId(7011, true)
end

function Quest7011:OnSubFailed701102(arg1)
    print("OnSubFailed701102")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701103(arg1)
    print("OnSubStart701103")
    this:DeployStoryByQuest(110701101)
end

function Quest7011:OnSubFinish701103(arg1)
    print("OnSubFinish701103")
end

function Quest7011:OnSubFailed701103(arg1)
    print("OnSubFailed701103")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701104(arg1)
    print("OnSubStart701104")
    this:DeployStoryByQuest(110701101)
end

function Quest7011:OnSubFinish701104(arg1)
    print("OnSubFinish701104")
end

function Quest7011:OnSubFailed701104(arg1)
    print("OnSubFailed701104")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701139(arg1)
    print("OnSubStart701139")
    actorMgr:CreateActorWithPos("Q701139Trigger", "Actor/Gadget/Q701139Trigger", 70900002, 0, points._Q701139TriggerPoint_.pos, points._Q701139TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701139(arg1)
    print("OnSubFinish701139")
end

function Quest7011:OnSubStart701105(arg1)
    print("OnSubStart701105")
    this:DeployStoryByQuest(110701101)
end

function Quest7011:OnSubFinish701105(arg1)
    print("OnSubFinish701105")
    this:SetNavigationByMainId(7011, true)
end

function Quest7011:OnSubFailed701105(arg1)
    print("OnSubFailed701105")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110701101)
end

function Quest7011:OnSubStart701106(arg1)
    print("OnSubStart701106")
    this:CreateQuestNpc(arg1, npcs.Npc17290.id, 0, false, 0)
    this:DeployStoryByQuest(110701101)
end

function Quest7011:OnSubFinish701106(arg1)
    print("OnSubFinish701106")
    this:NpcDestroyImmediately(3, npcs.Npc17290.alias)
    this:CancelStoryByQuest(110701101)
end

function Quest7011:OnSubFailed701106(arg1)
    print("OnSubFailed701106")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701138(arg1)
    print("OnSubStart701138")
    actorMgr:CreateActorWithPos("Q701138Trigger", "Actor/Gadget/Q701138Trigger", 70900002, 0, points._Q701138TriggerPoint_.pos, points._Q701138TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701138(arg1)
    print("OnSubFinish701138")
end

function Quest7011:OnSubStart701107(arg1)
    print("OnSubStart701107")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(701107, 0, 25, 1, npcs.Npc16888.id)
    end, true)
end

function Quest7011:OnSubFinish701107(arg1)
    print("OnSubFinish701107")
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
end

function Quest7011:OnSubFailed701107(arg1)
    print("OnSubFailed701107")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701108(arg1)
    print("OnSubStart701108")
    this:NpcCreateWithNpcTrigger(npcs.Npc16888.id, 0, 10, 701108)
    this:DeployRangeStoryByQuest(110701102, 3, {x = 7302.2, y = 218.328, z = 8499.984}, 130, 132)
end

function Quest7011:OnSubFinish701108(arg1)
    print("OnSubFinish701108")
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
end

function Quest7011:OnSubFailed701108(arg1)
    print("OnSubFailed701108")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701109(arg1)
    print("OnSubStart701109")
    this:DeployRangeStoryByQuest(110701102, 3, {x = 7302.2, y = 218.328, z = 8499.984}, 130, 132)
end

function Quest7011:OnSubFinish701109(arg1)
    print("OnSubFinish701109")
end

function Quest7011:OnSubFailed701109(arg1)
    print("OnSubFailed701109")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701110(arg1)
    print("OnSubStart701110")
    this:NpcCreateWithNpcTrigger(npcs.Npc16888.id, 0, 36, 701110)
    this:DeployRangeStoryByQuest(110701102, 3, {x = 7302.2, y = 218.328, z = 8499.984}, 130, 132)
end

function Quest7011:OnSubFinish701110(arg1)
    print("OnSubFinish701110")
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
    this:CancelRangeStoryByQuest(110701102)
end

function Quest7011:OnSubFailed701110(arg1)
    print("OnSubFailed701110")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701111(arg1)
    print("OnSubStart701111")
    this:DeployStoryByQuest(110701103)
    actorMgr:CreateActorWithPos("Q701111Trigger", "Actor/Gadget/Q701111Trigger", 70900002, 0, points._Q701111TriggerPoint_.pos, points._Q701111TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701111(arg1)
    print("OnSubFinish701111")
    this:ActorDestroy("Q701111Trigger", 7011)
end

function Quest7011:OnSubFailed701111(arg1)
    print("OnSubFailed701111")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701135(arg1)
    print("OnSubStart701135")
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701135(arg1)
    print("OnSubFinish701135")
end

function Quest7011:OnSubStart701136(arg1)
    print("OnSubStart701136")
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701136(arg1)
    print("OnSubFinish701136")
end

function Quest7011:OnSubStart701112(arg1)
    print("OnSubStart701112")
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701112(arg1)
    print("OnSubFinish701112")
end

function Quest7011:OnSubFailed701112(arg1)
    print("OnSubFailed701112")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701133(arg1)
    print("OnSubStart701133")
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701133(arg1)
    print("OnSubFinish701133")
end

function Quest7011:OnSubStart701113(arg1)
    print("OnSubStart701113")
    this:NpcCreateWithNpcTrigger(npcs.Npc22302.id, 0, 6, 701113)
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701113(arg1)
    print("OnSubFinish701113")
    this:NpcDestroyImmediately(3, npcs.Npc22302.alias)
    this:CallDelayByQuest("701113Reminder", 1, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.ShowReminder(1003760026)
        end, true)
    end)
end

function Quest7011:OnSubFailed701113(arg1)
    print("OnSubFailed701113")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701114(arg1)
    print("OnSubStart701114")
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701114(arg1)
    print("OnSubFinish701114")
    this:UnCallDelayByQuest("701113Reminder")
    actorUtils.InterruptReminder()
end

function Quest7011:OnSubFailed701114(arg1)
    print("OnSubFailed701114")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701115(arg1)
    print("OnSubStart701115")
    actorMgr:CreateActorWithPos("Q701115Trigger", "Actor/Gadget/Q701115Trigger", 70900002, 0, points._Q701115TriggerPoint_.pos, points._Q701115TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701115(arg1)
    print("OnSubFinish701115")
end

function Quest7011:OnSubFailed701115(arg1)
    print("OnSubFailed701115")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701116(arg1)
    print("OnSubStart701116")
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701116(arg1)
    print("OnSubFinish701116")
end

function Quest7011:OnSubFailed701116(arg1)
    print("OnSubFailed701116")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701117(arg1)
    print("OnSubStart701117")
    this:NpcCreateWithNpcTrigger(npcs.Npc22302.id, 0, 22, 701117)
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701117(arg1)
    print("OnSubFinish701117")
    this:NpcDestroyImmediately(3, npcs.Npc22302.alias)
end

function Quest7011:OnSubFailed701117(arg1)
    print("OnSubFailed701117")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701118(arg1)
    print("OnSubStart701118")
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701118(arg1)
    print("OnSubFinish701118")
end

function Quest7011:OnSubFailed701118(arg1)
    print("OnSubFailed701118")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701134(arg1)
    print("OnSubStart701134")
    actorMgr:CreateActorWithPos("Q701134Trigger", "Actor/Gadget/Q701134Trigger", 70900002, 0, points._Q701134TriggerPoint_.pos, points._Q701134TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701134(arg1)
    print("OnSubFinish701134")
end

function Quest7011:OnSubStart701120(arg1)
    print("OnSubStart701120")
    actorMgr:CreateActorWithPos("Q701120Trigger", "Actor/Gadget/Q701120Trigger", 70900002, 0, points._Q701120TriggerPoint_.pos, points._Q701120TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701120(arg1)
    print("OnSubFinish701120")
    this:QuestNarratorTask(datas.NarratorWithId_701116, nil)
end

function Quest7011:OnSubFailed701120(arg1)
    print("OnSubFailed701120")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701121(arg1)
    print("OnSubStart701121")
    this:NpcCreateWithNpcTrigger(npcs.Npc22302.id, 0, 35, 701121)
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701121(arg1)
    print("OnSubFinish701121")
    this:NpcDestroyImmediately(3, npcs.Npc22302.alias)
    this:QuestNarratorTask(datas.NarratorWithId_701117, nil)
end

function Quest7011:OnSubFailed701121(arg1)
    print("OnSubFailed701121")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701122(arg1)
    print("OnSubStart701122")
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701122(arg1)
    print("OnSubFinish701122")
end

function Quest7011:OnSubFailed701122(arg1)
    print("OnSubFailed701122")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701123(arg1)
    print("OnSubStart701123")
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701123(arg1)
    print("OnSubFinish701123")
end

function Quest7011:OnSubFailed701123(arg1)
    print("OnSubFailed701123")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701124(arg1)
    print("OnSubStart701124")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701124, 0, 40, 1, npcs.Npc16888.id)
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701124(arg1)
    print("OnSubFinish701124")
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
    this:CancelStoryByQuest(110701103)
    this:ClearNarratorTask()
end

function Quest7011:OnSubFailed701124(arg1)
    print("OnSubFailed701124")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701132(arg1)
    print("OnSubStart701132")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701132, 0, 20, 1, npcs.Npc22302.id)
    this:DeployStoryByQuest(110701103)
end

function Quest7011:OnSubFinish701132(arg1)
    print("OnSubFinish701132")
    this:NpcDestroyImmediately(3, npcs.Npc22302.alias)
    this:CancelStoryByQuest(110701103)
    this:ClearNarratorTask()
end

function Quest7011:OnSubStart701125(arg1)
    print("OnSubStart701125")
    actorMgr:CreateActorWithPos("Q701125Trigger", "Actor/Gadget/Q701125Trigger", 70900002, 0, points._Q701125TriggerPoint_.pos, points._Q701125TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701125(arg1)
    print("OnSubFinish701125")
    this:QuestNarratorTask(datas.NarratorWithId_701119, nil)
end

function Quest7011:OnSubFailed701125(arg1)
    print("OnSubFailed701125")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701131(arg1)
    print("OnSubStart701131")
    actorMgr:CreateActorWithPos("Q701125Trigger", "Actor/Gadget/Q701125Trigger", 70900002, 0, points._Q701125TriggerPoint_.pos, points._Q701125TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701131(arg1)
    print("OnSubFinish701131")
    this:QuestNarratorTask(datas.NarratorWithId_701119, nil)
end

function Quest7011:OnSubStart701129(arg1)
    print("OnSubStart701129")
    actorMgr:CreateActorWithPos("Q701129Trigger", "Actor/Gadget/Q701129Trigger", 70900002, 0, points._Q701129TriggerPoint_.pos, points._Q701129TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701129(arg1)
    print("OnSubFinish701129")
    this:ActorDestroy("Q701129Trigger", 7011)
    actorUtils.InterruptReminder()
end

function Quest7011:OnSubFailed701129(arg1)
    print("OnSubFailed701129")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701130(arg1)
    print("OnSubStart701130")
end

function Quest7011:OnSubFinish701130(arg1)
    print("OnSubFinish701130")
end

function Quest7011:OnSubFailed701130(arg1)
    print("OnSubFailed701130")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701137(arg1)
    print("OnSubStart701137")
    actorMgr:CreateActorWithPos("Q701137Trigger", "Actor/Gadget/Q701137Trigger", 70900002, 0, points._Q701137TriggerPoint_.pos, points._Q701137TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701137(arg1)
    print("OnSubFinish701137")
end

function Quest7011:OnSubStart701126(arg1)
    print("OnSubStart701126")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701126, 0, 30, 1, npcs.Npc22302.id)
    actorMgr:CreateActorWithPos("Q701126Trigger", "Actor/Gadget/Q701126Trigger", 70900002, 0, points._Q701126TriggerPoint_.pos, points._Q701126TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
    actorMgr:CreateActorWithPos("Q701126Trigger_Trans", "Actor/Gadget/Q701126Trigger_Trans", 70900002, 0, points._Q701126Trigger_TransPoint_.pos, points._Q701126Trigger_TransPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701126(arg1)
    print("OnSubFinish701126")
    this:NpcDestroyImmediately(3, npcs.Npc22302.alias)
    this:ActorDestroy("Q701126Trigger", 7011)
    this:ActorDestroy("Q701126Trigger_Trans", 7011)
end

function Quest7011:OnSubFailed701126(arg1)
    print("OnSubFailed701126")
    this:RecycleAllRes()
end

function Quest7011:OnSubStart701128(arg1)
    print("OnSubStart701128")
    actorMgr:CreateActorWithPos("Q701128Trigger_Trans", "Actor/Gadget/Q701128Trigger_Trans", 70900002, 0, points._Q701128Trigger_TransPoint_.pos, points._Q701128Trigger_TransPoint_.rot, true, false, 3, nil, 0, 7011)
    actorMgr:CreateActorWithPos("Q701128Trigger", "Actor/Gadget/Q701128Trigger", 70900002, 0, points._Q701128TriggerPoint_.pos, points._Q701128TriggerPoint_.rot, true, false, 3, nil, 0, 7011)
end

function Quest7011:OnSubFinish701128(arg1)
    print("OnSubFinish701128")
    this:ActorDestroy("Q701128Trigger_Trans", 7011)
end

function Quest7011:OnSubStart701127(arg1)
    print("OnSubStart701127")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc22302.id, 0, 701127, 30, true)
end

function Quest7011:OnSubFinish701127(arg1)
    print("OnSubFinish701127")
    this:NpcDestroyImmediately(3, npcs.Npc22302.alias)
end

return Quest7011
