require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12008 = class("Quest12008", QuestActorProxy)
Quest12008.defaultAlias = "Quest12008"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12008:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1200801"] = self.OnSubStart1200801,
        ["1200802"] = self.OnSubStart1200802,
        ["1200809"] = self.OnSubStart1200809,
        ["1200806"] = self.OnSubStart1200806,
        ["1200810"] = self.OnSubStart1200810,
        ["1200807"] = self.OnSubStart1200807,
        ["1200811"] = self.OnSubStart1200811,
        ["1200808"] = self.OnSubStart1200808,
        ["1200812"] = self.OnSubStart1200812,
        ["1200803"] = self.OnSubStart1200803,
        ["1200816"] = self.OnSubStart1200816,
        ["1200804"] = self.OnSubStart1200804,
        ["1200813"] = self.OnSubStart1200813,
        ["1200814"] = self.OnSubStart1200814,
        ["1200815"] = self.OnSubStart1200815,
        ["1200817"] = self.OnSubStart1200817,
        ["1200818"] = self.OnSubStart1200818,
        ["1200819"] = self.OnSubStart1200819,
        ["1200805"] = self.OnSubStart1200805
    }
end

function Quest12008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1200801"] = self.OnSubFinish1200801,
        ["1200802"] = self.OnSubFinish1200802,
        ["1200809"] = self.OnSubFinish1200809,
        ["1200806"] = self.OnSubFinish1200806,
        ["1200810"] = self.OnSubFinish1200810,
        ["1200807"] = self.OnSubFinish1200807,
        ["1200811"] = self.OnSubFinish1200811,
        ["1200808"] = self.OnSubFinish1200808,
        ["1200812"] = self.OnSubFinish1200812,
        ["1200803"] = self.OnSubFinish1200803,
        ["1200816"] = self.OnSubFinish1200816,
        ["1200804"] = self.OnSubFinish1200804,
        ["1200813"] = self.OnSubFinish1200813,
        ["1200814"] = self.OnSubFinish1200814,
        ["1200815"] = self.OnSubFinish1200815,
        ["1200817"] = self.OnSubFinish1200817,
        ["1200818"] = self.OnSubFinish1200818,
        ["1200819"] = self.OnSubFinish1200819,
        ["1200805"] = self.OnSubFinish1200805
    }
end

function Quest12008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1200801"] = self.OnSubFailed1200801,
        ["1200802"] = self.OnSubFailed1200802,
        ["1200809"] = self.OnSubFailed1200809,
        ["1200806"] = self.OnSubFailed1200806,
        ["1200810"] = self.OnSubFailed1200810,
        ["1200807"] = self.OnSubFailed1200807,
        ["1200811"] = self.OnSubFailed1200811,
        ["1200808"] = self.OnSubFailed1200808,
        ["1200812"] = self.OnSubFailed1200812,
        ["1200803"] = self.OnSubFailed1200803,
        ["1200816"] = self.OnSubFailed1200816,
        ["1200804"] = self.OnSubFailed1200804,
        ["1200813"] = self.OnSubFailed1200813,
        ["1200814"] = self.OnSubFailed1200814,
        ["1200815"] = self.OnSubFailed1200815,
        ["1200817"] = self.OnSubFailed1200817,
        ["1200818"] = self.OnSubFailed1200818,
        ["1200819"] = self.OnSubFailed1200819,
        ["1200805"] = self.OnSubFailed1200805
    }
end

function Quest12008:Start()
    print("Start")
end

function Quest12008:OnDestroy()
    print("OnDestroy")
end

function Quest12008:OnMainFinished(arg1)
    print("OnMainFinished")
    this:SafeDestroyQuestNpc(npcs.Npc3172Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3171Data.alias, 3)
end

function Quest12008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12008:OnMovePause()
    print("OnMovePause")
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    local actor = actorMgr:GetActor("12008")
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest12008:FinishWalkQuest1()
    print("FinishWalkQuest1")
    print("FinishSubQuest1200809")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1200903FesSouvenir3").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1200809)
end

function Quest12008:OnMoveResume()
    print("OnMoveResume")
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest12008:FinishWalkQuest2()
    print("FinishWalkQuest2")
    print("FinishSubQuest1200810")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q12008FesDraw").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1200810)
