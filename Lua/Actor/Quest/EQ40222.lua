require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40222 = class("Quest40222", QuestActorProxy)
Quest40222.defaultAlias = "Quest40222"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40222:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40222:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4022201"] = self.OnSubStart4022201,
        ["4022215"] = self.OnSubStart4022215,
        ["4022202"] = self.OnSubStart4022202,
        ["4022203"] = self.OnSubStart4022203,
        ["4022216"] = self.OnSubStart4022216,
        ["4022204"] = self.OnSubStart4022204,
        ["4022205"] = self.OnSubStart4022205,
        ["4022217"] = self.OnSubStart4022217,
        ["4022206"] = self.OnSubStart4022206,
        ["4022221"] = self.OnSubStart4022221,
        ["4022218"] = self.OnSubStart4022218,
        ["4022219"] = self.OnSubStart4022219,
        ["4022207"] = self.OnSubStart4022207,
        ["4022208"] = self.OnSubStart4022208,
        ["4022209"] = self.OnSubStart4022209,
        ["4022220"] = self.OnSubStart4022220,
        ["4022210"] = self.OnSubStart4022210,
        ["4022211"] = self.OnSubStart4022211,
        ["4022214"] = self.OnSubStart4022214,
        ["4022212"] = self.OnSubStart4022212,
        ["4022213"] = self.OnSubStart4022213
    }
end

function Quest40222:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4022201"] = self.OnSubFinish4022201,
        ["4022215"] = self.OnSubFinish4022215,
        ["4022202"] = self.OnSubFinish4022202,
        ["4022203"] = self.OnSubFinish4022203,
        ["4022216"] = self.OnSubFinish4022216,
        ["4022204"] = self.OnSubFinish4022204,
        ["4022205"] = self.OnSubFinish4022205,
        ["4022217"] = self.OnSubFinish4022217,
        ["4022206"] = self.OnSubFinish4022206,
        ["4022221"] = self.OnSubFinish4022221,
        ["4022218"] = self.OnSubFinish4022218,
        ["4022219"] = self.OnSubFinish4022219,
        ["4022207"] = self.OnSubFinish4022207,
        ["4022208"] = self.OnSubFinish4022208,
        ["4022209"] = self.OnSubFinish4022209,
        ["4022220"] = self.OnSubFinish4022220,
        ["4022210"] = self.OnSubFinish4022210,
        ["4022211"] = self.OnSubFinish4022211,
        ["4022214"] = self.OnSubFinish4022214,
        ["4022212"] = self.OnSubFinish4022212,
        ["4022213"] = self.OnSubFinish4022213
    }
end

function Quest40222:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4022221"] = self.OnSubFailed4022221,
        ["4022209"] = self.OnSubFailed4022209,
        ["4022220"] = self.OnSubFailed4022220,
        ["4022210"] = self.OnSubFailed4022210,
        ["4022212"] = self.OnSubFailed4022212
    }
end

function Quest40222:Start()
    print("Start")
end

function Quest40222:OnDestroy()
    print("OnDestroy")
end

function Quest40222:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40222:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40222:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("\229\137\141\229\190\128\231\146\131\230\156\136\230\184\175")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1066.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1068.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1041.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30899.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2023.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16141.alias, 20313)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:LightNotifyTo(npcs.Npc2023.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc10232.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30897.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30904.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021.alias, 20316)
    this:DestroyNpcTrigger("Q4022202N1066Trigger")
    this:DestroyNpcTrigger("Q4022203N1021Trigger")
    this:DestroyNpcTrigger("Q4022204N1016Trigger")
    this:DestroyNpcTrigger("Q4022205N1068Trigger")
    this:DestroyNpcTrigger("Q4022206N10232Trigger")
    this:DestroyNpcTrigger("Q4022207N2023Trigger")
    this:DestroyNpcTrigger("Q4022209N16141Trigger")
    this:DestroyNpcTrigger("Q4022210N16141Trigger")
    this:DestroyNpcTrigger("Q4022211N10232Trigger")
    this:DestroyNpcTrigger("Q4022212N1021Trigger")
    this:DestroyNpcTrigger("Q4022213N10232Trigger")
    this:DestroyNpcTrigger("Q4022216N30897Trigger")
    this:DestroyNpcTrigger("Q4022218N1046Trigger")
    this:DestroyNpcTrigger("Q4022219N1031Trigger")
    this:ActorDestroy("Q4022208Trigger", 0)
    this:ActorDestroy("Q4022214Trigger", 0)
    this:ActorDestroy("Q4022215Trigger", 0)
    this:ActorDestroy("Q4022217Trigger", 0)
    this:ActorDestroy("Q4022220Trigger", 0)
    this:CancelStoryByQuest(134022202)
    this:CancelStoryByQuest(134022203)
    this:CancelStoryByQuest(134022201)
    this:RecycleAllRes()
