require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6020 = class("Quest6020", QuestActorProxy)
Quest6020.defaultAlias = "Quest6020"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6020:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["602018"] = self.OnSubStart602018,
        ["602001"] = self.OnSubStart602001,
        ["602012"] = self.OnSubStart602012,
        ["602013"] = self.OnSubStart602013,
        ["602003"] = self.OnSubStart602003,
        ["602002"] = self.OnSubStart602002,
        ["602014"] = self.OnSubStart602014,
        ["602015"] = self.OnSubStart602015,
        ["602004"] = self.OnSubStart602004,
        ["602021"] = self.OnSubStart602021,
        ["602020"] = self.OnSubStart602020,
        ["602019"] = self.OnSubStart602019,
        ["602005"] = self.OnSubStart602005,
        ["602010"] = self.OnSubStart602010,
        ["602011"] = self.OnSubStart602011,
        ["602006"] = self.OnSubStart602006,
        ["602007"] = self.OnSubStart602007,
        ["602008"] = self.OnSubStart602008,
        ["602009"] = self.OnSubStart602009,
        ["602016"] = self.OnSubStart602016,
        ["602022"] = self.OnSubStart602022,
        ["602023"] = self.OnSubStart602023,
        ["602024"] = self.OnSubStart602024,
        ["602017"] = self.OnSubStart602017,
        ["602025"] = self.OnSubStart602025
    }
end

function Quest6020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["602018"] = self.OnSubFinish602018,
        ["602001"] = self.OnSubFinish602001,
        ["602012"] = self.OnSubFinish602012,
        ["602013"] = self.OnSubFinish602013,
        ["602003"] = self.OnSubFinish602003,
        ["602002"] = self.OnSubFinish602002,
        ["602014"] = self.OnSubFinish602014,
        ["602015"] = self.OnSubFinish602015,
        ["602004"] = self.OnSubFinish602004,
        ["602021"] = self.OnSubFinish602021,
        ["602020"] = self.OnSubFinish602020,
        ["602019"] = self.OnSubFinish602019,
        ["602005"] = self.OnSubFinish602005,
        ["602010"] = self.OnSubFinish602010,
        ["602011"] = self.OnSubFinish602011,
        ["602006"] = self.OnSubFinish602006,
        ["602007"] = self.OnSubFinish602007,
        ["602008"] = self.OnSubFinish602008,
        ["602009"] = self.OnSubFinish602009,
        ["602016"] = self.OnSubFinish602016,
        ["602022"] = self.OnSubFinish602022,
        ["602023"] = self.OnSubFinish602023,
        ["602024"] = self.OnSubFinish602024,
        ["602017"] = self.OnSubFinish602017,
        ["602025"] = self.OnSubFinish602025
    }
end

function Quest6020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6020:Start()
    print("Start")
end

function Quest6020:OnDestroy()
    print("OnDestroy")
end

function Quest6020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6020:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q602008Trigger")
    this:ActorDestroy("Q602024Trigger")
    this:BanCrowdNpc(3607, 7, datas.InstanceIDList_602003, false, true)
    this:BanCrowdNpc(1204, 2, datas.InstanceIDList_602008, false, true)
    this:BanCrowdNpc(1204, 1, datas.InstanceIDList_602008_1, false, true)
    this:BanCrowdNpc(1204, 1, nil, false, true)
    this:BanCrowdNpc(1204, 2, nil, false, true)
end

function Quest6020:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6020:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6020:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6020:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6020:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6020:BossDungeonRewind()
    this:ActorDestroy("Q602011N1316Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1316.alias, 20286)
end

function Quest6020:DoNotRobChair()
    if self:IsPlayerSitOnChair(1204, M.Pos(-4.927, 1.9264, 5.214), 2) then
        self:PlayerStandFromChair(0)
    end
end

function Quest6020:OnSubStart602018(arg1)
    print("OnSubStart602018")
    actorUtils.FinishQuestID(false, 602018)
end

function Quest6020:OnSubFinish602018(arg1)
    print("OnSubFinish602018")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6020:OnSubStart602001(arg1)
    print("OnSubStart602001")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 602001, 10, true)
