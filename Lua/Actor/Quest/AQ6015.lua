require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6015 = class("Quest6015", QuestActorProxy)
Quest6015.defaultAlias = "Quest6015"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6015:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601501"] = self.OnSubStart601501,
        ["601502"] = self.OnSubStart601502,
        ["601514"] = self.OnSubStart601514,
        ["601505"] = self.OnSubStart601505,
        ["601506"] = self.OnSubStart601506,
        ["601507"] = self.OnSubStart601507,
        ["601504"] = self.OnSubStart601504,
        ["601512"] = self.OnSubStart601512,
        ["601513"] = self.OnSubStart601513,
        ["601508"] = self.OnSubStart601508,
        ["601509"] = self.OnSubStart601509,
        ["601510"] = self.OnSubStart601510,
        ["601518"] = self.OnSubStart601518,
        ["601521"] = self.OnSubStart601521,
        ["601520"] = self.OnSubStart601520,
        ["601519"] = self.OnSubStart601519,
        ["601503"] = self.OnSubStart601503,
        ["601517"] = self.OnSubStart601517,
        ["601511"] = self.OnSubStart601511,
        ["601515"] = self.OnSubStart601515,
        ["601516"] = self.OnSubStart601516
    }
end

function Quest6015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601501"] = self.OnSubFinish601501,
        ["601502"] = self.OnSubFinish601502,
        ["601514"] = self.OnSubFinish601514,
        ["601505"] = self.OnSubFinish601505,
        ["601506"] = self.OnSubFinish601506,
        ["601507"] = self.OnSubFinish601507,
        ["601504"] = self.OnSubFinish601504,
        ["601512"] = self.OnSubFinish601512,
        ["601513"] = self.OnSubFinish601513,
        ["601508"] = self.OnSubFinish601508,
        ["601509"] = self.OnSubFinish601509,
        ["601510"] = self.OnSubFinish601510,
        ["601518"] = self.OnSubFinish601518,
        ["601521"] = self.OnSubFinish601521,
        ["601520"] = self.OnSubFinish601520,
        ["601519"] = self.OnSubFinish601519,
        ["601503"] = self.OnSubFinish601503,
        ["601517"] = self.OnSubFinish601517,
        ["601511"] = self.OnSubFinish601511,
        ["601515"] = self.OnSubFinish601515,
        ["601516"] = self.OnSubFinish601516
    }
end

function Quest6015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["601505"] = self.OnSubFailed601505,
        ["601506"] = self.OnSubFailed601506,
        ["601507"] = self.OnSubFailed601507,
        ["601504"] = self.OnSubFailed601504,
        ["601512"] = self.OnSubFailed601512,
        ["601509"] = self.OnSubFailed601509,
        ["601510"] = self.OnSubFailed601510,
        ["601518"] = self.OnSubFailed601518,
        ["601521"] = self.OnSubFailed601521,
        ["601503"] = self.OnSubFailed601503,
        ["601517"] = self.OnSubFailed601517,
        ["601515"] = self.OnSubFailed601515,
        ["601516"] = self.OnSubFailed601516
    }
end

function Quest6015:Start()
    print("Start")
end

function Quest6015:OnDestroy()
    print("OnDestroy")
end

function Quest6015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6015:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q601502TransmitTrigger")
    this:ActorDestroy("Q601503TransmitTrigger")
    this:ActorDestroy("Q601504transmitTrigger")
    this:ActorDestroy("Q601510QuestTrigger")
    this:ActorDestroy("Q601503Trigger")
    this:ActorDestroy("Q601514DungeonTrigger")
    this:ActorDestroy("Q601504transmit")
    this:ActorDestroy("Q601508EnterDungeon")
    this:ActorDestroy("Q601515Transmit")
    this:ActorDestroy("Q601510Kaiche")
    this:ActorDestroy("Q6015LYRkaiche")
end