end

function Quest40222:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4022208Trigger", 0)
    this:ActorDestroy("Q4022214Trigger", 0)
    this:ActorDestroy("Q4022215Trigger", 0)
    this:ActorDestroy("Q4022217Trigger", 0)
    this:ActorDestroy("Q4022220Trigger", 0)
end

function Quest40222:ActorDestroy(arg1, arg2)
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

function Quest40222:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40222:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40222:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40222:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40222:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40222:OnSubStart4022201(arg1)
    print("OnSubStart4022201")
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
    actorUtils.FinishQuestID(false, 4022201)
end

function Quest40222:OnSubFinish4022201(arg1)
    print("OnSubFinish4022201")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:CallDelayByQuest("\229\137\141\229\190\128\231\146\131\230\156\136\230\184\175", 1, function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId4022201, nil)
            end)
        end)
    end)
end

function Quest40222:OnSubStart4022215(arg1)
    print("OnSubStart4022215")
    this:CreateQuestNpc(arg1, npcs.Npc1066.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10233.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
    actorMgr:CreateActorWithPos("Q4022215Trigger", "Actor/Gadget/Q4022215Trigger", 70900002, 0, points._Q4022215TriggerPoint_.pos, points._Q4022215TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest40222:OnSubFinish4022215(arg1)
    print("OnSubFinish4022215")
end

function Quest40222:OnSubStart4022202(arg1)
    print("OnSubStart4022202")
    this:NpcCreateWithNpcTrigger(npcs.Npc1066.id, 0, 15, 4022202)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
end

function Quest40222:OnSubFinish4022202(arg1)
    print("OnSubFinish4022202")
    this:ClearNarratorTask()
end

function Quest40222:OnSubStart4022203(arg1)
    print("OnSubStart4022203")
    this:CreateQuestNpc(arg1, npcs.Npc1066.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1066.alias, 40222):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc10233.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40222):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40222):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1021.id, 0, 10, 4022203)
    this:CreateQuestNpc(arg1, npcs.Xiangling.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1041.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10045.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30899.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30899.alias, 40222):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1021.alias, 40222):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Xiangling.alias, 40222):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1041.alias, 40222):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc10045.alias, 40222):SitOnChair(0, true)
end

function Quest40222:OnSubFinish4022203(arg1)
    print("OnSubFinish4022203")
    this:NpcDestroyImmediately(3, npcs.Npc1066.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10233.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1021.alias)
    this:NpcDestroyImmediately(3, npcs.Xiangling.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1041.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10045.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30899.alias)
end

function Quest40222:OnSubStart4022216(arg1)
    print("OnSubStart4022216")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc30897.id, 0, 4022216, 15, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
end

function Quest40222:OnSubFinish4022216(arg1)
    print("OnSubFinish4022216")
    this:NpcDestroyImmediately(3, npcs.Npc30897.alias)
    this:NpcDestroyImmediately(3, npcs.Xiangling.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1021.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1041.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10045.alias)
end

function Quest40222:OnSubStart4022204(arg1)
    print("OnSubStart4022204")
    this:NpcCreateWithNpcTrigger(npcs.Npc1016.id, 0, 8, 4022204)
    this:CreateQuestNpc(arg1, npcs.Npc1093.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10211.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
end

function Quest40222:OnSubFinish4022204(arg1)
    print("OnSubFinish4022204")
    this:NpcDestroyImmediately(3, npcs.Npc1016.alias)
end

function Quest40222:OnSubStart4022205(arg1)
    print("OnSubStart4022205")
    this:NpcCreateWithNpcTrigger(npcs.Npc1068.id, 0, 5, 4022205)
    this:CreateQuestNpc(arg1, npcs.Npc10211.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10211.alias, 40222):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10211.alias, 40222):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1093.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1093.alias, 40222):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1093.alias, 40222):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
    this:DeployStoryByQuest(134022202)
    this:DeployStoryByQuest(134022203)