end

function Quest6020:OnSubFinish602001(arg1)
    print("OnSubFinish602001")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_602001, nil, nil, nil)
end

function Quest6020:OnSubStart602012(arg1)
    print("OnSubStart602012")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1310.id, 0, 602012, 10, true)
    this:LevelReadySafeCall(function(arg1)
        this:DailyNpcSafeHideSelf(npcs.Npc7062.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc7010.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc7011.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc7012.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc7061.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    end)

    this:BanCrowdNpc(1204, 1, nil, true, true)
    this:BanCrowdNpc(1204, 2, nil, true, true)
end

function Quest6020:OnSubFinish602012(arg1)
    print("OnSubFinish602012")
end

function Quest6020:OnSubStart602013(arg1)
    print("OnSubStart602013")
    this:NpcCreateWithNoBlack(npcs.Npc1310.id, 0, 15, 602013, true, 602010)
    this:DailyNpcSafeHideSelf(npcs.Npc7062.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7010.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7011.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7012.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7061.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7063.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1055.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:BanCrowdNpc(1204, 1, nil, true, true)
    this:BanCrowdNpc(1204, 2, nil, true, true)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6020):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 6020):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 6020):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6020):SitOnChair(0, false)
end

function Quest6020:OnSubFinish602013(arg1)
    print("OnSubFinish602013")
    this:NpcDestroyImmediately(1204, npcs.Npc1310.alias)
    this:LightNotifyTo(npcs.Npc7062.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7010.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7011.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7012.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7060.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7061.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7063.alias, 0, true)
    this:NpcDestroyImmediately(1204, npcs.Npc1055.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1314.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1315.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1316.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1317.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1312.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1313.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:BanCrowdNpc(1204, 1, nil, false, true)
    this:BanCrowdNpc(1204, 2, nil, false, true)
end

function Quest6020:OnSubStart602003(arg1)
    print("OnSubStart602003")
    this:NpcCreateWithNoBlack(npcs.Npc1055.id, 0, 10, 602003, true, 602003)
    this:CreateQuestNpc(arg1, npcs.Npc1055.id, 0, false, 0)
    this:BanCrowdNpc(3607, 7, datas.InstanceIDList_602003, true, true)
    this:NotifyTo(npcs.Npc7007.alias, 1, true)
end

function Quest6020:OnSubFinish602003(arg1)
    print("OnSubFinish602003")
    this:NpcDestroyImmediately(3, npcs.Npc1055.alias)
    this:LightNotifyTo(npcs.Npc7007.alias, 0, true)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_602003, nil, nil, nil)
    this:BanCrowdNpc(3607, 7, datas.InstanceIDList_602003, false, true)
end

function Quest6020:OnSubStart602002(arg1)
    print("OnSubStart602002")
    this:NpcCreateWithNoBlack(npcs.Npc1018.id, 0, 15, 602002, true, 602002)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
end

function Quest6020:OnSubFinish602002(arg1)
    print("OnSubFinish602002")
    this:NpcDestroyImmediately(3, npcs.Npc1018.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1320.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_602002, nil, nil, nil)
end

function Quest6020:OnSubStart602014(arg1)
    print("OnSubStart602014")
    this:NpcCreateWithNoBlack(npcs.Npc1310.id, 0, 7, 602014, true, 602011)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:DeployStoryByQuest(110601807)
end

function Quest6020:OnSubFinish602014(arg1)
    print("OnSubFinish602014")
    this:NpcDestroyImmediately(3, npcs.Npc1310.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_602014, nil, nil, nil)
    this:CancelStoryByQuest(110601807)
end

function Quest6020:OnSubStart602015(arg1)
    print("OnSubStart602015")
    this:NpcCreateWithNoBlack(npcs.Npc1318.id, 0, 45, 602015, true, 602012)
    this:CreateQuestNpc(arg1, npcs.Npc1022.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
end

function Quest6020:OnSubFinish602015(arg1)
    print("OnSubFinish602015")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1022.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_602015, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_602001, nil)
    end, nil, nil)
end

