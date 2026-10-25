require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6017 = class("Quest6017", QuestActorProxy)
Quest6017.defaultAlias = "Quest6017"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6017:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601712"] = self.OnSubStart601712,
        ["601701"] = self.OnSubStart601701,
        ["601702"] = self.OnSubStart601702,
        ["601716"] = self.OnSubStart601716,
        ["601703"] = self.OnSubStart601703,
        ["601704"] = self.OnSubStart601704,
        ["601711"] = self.OnSubStart601711,
        ["601705"] = self.OnSubStart601705,
        ["601706"] = self.OnSubStart601706,
        ["601707"] = self.OnSubStart601707,
        ["601719"] = self.OnSubStart601719,
        ["601717"] = self.OnSubStart601717,
        ["601720"] = self.OnSubStart601720,
        ["601713"] = self.OnSubStart601713,
        ["601714"] = self.OnSubStart601714,
        ["601715"] = self.OnSubStart601715,
        ["601708"] = self.OnSubStart601708,
        ["601718"] = self.OnSubStart601718,
        ["601709"] = self.OnSubStart601709,
        ["601710"] = self.OnSubStart601710
    }
end

function Quest6017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601712"] = self.OnSubFinish601712,
        ["601701"] = self.OnSubFinish601701,
        ["601702"] = self.OnSubFinish601702,
        ["601716"] = self.OnSubFinish601716,
        ["601703"] = self.OnSubFinish601703,
        ["601704"] = self.OnSubFinish601704,
        ["601711"] = self.OnSubFinish601711,
        ["601705"] = self.OnSubFinish601705,
        ["601706"] = self.OnSubFinish601706,
        ["601707"] = self.OnSubFinish601707,
        ["601719"] = self.OnSubFinish601719,
        ["601717"] = self.OnSubFinish601717,
        ["601720"] = self.OnSubFinish601720,
        ["601713"] = self.OnSubFinish601713,
        ["601714"] = self.OnSubFinish601714,
        ["601715"] = self.OnSubFinish601715,
        ["601708"] = self.OnSubFinish601708,
        ["601718"] = self.OnSubFinish601718,
        ["601709"] = self.OnSubFinish601709,
        ["601710"] = self.OnSubFinish601710
    }
end

function Quest6017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["601707"] = self.OnSubFailed601707,
        ["601719"] = self.OnSubFailed601719,
        ["601717"] = self.OnSubFailed601717,
        ["601713"] = self.OnSubFailed601713,
        ["601708"] = self.OnSubFailed601708,
        ["601718"] = self.OnSubFailed601718
    }
end

function Quest6017:Start()
    print("Start")
end

function Quest6017:OnDestroy()
    print("OnDestroy")
end

function Quest6017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6017:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q6017MoonTransmit")
    this:ActorDestroy("Q6017SacredMoonTrigger")
    this:ActorDestroy("Q601713Finish")
    this:BanCrowdNpc(3607, 3, nil, false, true)
    this:BanCrowdNpc(3607, 13, nil, false, true)
    this:BanCrowdNpc(3607, 14, nil, false, true)
    this:BanCrowdNpc(3607, 15, nil, false, true)
    this:BanCrowdNpc(3607, 16, nil, false, true)
    this:BanCrowdNpc(3607, 17, nil, false, true)
end

function Quest6017:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6017:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6017:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6017:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6017:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest6017:OnSubStart601712(arg1)
    print("OnSubStart601712")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16193.id, 0, 601712, 20, true)
end

function Quest6017:OnSubFinish601712(arg1)
    print("OnSubFinish601712")
    this:NpcDestroyImmediately(3, npcs.Npc16193.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitWithBlack, nil, nil, nil)
end

function Quest6017:OnSubStart601701(arg1)
    print("OnSubStart601701")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1317.id, 0, 601701, 20, true)
end

function Quest6017:OnSubFinish601701(arg1)
    print("OnSubFinish601701")
    this:NpcDestroyImmediately(1204, npcs.Npc1317.alias)
end

function Quest6017:OnSubStart601702(arg1)
    print("OnSubStart601702")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1313.id, 0, 601702, 30, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7082.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7083.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7046.alias, true, 1)
    this:BanCrowdNpc(3607, 3, nil, true, true)
    this:BanCrowdNpc(3607, 13, nil, true, true)
    this:BanCrowdNpc(3607, 14, nil, true, true)
    this:BanCrowdNpc(3607, 15, nil, true, true)
    this:BanCrowdNpc(3607, 16, nil, true, true)
    this:BanCrowdNpc(3607, 17, nil, true, true)