end

function Quest40222:OnSubFinish4022205(arg1)
    print("OnSubFinish4022205")
    this:NpcDestroyImmediately(3, npcs.Npc1016.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10211.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
end

function Quest40222:OnSubStart4022217(arg1)
    print("OnSubStart4022217")
    this:CreateQuestNpc(arg1, npcs.Npc30904.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
    actorMgr:CreateActorWithPos("Q4022217Trigger", "Actor/Gadget/Q4022217Trigger", 70900002, 0, points._Q4022217TriggerPoint_.pos, points._Q4022217TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(134022202)
    this:DeployStoryByQuest(134022203)
end

function Quest40222:OnSubFinish4022217(arg1)
    print("OnSubFinish4022217")
    this:NpcDestroyImmediately(3, npcs.Npc30904.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1068.alias)
    this:CancelStoryByQuest(134022202)
    this:CancelStoryByQuest(134022203)
end

function Quest40222:OnSubStart4022206(arg1)
    print("OnSubStart4022206")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc10232.id, 0, 4022206, 40, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
end

function Quest40222:OnSubFinish4022206(arg1)
    print("OnSubFinish4022206")
end

function Quest40222:OnSubStart4022221(arg1)
    print("OnSubStart4022221")
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
    this:DeployStoryByQuest(134022201)
end

function Quest40222:OnSubFinish4022221(arg1)
    print("OnSubFinish4022221")
end

function Quest40222:OnSubFailed4022221(arg1)
    print("OnSubFailed4022221")
    this:RecycleAllRes()
    this:CancelStoryByQuest(134022201)
end

function Quest40222:OnSubStart4022218(arg1)
    print("OnSubStart4022218")
    this:GetQuestNpcActor(npcs.Npc1031.alias, 40222):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc10232.alias, 40222):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1046.id, 0, 5, 4022218)
    this:GetQuestNpcActor(npcs.Npc1046.alias, 40222):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
end

function Quest40222:OnSubFinish4022218(arg1)
    print("OnSubFinish4022218")
    this:CancelStoryByQuest(134022201)
end

function Quest40222:OnSubStart4022219(arg1)
    print("OnSubStart4022219")
    this:NpcCreateWithNpcTrigger(npcs.Npc1031.id, 0, 4, 4022219)
    this:GetQuestNpcActor(npcs.Npc1031.alias, 40222):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1046.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1046.alias, 40222):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc10232.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10232.alias, 40222):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
end

function Quest40222:OnSubFinish4022219(arg1)
    print("OnSubFinish4022219")
    this:NpcDestroyImmediately(3, npcs.Npc1031.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1046.alias)
    this:SafeDestroyQuestNpc(npcs.Npc10232.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2023.alias, 3)
end

function Quest40222:OnSubStart4022207(arg1)
    print("OnSubStart4022207")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022207, 0, 5, 0, npcs.Npc2023.id)
end

function Quest40222:OnSubFinish4022207(arg1)
    print("OnSubFinish4022207")
    this:SafeDestroyQuestNpc(npcs.Npc2023.alias, 3)
end