function Quest6015:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6015:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6015:PlayerEnterDungeonWithDataAndSceneID(currSceneID, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if currSceneID ~= sceneData.currSceneID then
        this:PlayerEnterDungeonWithData(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    end
end

function Quest6015:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6015:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest6015:OnSubStart601501(arg1)
    print("OnSubStart601501")
end

function Quest6015:OnSubFinish601501(arg1)
    print("OnSubFinish601501")
end

function Quest6015:OnSubStart601502(arg1)
    print("OnSubStart601502")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 601502, 50, true)
end

function Quest6015:OnSubFinish601502(arg1)
    print("OnSubFinish601502")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
    this:PlayerEnterDungeonWithDataAndSceneID(20321, 1, 1291, 601502, 1, datas.PlayerEnterDungeonDataShojoIn, nil, nil)
end

function Quest6015:OnSubStart601514(arg1)
    print("OnSubStart601514")
    this:RecycleAllRes()
end

function Quest6015:OnSubFinish601514(arg1)
    print("OnSubFinish601514")
end

function Quest6015:OnSubStart601505(arg1)
    print("OnSubStart601505")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1318.id, 0, 601505, 30, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiAQ6015Columbina")
    actorUtils.BanUIByQuest(16, true, 6015)
    actorUtils.BanUIByQuest(27, true, 6015)
    actorUtils.SetOperationCardProgress(11)
end

function Quest6015:OnSubFinish601505(arg1)
    print("OnSubFinish601505")
    this:NpcDestroyImmediately(20321, npcs.Npc1318.alias)
    this:SetNavigationByMainId(6015, true)
end

function Quest6015:OnSubFailed601505(arg1)
    print("OnSubFailed601505")
    this:DestroyNpcTrigger("Q601505N1318Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1318.alias, 20321)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiAQ6015Columbina")
    actorUtils.BanUIByQuest(16, false, 6015)
    actorUtils.BanUIByQuest(27, false, 6015)
    actorUtils.HideOperationCard()
end

function Quest6015:OnSubStart601506(arg1)
    print("OnSubStart601506")
    this:NpcCreateWithNoBlackData(601506, 1, npcs.Npc15387.id, 0, 20, 601506, datas.NoBlackDataNormal)
    this:GetQuestNpcActor(npcs.Npc15387.alias, 6015):DoFreeStyle(4100, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q6015LYRkaiche", "Actor/Gadget/Q6015LYRkaiche", 70900002, 0, points._Q6015LYRkaichePoint_.pos, points._Q6015LYRkaichePoint_.rot, true, false, 20321)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiAQ6015Columbina")
    actorUtils.BanUIByQuest(16, true, 6015)
    actorUtils.BanUIByQuest(27, true, 6015)
    actorUtils.SetOperationCardProgress(11)
end

function Quest6015:OnSubFinish601506(arg1)
    print("OnSubFinish601506")
    this:NpcDestroyImmediately(20321, npcs.Npc15387.alias)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:ActorDestroy("Q6015LYRkaiche")
    this:QuestNarratorTask(datas.Q601507Kaiche, nil)
end

function Quest6015:OnSubFailed601506(arg1)
    print("OnSubFailed601506")
    this:ActorDestroy("Q6015LYRkaiche")
    this:DestroyQuestNpcActor(npcs.Npc15387.alias, 20321)
    this:ActorDestroy("Q601506N15387Trigger")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiAQ6015Columbina")
    actorUtils.BanUIByQuest(16, false, 6015)
    actorUtils.BanUIByQuest(27, false, 6015)
    actorUtils.HideOperationCard()
end

function Quest6015:OnSubStart601507(arg1)
    print("OnSubStart601507")
    this:NpcCreateWithNoBlackData(601507, 1, npcs.Npc16182.id, 0, 20, 601507, datas.NoBlackDataNormal)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiAQ6015Columbina")
    actorUtils.BanUIByQuest(16, true, 6015)
    actorUtils.BanUIByQuest(27, true, 6015)
    actorUtils.SetOperationCardProgress(11)
end

function Quest6015:OnSubFinish601507(arg1)
    print("OnSubFinish601507")
    this:NpcDestroyImmediately(20321, npcs.Npc16182.alias)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiAQ6015Columbina")
    actorUtils.BanUIByQuest(16, false, 6015)
    actorUtils.BanUIByQuest(27, false, 6015)
    actorUtils.HideOperationCard()
end

function Quest6015:OnSubFailed601507(arg1)
    print("OnSubFailed601507")
    this:DestroyQuestNpcActor(npcs.Npc16182.alias, 20321)
    this:ActorDestroy("Q601507N16182Trigger")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiAQ6015Columbina")
    actorUtils.BanUIByQuest(16, false, 6015)
    actorUtils.BanUIByQuest(27, false, 6015)
    actorUtils.HideOperationCard()
end

function Quest6015:OnSubStart601504(arg1)
    print("OnSubStart601504")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1319.id, 0, 601504, 30, true)
    actorMgr:CreateActorWithPos("Q601504transmit", "Actor/Gadget/Q601504transmit", 70900002, 0, points._Q601504transmitPoint_.pos, points._Q601504transmitPoint_.rot, true, false, 20321)