function Quest6020:OnSubStart602004(arg1)
    print("OnSubStart602004")
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:NpcCreateWithNoBlack(npcs.Npc1314.id, 0, 10, 602004, true, 602004)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6020):DisableInteeHeadCtrl(true)
end

function Quest6020:OnSubFinish602004(arg1)
    print("OnSubFinish602004")
    this:NpcDestroyImmediately(3, npcs.Npc1314.alias)
    this:ActorDestroy("Q602004N1314Trigger")
end

function Quest6020:OnSubStart602021(arg1)
    print("OnSubStart602021")
end

function Quest6020:OnSubFinish602021(arg1)
    print("OnSubFinish602021")
    this:PlayerEnterDungeonWithData(1790, 1266, 602004, 0, datas.PlayerEnterDungeonDataRerirBoss, nil, nil)
end

function Quest6020:OnSubStart602020(arg1)
    print("OnSubStart602020")
    this:BossDungeonRewind()
end

function Quest6020:OnSubFinish602020(arg1)
    print("OnSubFinish602020")
    if sceneData.currSceneID == 20286 then
        return
    end

    if self:GetQuestVar(602020, 0) == 1 then
        self:PlayerEnterDungeonWithData(1790, 1266, 602004, 0, datas.PlayerEnterDungeonDataRerirBoss, nil, nil)
    end
end

function Quest6020:OnSubStart602019(arg1)
    print("OnSubStart602019")
end

function Quest6020:OnSubFinish602019(arg1)
    print("OnSubFinish602019")
end

function Quest6020:OnSubStart602005(arg1)
    print("OnSubStart602005")
end

function Quest6020:OnSubFinish602005(arg1)
    print("OnSubFinish602005")
end

function Quest6020:OnSubStart602010(arg1)
    print("OnSubStart602010")
end

function Quest6020:OnSubFinish602010(arg1)
    print("OnSubFinish602010")
end

function Quest6020:OnSubStart602011(arg1)
    print("OnSubStart602011")
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    if sceneData.currSceneID == 20286 then
        this:ShowBlackScreen(0, 1, 0.5, function(arg1)
            this:RequestInteraction(npcs.Npc1316.alias, "", true)
        end, nil, nil, "", true, true)
    end
end

function Quest6020:OnSubFinish602011(arg1)
    print("OnSubFinish602011")
    this:NpcDestroyImmediately(20286, npcs.Npc1316.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6020:OnSubStart602006(arg1)
    print("OnSubStart602006")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 602006, 15, true)
end

function Quest6020:OnSubFinish602006(arg1)
    print("OnSubFinish602006")
    this:NpcDestroyImmediately(3, npcs.Npc1316.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6020:OnSubStart602007(arg1)
    print("OnSubStart602007")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Paimon.id, 0, 602007, 20, true)
end

function Quest6020:OnSubFinish602007(arg1)
    print("OnSubFinish602007")
    this:NpcDestroyImmediately(1204, npcs.Paimon.alias)
end

