require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77668 = class("Quest77668", QuestActorProxy)
Quest77668.defaultAlias = "Quest77668"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77668:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77668:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7766801"] = self.OnSubStart7766801,
        ["7766804"] = self.OnSubStart7766804,
        ["7766802"] = self.OnSubStart7766802,
        ["7766803"] = self.OnSubStart7766803
    }
end

function Quest77668:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7766801"] = self.OnSubFinish7766801,
        ["7766804"] = self.OnSubFinish7766804,
        ["7766802"] = self.OnSubFinish7766802,
        ["7766803"] = self.OnSubFinish7766803
    }
end

function Quest77668:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77668:Start()
    print("Start")
end

function Quest77668:OnDestroy()
    print("OnDestroy")
end

function Quest77668:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77668:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77668:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7766801N1339Trigger")
    this:DestroyNpcTrigger("Q7766803N1339Trigger")
    this:ActorDestroy("Q77668Trigger", 77668)
    this:ActorDestroy("Q77668Triggerblack", 77668)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1339.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc1336_1.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc1332.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc1335.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc1338.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc1341.alias, 1162)
    this:RecycleAllRes()
end

function Quest77668:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q77668Trigger", 77668)
    this:ActorDestroy("Q77668Triggerblack", 77668)
end

function Quest77668:ActorDestroy(arg1, arg2)
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

function Quest77668:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77668:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77668:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77668:OnSubStart7766801(arg1)
    print("OnSubStart7766801")
    this:AfterInterCall(function(arg1)
        actorMgr:DestroyNpcActorByAlias("Npc1339_177667")
    end)

    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1339.id, 0, 7766801, 200, true)
    if this:GetQuestVar(7766801, 4) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7766801, function(arg1)
            this:SetQuestVarByMainId(4, 1)
        end)
    end
end

function Quest77668:OnSubFinish7766801(arg1)
    print("OnSubFinish7766801")
    this:NpcDestroyImmediately(1162, npcs.Npc1339.alias)
    this:SetNavigationByMainId(77668, true)
end

function Quest77668:OnSubStart7766804(arg1)
    print("OnSubStart7766804")
end

function Quest77668:OnSubFinish7766804(arg1)
    print("OnSubFinish7766804")
    this:ClearNarratorTask()
    actorMgr:CreateActorWithPos("Q77668Triggerblack", "Actor/Gadget/Q77668Triggerblack", 70900002, 0, points._Q77668TriggerblackPoint_.pos, points._Q77668TriggerblackPoint_.rot, true, false, 1162, nil, 0, 77668)
end

function Quest77668:OnSubStart7766802(arg1)
    print("OnSubStart7766802")
    this:CreateQuestNpc(arg1, npcs.Npc1080.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1336_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1336_1.alias, 77668):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 77668):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 77668):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1338.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1338.alias, 77668):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1341.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1080.alias, 77668):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 77668):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1338.alias, 77668):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 77668):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1341.alias, 77668):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 77668):DisableInteeHeadCtrl(true)
end

function Quest77668:OnSubFinish7766802(arg1)
    print("OnSubFinish7766802")
    this:ActorDestroy("Q77668Triggerblack", 77668)
end

function Quest77668:OnSubStart7766803(arg1)
    print("OnSubStart7766803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7766803, 0, 25, 2, npcs.Npc1339.id)
    this:DeployStoryByQuest(147766800)
end

function Quest77668:OnSubFinish7766803(arg1)
    print("OnSubFinish7766803")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1341.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1338.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1336_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1080.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1332.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1335.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1339_1.id, 9, false, 0.5, datas.QuestOrphanNpcPlaceList)
        actorMgr:CreateActorWithPos("Q77668Trigger", "Actor/Gadget/Q77668Trigger", 70900002, 0, points._Q77668TriggerPoint_.pos, points._Q77668TriggerPoint_.rot, true, false, 1162, nil, 0, 77668)
        this:GetQuestNpcActor(npcs.Npc1318.alias, 77668):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1336_1.alias, 77668):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1080.alias, 77668):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1339_1.alias, 77668):SitOnChair(8010, true)
        this:DeployStoryByQuest(147766800)
        actorUtils.ShowContext("ReputationSnezhnayaPage", 0, "0;1;0;4;1")
    end)
end

return Quest77668