end

function Quest6015:OnSubFinish601504(arg1)
    print("OnSubFinish601504")
    this:NpcDestroyImmediately(20321, npcs.Npc1319.alias)
    this:ActorDestroy("Q601504transmit")
end

function Quest6015:OnSubFailed601504(arg1)
    print("OnSubFailed601504")
    this:DestroyNpcTrigger("Q601504N1319Trigger")
    this:ActorDestroy("Q601504transmit")
    this:DestroyQuestNpcActor(npcs.Npc1319.alias, 20321)
    this:ActorDestroy("Q601504N1319Trigger")
    this:ActorDestroy("Q601504transmit")
end

function Quest6015:OnSubStart601512(arg1)
    print("OnSubStart601512")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1065.id, 0, 601512, 15, true)
    actorMgr:CreateActorWithPos("Q601504transmitTrigger", "Actor/Gadget/Q601504transmitTrigger", 70900002, 0, points._Q601504transmitTriggerPoint_.pos, points._Q601504transmitTriggerPoint_.rot, true, false, 20321)
end

function Quest6015:OnSubFinish601512(arg1)
    print("OnSubFinish601512")
    this:NpcDestroyImmediately(20321, npcs.Npc1065.alias)
    this:ActorDestroy("Q601504transmitTrigger")
    this:SetNavigationByMainId(6015, true)
end