function Quest6020:OnSubStart602008(arg1)
    print("OnSubStart602008")
    this:DoNotRobChair()
    this:NpcCreateWithNoBlack(npcs.Npc1317.id, 0, 10, 602008, true, 602007)
    this:CreateQuestNpc(arg1, npcs.Npc1055.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1022.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7061.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:BanCrowdNpc(1204, 2, datas.InstanceIDList_602008, true, true)
    this:BanCrowdNpc(1204, 1, datas.InstanceIDList_602008_1, true, true)
    actorMgr:CreateActorWithPos("Q602008Trigger", "Actor/Gadget/Q602008Trigger", 70900002, 0, points._Q602008TriggerPoint_.pos, points._Q602008TriggerPoint_.rot, true, false, 1204)
end

function Quest6020:OnSubFinish602008(arg1)
    print("OnSubFinish602008")
    this:ActorDestroy("Q602008Trigger")
end

function Quest6020:OnSubStart602009(arg1)
    print("OnSubStart602009")
    this:DoNotRobChair()
    this:DailyNpcSafeHideSelf(npcs.Npc7060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7061.alias, true, 1)
    this:BanCrowdNpc(1204, 2, datas.InstanceIDList_602008, true, true)
    this:BanCrowdNpc(1204, 1, datas.InstanceIDList_602008_1, true, true)
    actorMgr:CreateActorWithPos("Q602008Trigger", "Actor/Gadget/Q602008Trigger", 70900002, 0, points._Q602008TriggerPoint_.pos, points._Q602008TriggerPoint_.rot, true, false, 1204)
end

function Quest6020:OnSubFinish602009(arg1)
    print("OnSubFinish602009")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:ActorDestroy("Q602008Trigger")
end

function Quest6020:OnSubStart602016(arg1)
    print("OnSubStart602016")
    this:DoNotRobChair()
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1080.id, 0, 602016, 30, true)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:BanCrowdNpc(1204, 2, datas.InstanceIDList_602008, true, true)
    this:BanCrowdNpc(1204, 1, datas.InstanceIDList_602008_1, true, true)
    actorMgr:CreateActorWithPos("Q602008Trigger", "Actor/Gadget/Q602008Trigger", 70900002, 0, points._Q602008TriggerPoint_.pos, points._Q602008TriggerPoint_.rot, true, false, 1204)
    this:NotifyTo(npcs.Npc7060.alias, 1, true)
    this:NotifyTo(npcs.Npc7061.alias, 1, true)
end

function Quest6020:OnSubFinish602016(arg1)
    print("OnSubFinish602016")
    this:NpcDestroyImmediately(3, npcs.Npc1080.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1317.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1055.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1022.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1316.alias)
    this:LightNotifyTo(npcs.Npc7060.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7061.alias, 0, true)
    this:ActorDestroy("Q602008Trigger")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6020:OnSubStart602022(arg1)
    print("OnSubStart602022")
end

function Quest6020:OnSubFinish602022(arg1)
    print("OnSubFinish602022")
end

function Quest6020:OnSubStart602023(arg1)
    print("OnSubStart602023")
end

function Quest6020:OnSubFinish602023(arg1)
    print("OnSubFinish602023")
end

function Quest6020:OnSubStart602024(arg1)
    print("OnSubStart602024")
    this:DoNotRobChair()
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:BanCrowdNpc(1204, 2, datas.InstanceIDList_602008, true, true)
    this:BanCrowdNpc(1204, 1, datas.InstanceIDList_602008_1, true, true)
    actorMgr:CreateActorWithPos("Q602024Trigger", "Actor/Gadget/Q602024Trigger", 70900002, 0, points._Q602024TriggerPoint_.pos, points._Q602024TriggerPoint_.rot, true, false, 1204)
end

function Quest6020:OnSubFinish602024(arg1)
    print("OnSubFinish602024")
    this:ActorDestroy("Q602024Trigger")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6020:OnSubStart602017(arg1)
    print("OnSubStart602017")
    this:DoNotRobChair()
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1319.id, 0, 602017, 35, true)
    this:BanCrowdNpc(1204, 2, datas.InstanceIDList_602008, true, true)
    this:BanCrowdNpc(1204, 1, datas.InstanceIDList_602008_1, true, true)
    actorMgr:CreateActorWithPos("Q602024Trigger", "Actor/Gadget/Q602024Trigger", 70900002, 0, points._Q602024TriggerPoint_.pos, points._Q602024TriggerPoint_.rot, true, false, 1204)
end

function Quest6020:OnSubFinish602017(arg1)
    print("OnSubFinish602017")
    this:NpcDestroyImmediately(1204, npcs.Npc1310.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1316.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1319.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1018.alias)
    this:NpcDestroyImmediately(1204, npcs.Npc1320.alias)
    this:BanCrowdNpc(1204, 2, datas.InstanceIDList_602008, false, true)
    this:BanCrowdNpc(1204, 1, datas.InstanceIDList_602008_1, false, true)
    this:ActorDestroy("Q602024Trigger")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6020:OnSubStart602025(arg1)
    print("OnSubStart602025")
    actorUtils.FinishQuestID(false, 602025)
end

function Quest6020:OnSubFinish602025(arg1)
    print("OnSubFinish602025")
end

return Quest6020