end

function Quest12008:ClearFin()
    print("ClearFin")
    this:SafeDestroyQuestNpc(npcs.Npc1013DataCSAfter.alias, 3)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:SafeDestroyQuestNpc(npcs.Npc12038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12111Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12112Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12113Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12114Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12115Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12116Data.alias, 3)
    this:LightNotifyTo("Npc3149", 0, true)
    this:LightNotifyTo("Npc3150", 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc3171Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3172Data.alias, 3)
end

function Quest12008:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(1200817) == 2 then
            actor:FinishQuestID(false, 1200817)
        end

        print("Start Talk Hide Time Change")
    end

    if arg1 == 2 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(1200818) == 2 then
            actor:FinishQuestID(false, 1200818)
        end

        print("Start Talk refresh Ema")
    end

    if arg1 == 3 then
        print("Show Ema UI")
        actorMgr:GetActor(clientData.ActorAlias):ShowTutorialDialog(2010)
    end

    if arg1 == 4 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(1200819) == 2 then
            actor:FinishQuestID(false, 1200819)
        end

        print("Change time in last dialogue")
    end
end

function Quest12008:FinishWalkQuest4()
    print("FinishWalkQuest4")
    print("FinishSubQuest1200812")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q12008FesEma").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1200812)
end

function Quest12008:OnRewind(arg1)
    print("OnRewind")
    print("Execute Onrewind Function")
    if arg1.QuestConfigId == subIDs.q1200804 then
        self:OnRewind1200804()
    end
end

function Quest12008:ClearPaimon()
    print("ClearPaimon")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest12008:FinishWalkQuest3()
    print("FinishWalkQuest3")
    print("FinishSubQuest1200811")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1200905FesFood").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1200811)
end

function Quest12008:OnRewind1200804()
    print("OnRewind1200804")
    print("OnRewind1200804")
    self:RequestInteraction("Npc1013")
end

function Quest12008:OnSubStart1200801(arg1)
    print("OnSubStart1200801")
    actorMgr:CreateActorWithPos(datas.Q12008TriggerFesIn_.alias, datas.Q12008TriggerFesIn_.script, datas.Q12008TriggerFesIn_.id, 0, datas.Q12008TriggerFesIn_.point.pos, datas.Q12008TriggerFesIn_.point.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc3172Data.id, 9)
    this:CreateQuestNpc(arg1, npcs.Npc12038Data.id, 10)
    this:CreateQuestNpc(arg1, npcs.Npc12039Data.id, 11)
    this:CreateQuestNpc(arg1, npcs.Npc3171Data.id, 8)
    this:CreateQuestNpc(arg1, npcs.Npc12111Data.id, 12)
    this:CreateQuestNpc(arg1, npcs.Npc12112Data.id, 13)
    this:CreateQuestNpc(arg1, npcs.Npc12113Data.id, 14)
    this:CreateQuestNpc(arg1, npcs.Npc12114Data.id, 15)
    this:CreateQuestNpc(arg1, npcs.Npc12115Data.id, 16)
    this:CreateQuestNpc(arg1, npcs.Npc12116Data.id, 17)
    this:GetQuestNpcActor(npcs.Npc12111Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12112Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12113Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12114Data.alias):DoFreeStyle(1090, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12115Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12116Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc3171Data.alias):DoFreeStyle(4560, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12038Data.alias):SitOnChair(0)
    this:NotifyTo("Npc3149", 1, true)
    this:NotifyTo("Npc3150", 1, true)
end

function Quest12008:OnSubFinish1200801(arg1)
    print("OnSubFinish1200801")
end

function Quest12008:OnSubFailed1200801(arg1)
    print("OnSubFailed1200801")
end

function Quest12008:OnSubStart1200802(arg1)
    print("OnSubStart1200802")
    print("OnSubStart1200802")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1013DataFesIn.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1013DataFesIn.id, 1)
        self:RequestInteraction("Npc1013")
    end, nil, questNpcCreateTask)
end

function Quest12008:OnSubFinish1200802(arg1)
    print("OnSubFinish1200802")
    this:ActionSafeCall(self.ClearPaimon)
end