function Quest6015:OnSubFailed601512(arg1)
    print("OnSubFailed601512")
    this:DestroyNpcTrigger("Q601512N1065Trigger")
    this:ActorDestroy("Q601504transmitTrigger")
    this:DestroyQuestNpcActor(npcs.Npc1065.alias, 20321)
    this:ActorDestroy("Q601504transmitTrigger")
    this:ActorDestroy("Q601512N1065Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1065.alias, 20321)
end

function Quest6015:OnSubStart601513(arg1)
    print("OnSubStart601513")
    this:CreateQuestNpc(arg1, npcs.Npc16289.id, 0, false, 0)
end

function Quest6015:OnSubFinish601513(arg1)
    print("OnSubFinish601513")
    this:NpcDestroyImmediately(20321, npcs.Npc16289.alias)
end

function Quest6015:OnSubStart601508(arg1)
    print("OnSubStart601508")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q601508EnterDungeon", "Actor/Gadget/Q601508EnterDungeon", 70900002, 0, points._Q601508EnterDungeonPoint_.pos, points._Q601508EnterDungeonPoint_.rot, true, false, 20321)
end

function Quest6015:OnSubFinish601508(arg1)
    print("OnSubFinish601508")
    this:ActorDestroy("Q601508EnterDungeon")
end

function Quest6015:OnSubStart601509(arg1)
    print("OnSubStart601509")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16183.id, 0, 601509, 20, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
end

function Quest6015:OnSubFinish601509(arg1)
    print("OnSubFinish601509")
    this:DestroyQuestNpcActor(npcs.Npc16183.alias, 20323)
    this:QuestNarratorTask(datas.Q601503Kaiche01, nil)
end

function Quest6015:OnSubFailed601509(arg1)
    print("OnSubFailed601509")
    this:DestroyNpcTrigger("Q601509N16183Trigger")
    this:DestroyQuestNpcActor(npcs.Npc16183.alias, 20323)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
    this:ActorDestroy("Q601509N16183Trigger")
    this:DestroyQuestNpcActor(npcs.Npc16183.alias, 20323)
end

function Quest6015:OnSubStart601510(arg1)
    print("OnSubStart601510")
    actorMgr:CreateActorWithPos("Q601510QuestTrigger", "Actor/Gadget/Q601510QuestTrigger", 70900002, 0, points._Q601510QuestTriggerPoint_.pos, points._Q601510QuestTriggerPoint_.rot, true, false, 20323)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
    actorMgr:CreateActorWithPos("Q601510Kaiche", "Actor/Gadget/Q601510Kaiche", 70900002, 0, points._Q601510KaichePoint_.pos, points._Q601510KaichePoint_.rot, true, false, 20323)
    this:DeployStoryByQuest(110601501)
    this:DeployStoryByQuest(110601510)
end

function Quest6015:OnSubFinish601510(arg1)
    print("OnSubFinish601510")
    this:ActorDestroy("Q601510QuestTrigger")
    this:GetQuestNpcActor(npcs.Npc16183.alias, 6015):Standby()
    this:GetQuestNpcActor(npcs.Npc16183.alias, 6015):ResetForceAvatarWalk()
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest6015:OnSubFailed601510(arg1)
    print("OnSubFailed601510")
    this:ActorDestroy("Q601510QuestTrigger")
    this:ActorDestroy("Q601510Kaiche")
    this:CancelStoryByQuest(110601501)
    this:CancelStoryByQuest(110601510)
    this:ActorDestroy("Q601510QuestTrigger")
    this:GetQuestNpcActor(npcs.Npc16183.alias, 6015):Standby()
    this:GetQuestNpcActor(npcs.Npc16183.alias, 6015):ResetForceAvatarWalk()
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
    this:ActorDestroy("Q601510Kaiche")
    this:DestroyQuestNpcActor(npcs.Npc16183.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16184.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16185.alias, 20323)
    this:CancelStoryByQuest(110601501)
    this:CancelStoryByQuest(110601510)
end

function Quest6015:OnSubStart601518(arg1)
    print("OnSubStart601518")
    this:DeployStoryByQuest(110601501)
    this:DeployStoryByQuest(110601510)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
end

function Quest6015:OnSubFinish601518(arg1)
    print("OnSubFinish601518")
    this:CancelStoryByQuest(110601501)
    this:CancelStoryByQuest(110601510)
end

function Quest6015:OnSubFailed601518(arg1)
    print("OnSubFailed601518")
    this:CancelStoryByQuest(110601501)
    this:CancelStoryByQuest(110601510)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
    this:ActorDestroy("Q601518NoBlackTrigger")
    this:DestroyQuestNpcActor(npcs.Npc16183.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16184.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16185.alias, 20323)
    this:CancelStoryByQuest(110601501)
    this:CancelStoryByQuest(110601510)
end

function Quest6015:OnSubStart601521(arg1)
    print("OnSubStart601521")
    this:CreateQuestNpc(arg1, npcs.Npc16183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16184.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16184.alias, 6015):DoFreeStyle(2, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16185.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16183.alias, 6015):Standby()
    this:GetQuestNpcActor(npcs.Npc16184.alias, 6015):Standby()
    this:GetQuestNpcActor(npcs.Npc16185.alias, 6015):Standby()
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
end

function Quest6015:OnSubFinish601521(arg1)
    print("OnSubFinish601521")
end

function Quest6015:OnSubFailed601521(arg1)
    print("OnSubFailed601521")
    this:DestroyQuestNpcActor(npcs.Npc16183.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16184.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16185.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16183.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16184.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16185.alias, 20323)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
end

function Quest6015:OnSubStart601520(arg1)
    print("OnSubStart601520")
end

function Quest6015:OnSubFinish601520(arg1)
    print("OnSubFinish601520")
    this:GetQuestNpcActor(npcs.Npc16185.alias, 6015):WalkToRouteTask(datas.LunarSis03Walk01, nil, nil, nil)
end

function Quest6015:OnSubStart601519(arg1)
    print("OnSubStart601519")
end

function Quest6015:OnSubFinish601519(arg1)
    print("OnSubFinish601519")
    this:GetQuestNpcActor(npcs.Npc16183.alias, 6015):WalkToRouteTask(datas.LunarSis03Walk02, nil, nil, nil)
end

function Quest6015:OnSubStart601503(arg1)
    print("OnSubStart601503")
    actorMgr:CreateActorWithPos("Q601503Trigger", "Actor/Gadget/Q601503Trigger", 70900002, 0, points._Q601503TriggerPoint_.pos, points._Q601503TriggerPoint_.rot, true, false, 20323)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
end

function Quest6015:OnSubFinish601503(arg1)
    print("OnSubFinish601503")
    this:ActorDestroy("Q601503Trigger")
    this:GetQuestNpcActor(npcs.Npc16183.alias, 6015):Standby()
    this:GetQuestNpcActor(npcs.Npc16185.alias, 6015):Standby()
end

function Quest6015:OnSubFailed601503(arg1)
    print("OnSubFailed601503")
    this:ActorDestroy("Q601503Trigger")
    this:ActorDestroy("Q601503Trigger")
    this:GetQuestNpcActor(npcs.Npc16183.alias, 6015):Standby()
    this:GetQuestNpcActor(npcs.Npc16185.alias, 6015):Standby()
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
    this:DestroyQuestNpcActor(npcs.Npc16183.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16184.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16185.alias, 20323)
end

function Quest6015:OnSubStart601517(arg1)
    print("OnSubStart601517")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestWalk")
    this:RequestInteractionWithCameraLookTrigger("Q601517TalkTrigger", 6015, npcs.Npc16184.alias, 20323, {x = 764.536, y = 2.648, z = 756.467}, 20, 601525, true, false)
end

function Quest6015:OnSubFinish601517(arg1)
    print("OnSubFinish601517")
    this:NpcDestroyImmediately(20323, npcs.Npc16183.alias)
    this:NpcDestroyImmediately(20323, npcs.Npc16184.alias)
    this:NpcDestroyImmediately(20323, npcs.Npc16185.alias)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
end

function Quest6015:OnSubFailed601517(arg1)
    print("OnSubFailed601517")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestWalk")
    this:ActorDestroy("Q601517TalkTrigger")
    this:DestroyQuestNpcActor(npcs.Npc16183.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16184.alias, 20323)
    this:DestroyQuestNpcActor(npcs.Npc16185.alias, 20323)
end

function Quest6015:OnSubStart601511(arg1)
    print("OnSubStart601511")
    this:RecycleAllRes()
    if sceneData.currSceneID == 20323 then
        this:PlayerEnterDungeonWithData(1, 1291, 601511, 1, datas.EnterDungeonWithSaving, nil, nil)
    end
end

function Quest6015:OnSubFinish601511(arg1)
    print("OnSubFinish601511")
    this:SetNavigationByMainId(6015, true)
end

function Quest6015:OnSubStart601515(arg1)
    print("OnSubStart601515")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1080.id, 0, 601515, 20, true)