end

function Quest6017:OnSubFinish601702(arg1)
    print("OnSubFinish601702")
    this:NpcDestroyImmediately(3, npcs.Npc1313.alias)
end

function Quest6017:OnSubStart601716(arg1)
    print("OnSubStart601716")
    this:CreateQuestNpc(arg1, npcs.Npc16193.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7082.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7083.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7046.alias, true, 1)
end

function Quest6017:OnSubFinish601716(arg1)
    print("OnSubFinish601716")
    this:NpcDestroyImmediately(3, npcs.Npc16193.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
end

function Quest6017:OnSubStart601703(arg1)
    print("OnSubStart601703")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1314.id, 0, 601703, 35, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7082.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7083.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7046.alias, true, 1)
    this:BanCrowdNpc(3607, 3, nil, true, true)
    this:BanCrowdNpc(3607, 13, nil, true, true)
    this:BanCrowdNpc(3607, 14, nil, true, true)
    this:BanCrowdNpc(3607, 15, nil, true, true)
    this:BanCrowdNpc(3607, 16, nil, true, true)
    this:BanCrowdNpc(3607, 17, nil, true, true)
end

function Quest6017:OnSubFinish601703(arg1)
    print("OnSubFinish601703")
    this:NpcDestroyImmediately(3, npcs.Npc1314.alias)
end

function Quest6017:OnSubStart601704(arg1)
    print("OnSubStart601704")
    this:NpcCreateWithNoBlackData(601704, 1, npcs.Npc1310.id, 0, 10, 601704, datas.NoBlackDataHidePlayer)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6017):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6017):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6017):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6017):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc7082.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7083.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7046.alias, true, 1)
    this:BanCrowdNpc(3607, 3, nil, true, true)
    this:BanCrowdNpc(3607, 13, nil, true, true)
    this:BanCrowdNpc(3607, 14, nil, true, true)
    this:BanCrowdNpc(3607, 15, nil, true, true)
    this:BanCrowdNpc(3607, 16, nil, true, true)
    this:BanCrowdNpc(3607, 17, nil, true, true)
end

function Quest6017:OnSubFinish601704(arg1)
    print("OnSubFinish601704")
    this:NpcDestroyImmediately(3, npcs.Npc1310.alias)
    this:LightNotifyTo(npcs.Npc7082.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7083.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7046.alias, 0, true)
    this:BanCrowdNpc(3607, 3, nil, false, true)
    this:BanCrowdNpc(3607, 13, nil, false, true)
    this:BanCrowdNpc(3607, 14, nil, false, true)
    this:BanCrowdNpc(3607, 15, nil, false, true)
    this:BanCrowdNpc(3607, 16, nil, false, true)
    this:BanCrowdNpc(3607, 17, nil, false, true)
end

function Quest6017:OnSubStart601711(arg1)
    print("OnSubStart601711")
    this:NpcCreateWithNoBlackData(601711, 1, npcs.Npc1080.id, 0, 10, 601714, datas.NoBlackDataNormal)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6017):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6017):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6017):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6017):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1065.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1065.alias, 6017):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest6017:OnSubFinish601711(arg1)
    print("OnSubFinish601711")
    this:NpcDestroyImmediately(3, npcs.Npc1080.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1065.alias)
end

function Quest6017:OnSubStart601705(arg1)
    print("OnSubStart601705")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1318.id, 0, 601705, 15, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6017):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6017):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6017):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6017):DisableInteeHeadCtrl(true)
end

function Quest6017:OnSubFinish601705(arg1)
    print("OnSubFinish601705")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1320.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1018.alias)
    this:PlayerEnterDungeonWithData(1806, 1293, 601705, 1, datas.EnterDungeonWithBlack, nil, nil)
end

function Quest6017:OnSubStart601706(arg1)
    print("OnSubStart601706")
    this:RecycleAllRes()
end

function Quest6017:OnSubFinish601706(arg1)
    print("OnSubFinish601706")
end

function Quest6017:OnSubStart601707(arg1)
    print("OnSubStart601707")
    this:DeployStoryByQuest(110601701)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
end

function Quest6017:OnSubFinish601707(arg1)
    print("OnSubFinish601707")
end

function Quest6017:OnSubFailed601707(arg1)
    print("OnSubFailed601707")
    this:CancelStoryByQuest(110601701)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
end