function Quest12008:OnSubFailed1200802(arg1)
    print("OnSubFailed1200802")
end

function Quest12008:OnSubStart1200809(arg1)
    print("OnSubStart1200809")
    print("OnSubStart1200809")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    self:NpcForceAvatarWalkByDist(questNpcActor, 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.8)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 4, 2, -1, self.FinishWalkQuest1, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    questNpcActor:EnableInteraction(false)
end

function Quest12008:OnSubFinish1200809(arg1)
    print("OnSubFinish1200809")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    questNpcActor:ResetForceAvatarWalk()
end

function Quest12008:OnSubFailed1200809(arg1)
    print("OnSubFailed1200809")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest12008:OnSubStart1200806(arg1)
    print("OnSubStart1200806")
    this:GetQuestNpcActor(npcs.Npc12111Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12112Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12113Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12114Data.alias):DoFreeStyle(1090, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12115Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12116Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc12038Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc3171Data.alias):DoFreeStyle(4560, true, nil, true, true, false)
    this:NotifyTo("Npc3149", 1, true)
    this:NotifyTo("Npc3150", 1, true)
    self.ActionSafeCall(self, function()
        self:GetQuestNpcActor(npcs.Npc1013DataCSAfter.alias):UnSpawnAttach("MaskKitsune_Ayaka")
        globalActor:UnSpawnAttach("MaskKitsune_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("MaskKitsune_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("MaskKitsune_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("MaskKitsune_PlayerGirl", 10000007)
    end)
end

function Quest12008:OnSubFinish1200806(arg1)
    print("OnSubFinish1200806")
    this:ActionSafeCall(self.ClearPaimon)
end

function Quest12008:OnSubFailed1200806(arg1)
    print("OnSubFailed1200806")
end

function Quest12008:OnSubStart1200810(arg1)
    print("OnSubStart1200810")
    print("OnSubStart1200810")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013DataMask.alias)
        questNpcActor:Standby()
        questNpcActor:SpawnAttach("MaskKitsune_Ayaka")
        self:NpcForceAvatarWalkByDist(questNpcActor, 2.5, 4.5)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:SetWalkSpeedRatio(0.8)
        self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 4, 2, -1, self.FinishWalkQuest2, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
        questNpcActor:EnableInteraction(false)
        globalActor:SpawnAttach("MaskKitsune_PlayerBoy", 10000005)
        globalActor:SpawnAttach("MaskKitsune_PlayerGirl", 10000007)
        globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerBoy", 10000005)
        globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerGirl", 10000007)
    end)
end

function Quest12008:OnSubFinish1200810(arg1)
    print("OnSubFinish1200810")
    print("OnSubFinish1200810")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    questNpcActor:ResetForceAvatarWalk()
end

function Quest12008:OnSubFailed1200810(arg1)
    print("OnSubFailed1200810")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest12008:OnSubStart1200807(arg1)
    print("OnSubStart1200807")
    print("OnSubStart1200807")
    self:GetQuestNpcActor(npcs.Npc12111Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12112Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12113Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12114Data.alias):DoFreeStyle(1090, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12115Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12116Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12038Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc1013DataCheck.alias):SpawnAttach("MaskKitsune_Ayaka")
    globalActor:SpawnAttach("MaskKitsune_PlayerBoy", 10000005)
    globalActor:SpawnAttach("MaskKitsune_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerGirl", 10000007)
    self:NotifyTo("Npc3149", 1, true)
    self:NotifyTo("Npc3150", 1, true)
end

function Quest12008:OnSubFinish1200807(arg1)
    print("OnSubFinish1200807")
    this:ActionSafeCall(self.ClearPaimon)
end

function Quest12008:OnSubFailed1200807(arg1)
    print("OnSubFailed1200807")
end

function Quest12008:OnSubStart1200811(arg1)
    print("OnSubStart1200811")
    print("OnSubStart1200811")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013DataCheck.alias)
    questNpcActor:Standby()
    self:NpcForceAvatarWalkByDist(questNpcActor, 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.8)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData3, 4, 2, -1, self.FinishWalkQuest3, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    questNpcActor:EnableInteraction(false)
end