end

function Quest6015:OnSubFinish601515(arg1)
    print("OnSubFinish601515")
    this:NpcDestroyImmediately(20321, npcs.Npc1080.alias)
end

function Quest6015:OnSubFailed601515(arg1)
    print("OnSubFailed601515")
    this:DestroyNpcTrigger("Q601515N1080Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1080.alias, 20321)
    this:DestroyQuestNpcActor(npcs.Npc1080.alias, 20321)
    this:ActorDestroy("Q601515N1080Trigger")
end

function Quest6015:OnSubStart601516(arg1)
    print("OnSubStart601516")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1310.id, 0, 601516, 30, true)
    actorMgr:CreateActorWithPos("Q601515Transmit", "Actor/Gadget/Q601515Transmit", 70900002, 0, points._Q601515TransmitPoint_.pos, points._Q601515TransmitPoint_.rot, true, false, 20321)
end

function Quest6015:OnSubFinish601516(arg1)
    print("OnSubFinish601516")
    this:NpcDestroyImmediately(20321, npcs.Npc1310.alias)
    this:ActorDestroy("Q601515Transmit")
end

function Quest6015:OnSubFailed601516(arg1)
    print("OnSubFailed601516")
    this:DestroyNpcTrigger("Q601516N1310Trigger")
    this:ActorDestroy("Q601515Transmit")
    this:DestroyQuestNpcActor(npcs.Npc1310.alias, 20321)
    this:ActorDestroy("Q601515Transmit")
    this:DestroyQuestNpcActor(npcs.Npc1310.alias, 20321)
    this:ActorDestroy("Q601516N1310Trigger")
end

return Quest6015