function Quest40222:OnSubStart4022208(arg1)
    print("OnSubStart4022208")
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
    actorMgr:CreateActorWithPos("Q4022208Trigger", "Actor/Gadget/Q4022208Trigger", 70900002, 0, points._Q4022208TriggerPoint_.pos, points._Q4022208TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest40222:OnSubFinish4022208(arg1)
    print("OnSubFinish4022208")
    this:ActorDestroy("Q4022208Trigger", nil)
end

function Quest40222:OnSubStart4022209(arg1)
    print("OnSubStart4022209")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc16141.id, 0, 4022209, 20, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableIneffaQuest02")
    actorUtils.BanUIByQuest(16, true, 40222)
    actorUtils.BanUIByQuest(27, true, 40222)
end

function Quest40222:OnSubFinish4022209(arg1)
    print("OnSubFinish4022209")
    this:NpcDestroyImmediately(20313, npcs.Npc16141.alias)
end

function Quest40222:OnSubFailed4022209(arg1)
    print("OnSubFailed4022209")
    this:RecycleAllRes()
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    actorUtils.BanUIByQuest(16, false, 40222)
    actorUtils.BanUIByQuest(27, false, 40222)
end

function Quest40222:OnSubStart4022220(arg1)
    print("OnSubStart4022220")
    actorMgr:CreateActorWithPos("Q4022220Trigger", "Actor/Gadget/Q4022220Trigger", 70900002, 0, points._Q4022220TriggerPoint_.pos, points._Q4022220TriggerPoint_.rot, true, false, 20313, nil, 0, 0)
    this:DisableMainPageWithConfigByQuest(true, "DisableIneffaQuest02")
    actorUtils.BanUIByQuest(16, true, 40222)
    actorUtils.BanUIByQuest(27, true, 40222)
end

function Quest40222:OnSubFinish4022220(arg1)
    print("OnSubFinish4022220")
    this:ActorDestroy("Q4022220Trigger", nil)
    this:ClearNarratorTask()
end

function Quest40222:OnSubFailed4022220(arg1)
    print("OnSubFailed4022220")
    this:RecycleAllRes()
    this:ActorDestroy("Q4022220Trigger", nil)
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    actorUtils.BanUIByQuest(16, false, 40222)
    actorUtils.BanUIByQuest(27, false, 40222)
end

function Quest40222:OnSubStart4022210(arg1)
    print("OnSubStart4022210")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022210, 0, 80, 0, npcs.Npc16141.id)
    this:DisableMainPageWithConfigByQuest(true, "DisableIneffaQuest02")
    actorUtils.BanUIByQuest(16, true, 40222)
    actorUtils.BanUIByQuest(27, true, 40222)
end

function Quest40222:OnSubFinish4022210(arg1)
    print("OnSubFinish4022210")
    this:NpcDestroyImmediately(20313, npcs.Npc16141.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4022210, nil, nil, nil)
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    actorUtils.BanUIByQuest(16, false, 40222)
    actorUtils.BanUIByQuest(27, false, 40222)
end

function Quest40222:OnSubFailed4022210(arg1)
    print("OnSubFailed4022210")
    this:RecycleAllRes()
    this:ClearNpcTriggerByQuestId(4022210)
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    actorUtils.BanUIByQuest(16, false, 40222)
    actorUtils.BanUIByQuest(27, false, 40222)
end

function Quest40222:OnSubStart4022211(arg1)
    print("OnSubStart4022211")
    this:CreateQuestNpc(arg1, npcs.Npc2023.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc10232.id, 0, 4022211, 40, true)
end

function Quest40222:OnSubFinish4022211(arg1)
    print("OnSubFinish4022211")
    this:NpcDestroyImmediately(3, npcs.Npc2023.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10232.alias)
end

function Quest40222:OnSubStart4022214(arg1)
    print("OnSubStart4022214")
    this:DailyNpcSafeHideSelf(npcs.Npc2023.alias, true, 1)
    actorMgr:CreateActorWithPos("Q4022214Trigger", "Actor/Gadget/Q4022214Trigger", 70900002, 0, points._Q4022214TriggerPoint_.pos, points._Q4022214TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest40222:OnSubFinish4022214(arg1)
    print("OnSubFinish4022214")
    this:LightNotifyTo(npcs.Npc2023.alias, 0, true)
    this:ActorDestroy("Q4022214Trigger", nil)
end

function Quest40222:OnSubStart4022212(arg1)
    print("OnSubStart4022212")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1021.id, 0, 4022212, 80, true)
end

function Quest40222:OnSubFinish4022212(arg1)
    print("OnSubFinish4022212")
    this:NpcDestroyImmediately(20316, npcs.Npc1021.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData4022210, nil, nil, nil)
end

function Quest40222:OnSubFailed4022212(arg1)
    print("OnSubFailed4022212")
    this:RecycleAllRes()
end

function Quest40222:OnSubStart4022213(arg1)
    print("OnSubStart4022213")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc10232.id, 0, 4022213, 10, true)
end

function Quest40222:OnSubFinish4022213(arg1)
    print("OnSubFinish4022213")
    this:NpcDestroyImmediately(3, npcs.Npc10232.alias)
end

return Quest40222