function Quest12008:OnSubFinish1200811(arg1)
    print("OnSubFinish1200811")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    questNpcActor:ResetForceAvatarWalk()
end

function Quest12008:OnSubFailed1200811(arg1)
    print("OnSubFailed1200811")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest12008:OnSubStart1200808(arg1)
    print("OnSubStart1200808")
    print("OnSubStart1200808")
    self:GetQuestNpcActor(npcs.Npc12111Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12112Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12113Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12114Data.alias):DoFreeStyle(1090, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12115Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12116Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1013DataFood.alias):SpawnAttach("MaskKitsune_Ayaka")
    globalActor:SpawnAttach("MaskKitsune_PlayerBoy", 10000005)
    globalActor:SpawnAttach("MaskKitsune_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerGirl", 10000007)
    self:NotifyTo("Npc3149", 1, true)
    self:NotifyTo("Npc3150", 1, true)
end

function Quest12008:OnSubFinish1200808(arg1)
    print("OnSubFinish1200808")
    this:ActionSafeCall(self.ClearPaimon)
end

function Quest12008:OnSubFailed1200808(arg1)
    print("OnSubFailed1200808")
end

function Quest12008:OnSubStart1200812(arg1)
    print("OnSubStart1200812")
    print("OnSubStart1200811")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1013DataFood.alias)
    questNpcActor:Standby()
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.8)
    self.NpcBeFollowTaskByRoutePointsWithDiffLen(self, questNpcActor, datas.RoutePointsData4, 4, 2, -1, self.FinishWalkQuest4, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    questNpcActor:EnableInteraction(false)
    self.CallDelay(self, 2, function()
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest12008:OnSubFinish1200812(arg1)
    print("OnSubFinish1200812")
    print("OnSubFinish1200812")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    questNpcActor:ResetForceAvatarWalk()
    questNpcActor:EnableInteraction(true)
    local actor = actorMgr:GetActor("Q12008TriggerFesOut")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12008:OnSubFailed1200812(arg1)
    print("OnSubFailed1200812")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest12008:OnSubStart1200803(arg1)
    print("OnSubStart1200803")
    print("OnSubStart1200803")
    self:GetQuestNpcActor(npcs.Npc12111Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12112Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12113Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12114Data.alias):DoFreeStyle(1090, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12115Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12116Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1013DataFesFin.alias):SpawnAttach("MaskKitsune_Ayaka")
    globalActor:SpawnAttach("MaskKitsune_PlayerBoy", 10000005)
    globalActor:SpawnAttach("MaskKitsune_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerGirl", 10000007)
    self:NotifyTo("Npc3149", 1, true)
    self:NotifyTo("Npc3150", 1, true)
end

function Quest12008:OnSubFinish1200803(arg1)
    print("OnSubFinish1200803")
    print("OnSubFinish1200803")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1013DataCSPos.alias})
    local actor = actorMgr:GetActor("Q12008TriggerFesOut")
    if actor ~= nil then
        actor:DestroySelf()
    end

    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
        self:GetQuestNpcActor(npcs.Npc1013DataCSAfter.alias):UnSpawnAttach("MaskKitsune_Ayaka")
        globalActor:UnSpawnAttach("MaskKitsune_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("MaskKitsune_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("MaskKitsune_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("MaskKitsune_PlayerGirl", 10000007)
        self:TransmitPlayerWithTextByQuestId(1200803, 1, {"QUEST_Message_Q1200804"}, 3, nil, function()
            self:LevelLoadFinishSafeCall(function()
                self:CreateQuestNpc(arg1, npcs.Npc1013DataCSPos.id, 3)
                self:RequestInteraction("Npc1013")
            end)
        end, questNpcCreateTask)
    end)
end

function Quest12008:OnSubFailed1200803(arg1)
    print("OnSubFailed1200803")
end

function Quest12008:OnSubStart1200816(arg1)
    print("OnSubStart1200816")
    actorMgr:CreateActorWithPos(datas.Q12008TriggerFesOut_.alias, datas.Q12008TriggerFesOut_.script, datas.Q12008TriggerFesOut_.id, 0, datas.Q12008TriggerFesOut_.point.pos, datas.Q12008TriggerFesOut_.point.rot, true, false, 3)
end

function Quest12008:OnSubFinish1200816(arg1)
    print("OnSubFinish1200816")
end

function Quest12008:OnSubFailed1200816(arg1)
    print("OnSubFailed1200816")
    print("OnSubFailed1200816")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013DataFesIn.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    self:GetQuestNpcActor(npcs.Npc1013DataCSAfter.alias):UnSpawnAttach("MaskKitsune_Ayaka")
    globalActor:UnSpawnAttach("MaskKitsune_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("MaskKitsune_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("MaskKitsune_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("MaskKitsune_PlayerGirl", 10000007)
    self:SafeDestroyQuestNpc(npcs.Npc1013DataFesIn.alias, 3)
end

function Quest12008:OnSubStart1200804(arg1)
    print("OnSubStart1200804")
    print("OnSubStart1200804")
    self:NotifyTo("Npc3149", 1, true)
    self:NotifyTo("Npc3150", 1, true)
end

function Quest12008:OnSubFinish1200804(arg1)
    print("OnSubFinish1200804")
    self.ActionSafeCall(self, function()
        self:GetQuestNpcActor(npcs.Npc1013DataCSAfter.alias):UnSpawnAttach("MaskKitsune_Ayaka")
        globalActor:UnSpawnAttach("MaskKitsune_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("MaskKitsune_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("MaskKitsune_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("MaskKitsune_PlayerGirl", 10000007)
        self:ClearFin()
    end)
end

function Quest12008:OnSubFailed1200804(arg1)
    print("OnSubFailed1200804")
    this:RequestInteraction("Npc1013")
end

function Quest12008:OnSubStart1200813(arg1)
    print("OnSubStart1200813")
end

function Quest12008:OnSubFinish1200813(arg1)
    print("OnSubFinish1200813")
end

function Quest12008:OnSubFailed1200813(arg1)
    print("OnSubFailed1200813")
end

function Quest12008:OnSubStart1200814(arg1)
    print("OnSubStart1200814")
end

function Quest12008:OnSubFinish1200814(arg1)
    print("OnSubFinish1200814")
end

function Quest12008:OnSubFailed1200814(arg1)
    print("OnSubFailed1200814")
end

function Quest12008:OnSubStart1200815(arg1)
    print("OnSubStart1200815")
end

function Quest12008:OnSubFinish1200815(arg1)
    print("OnSubFinish1200815")
end

function Quest12008:OnSubFailed1200815(arg1)
    print("OnSubFailed1200815")
end

function Quest12008:OnSubStart1200817(arg1)
    print("OnSubStart1200817")
end

function Quest12008:OnSubFinish1200817(arg1)
    print("OnSubFinish1200817")
end

function Quest12008:OnSubFailed1200817(arg1)
    print("OnSubFailed1200817")
end

function Quest12008:OnSubStart1200818(arg1)
    print("OnSubStart1200818")
end

function Quest12008:OnSubFinish1200818(arg1)
    print("OnSubFinish1200818")
end

function Quest12008:OnSubFailed1200818(arg1)
    print("OnSubFailed1200818")
end

function Quest12008:OnSubStart1200819(arg1)
    print("OnSubStart1200819")
end

function Quest12008:OnSubFinish1200819(arg1)
    print("OnSubFinish1200819")
    print("OnSubFinish1200819")
    self:GetQuestNpcActor(npcs.Npc1013DataCSPos.alias):SpawnAttach("MaskKitsune_Ayaka")
    globalActor:SpawnAttach("MaskKitsune_PlayerBoy", 10000005)
    globalActor:SpawnAttach("MaskKitsune_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("MaskKitsune_PlayerGirl", 10000007)
end

function Quest12008:OnSubFailed1200819(arg1)
    print("OnSubFailed1200819")
end

function Quest12008:OnSubStart1200805(arg1)
    print("OnSubStart1200805")
    this:CreateQuestNpc(arg1, npcs.Npc1013DataCSAfter.id, 4)
end

function Quest12008:OnSubFinish1200805(arg1)
    print("OnSubFinish1200805")
    this:ActionSafeCall(self.ClearFin)
end

function Quest12008:OnSubFailed1200805(arg1)
    print("OnSubFailed1200805")
end

return Quest12008