function Quest6017:OnSubStart601719(arg1)
    print("OnSubStart601719")
    this:DeployStoryByQuest(110601701)
    actorMgr:CreateActorWithPos("Q6017MoonTransmit", "Actor/Gadget/Q6017MoonTransmit", 70900002, 0, points._Q6017MoonTransmitPoint_.pos, points._Q6017MoonTransmitPoint_.rot, true, false, 20324)
    actorMgr:CreateActorWithPos("Q6017SacredMoonTrigger", "Actor/Gadget/Q6017SacredMoonTrigger", 70900002, 0, points._Q6017SacredMoonTriggerPoint_.pos, points._Q6017SacredMoonTriggerPoint_.rot, true, false, 20324)
    this:EnablePlayerInputByQuest(true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
end

function Quest6017:OnSubFinish601719(arg1)
    print("OnSubFinish601719")
    this:CancelStoryByQuest(110601701)
end

function Quest6017:OnSubFailed601719(arg1)
    print("OnSubFailed601719")
    this:ActorDestroy("Q6017MoonTransmit")
    this:ActorDestroy("Q6017SacredMoonTrigger")
    this:CancelStoryByQuest(110601701)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
    this:EnablePlayerInputByQuest(true)
end

function Quest6017:OnSubStart601717(arg1)
    print("OnSubStart601717")
    this:EnablePlayerInputByQuest(true)
end

function Quest6017:OnSubFinish601717(arg1)
    print("OnSubFinish601717")
    this:AfterMainPageActiveSafeCall(function(arg1)
        if sceneData.currSceneID == 20324 then
            this:EnablePlayerInputByQuest(false)
        end
    end)
end

function Quest6017:OnSubFailed601717(arg1)
    print("OnSubFailed601717")
    this:EnablePlayerInputByQuest(true)
end

function Quest6017:OnSubStart601720(arg1)
    print("OnSubStart601720")
    this:EnablePlayerInputByQuest(true)
end

function Quest6017:OnSubFinish601720(arg1)
    print("OnSubFinish601720")
end

function Quest6017:OnSubStart601713(arg1)
    print("OnSubStart601713")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1318.id, 0, 601713, 15, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
    this:EnablePlayerInputByQuest(true)
end

function Quest6017:OnSubFinish601713(arg1)
    print("OnSubFinish601713")
    this:NpcDestroyImmediately(20324, npcs.Npc1318.alias)
end

function Quest6017:OnSubFailed601713(arg1)
    print("OnSubFailed601713")
    this:DestroyQuestNpcActor(npcs.Npc1318.alias, 20324)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
end

function Quest6017:OnSubStart601714(arg1)
    print("OnSubStart601714")
end

function Quest6017:OnSubFinish601714(arg1)
    print("OnSubFinish601714")
end

function Quest6017:OnSubStart601715(arg1)
    print("OnSubStart601715")
end

function Quest6017:OnSubFinish601715(arg1)
    print("OnSubFinish601715")
end

function Quest6017:OnSubStart601708(arg1)
    print("OnSubStart601708")
    this:NpcCreateWithNoBlackData(601708, 0, npcs.Npc1318.id, 0, 20, 601720, datas.NoBlackDataNormal)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
    this:EnablePlayerInputByQuest(true)
end

function Quest6017:OnSubFinish601708(arg1)
    print("OnSubFinish601708")
    this:NpcDestroyImmediately(20324, npcs.Npc1318.alias)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
end

function Quest6017:OnSubFailed601708(arg1)
    print("OnSubFailed601708")
    this:DestroyQuestNpcActor(npcs.Npc1318.alias, 20324)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
end

function Quest6017:OnSubStart601718(arg1)
    print("OnSubStart601718")
    this:DeployStoryByQuest(110601709)
end

function Quest6017:OnSubFinish601718(arg1)
    print("OnSubFinish601718")
end

function Quest6017:OnSubFailed601718(arg1)
    print("OnSubFailed601718")
    this:CancelStoryByQuest(110601709)
end

function Quest6017:OnSubStart601709(arg1)
    print("OnSubStart601709")
    this:CreateQuestNpc(arg1, npcs.Npc16358.id, 0, false, 0)
    this:DeployStoryByQuest(110601709)
end

function Quest6017:OnSubFinish601709(arg1)
    print("OnSubFinish601709")
    this:NpcDestroyImmediately(20324, npcs.Npc16358.alias)
    this:CancelStoryByQuest(110601709)
end

function Quest6017:OnSubStart601710(arg1)
    print("OnSubStart601710")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1310.id, 0, 601710, 5, true)
end

function Quest6017:OnSubFinish601710(arg1)
    print("OnSubFinish601710")
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 3)
end

return Quest6017
