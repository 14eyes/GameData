require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6000 = class("Quest6000", QuestActorProxy)
Quest6000.defaultAlias = "Quest6000"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6000:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600020"] = self.OnSubStart600020,
        ["600001"] = self.OnSubStart600001,
        ["600002"] = self.OnSubStart600002,
        ["600031"] = self.OnSubStart600031,
        ["600032"] = self.OnSubStart600032,
        ["600003"] = self.OnSubStart600003,
        ["600023"] = self.OnSubStart600023,
        ["600004"] = self.OnSubStart600004,
        ["600005"] = self.OnSubStart600005,
        ["600006"] = self.OnSubStart600006,
        ["600019"] = self.OnSubStart600019,
        ["600007"] = self.OnSubStart600007,
        ["600009"] = self.OnSubStart600009,
        ["600011"] = self.OnSubStart600011,
        ["600015"] = self.OnSubStart600015,
        ["600012"] = self.OnSubStart600012,
        ["600008"] = self.OnSubStart600008,
        ["600016"] = self.OnSubStart600016,
        ["600017"] = self.OnSubStart600017,
        ["600013"] = self.OnSubStart600013,
        ["600010"] = self.OnSubStart600010,
        ["600021"] = self.OnSubStart600021,
        ["600024"] = self.OnSubStart600024,
        ["600030"] = self.OnSubStart600030,
        ["600033"] = self.OnSubStart600033,
        ["600022"] = self.OnSubStart600022,
        ["600025"] = self.OnSubStart600025,
        ["600026"] = self.OnSubStart600026,
        ["600027"] = self.OnSubStart600027,
        ["600028"] = self.OnSubStart600028,
        ["600014"] = self.OnSubStart600014,
        ["600018"] = self.OnSubStart600018,
        ["600029"] = self.OnSubStart600029
    }
end

function Quest6000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600020"] = self.OnSubFinish600020,
        ["600001"] = self.OnSubFinish600001,
        ["600002"] = self.OnSubFinish600002,
        ["600031"] = self.OnSubFinish600031,
        ["600032"] = self.OnSubFinish600032,
        ["600003"] = self.OnSubFinish600003,
        ["600023"] = self.OnSubFinish600023,
        ["600004"] = self.OnSubFinish600004,
        ["600005"] = self.OnSubFinish600005,
        ["600006"] = self.OnSubFinish600006,
        ["600019"] = self.OnSubFinish600019,
        ["600007"] = self.OnSubFinish600007,
        ["600009"] = self.OnSubFinish600009,
        ["600011"] = self.OnSubFinish600011,
        ["600015"] = self.OnSubFinish600015,
        ["600012"] = self.OnSubFinish600012,
        ["600008"] = self.OnSubFinish600008,
        ["600016"] = self.OnSubFinish600016,
        ["600017"] = self.OnSubFinish600017,
        ["600013"] = self.OnSubFinish600013,
        ["600010"] = self.OnSubFinish600010,
        ["600021"] = self.OnSubFinish600021,
        ["600024"] = self.OnSubFinish600024,
        ["600030"] = self.OnSubFinish600030,
        ["600033"] = self.OnSubFinish600033,
        ["600022"] = self.OnSubFinish600022,
        ["600025"] = self.OnSubFinish600025,
        ["600026"] = self.OnSubFinish600026,
        ["600027"] = self.OnSubFinish600027,
        ["600028"] = self.OnSubFinish600028,
        ["600014"] = self.OnSubFinish600014,
        ["600018"] = self.OnSubFinish600018,
        ["600029"] = self.OnSubFinish600029
    }
end

function Quest6000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6000:Start()
    print("Start")
end

function Quest6000:OnDestroy()
    print("OnDestroy")
end

function Quest6000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6000:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q600006Trigger")
    this:ActorDestroy("Q600023Trigger")
    this:ActorDestroy("Q600029Trigger")
    this:ActorDestroy("Q600027Trigger")
    this:ActorDestroy("Q600009Trigger")
    this:ActorDestroy("Q600021Trigger")
    this:BanCrowdNpc(1204, 1, {10016}, false, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 16
    local tbl = {}
    local n3 = 160004
    tbl[1] = 160003
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n4 = 3607
    local n5 = 7
    local tbl2 = {}
    local n6 = 70013
    tbl2[1] = 70012
    tbl2[2] = n6
    func(v4, n4, n5, tbl2, false, true)
end

function Quest6000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 600031)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 600032)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 600033)
    end
end

function Quest6000:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6000:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6000:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6000:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6000:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6000:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6000:OnSubStart600020(arg1)
    print("OnSubStart600020")
end

function Quest6000:OnSubFinish600020(arg1)
    print("OnSubFinish600020")
end

function Quest6000:OnSubStart600001(arg1)
    print("OnSubStart600001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1312.id, 0, 10, 600001)
end

function Quest6000:OnSubFinish600001(arg1)
    print("OnSubFinish600001")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600001, nil, nil, nil)
end

function Quest6000:OnSubStart600002(arg1)
    print("OnSubStart600002")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600002, 0, 20, 1, npcs.Npc1312.id)
    this:NotifyTo(npcs.Npc7000.alias, 1, true)
end

function Quest6000:OnSubFinish600002(arg1)
    print("OnSubFinish600002")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
end

function Quest6000:OnSubStart600031(arg1)
    print("OnSubStart600031")
end

function Quest6000:OnSubFinish600031(arg1)
    print("OnSubFinish600031")
end

function Quest6000:OnSubStart600032(arg1)
    print("OnSubStart600032")
end

function Quest6000:OnSubFinish600032(arg1)
    print("OnSubFinish600032")
end

function Quest6000:OnSubStart600003(arg1)
    print("OnSubStart600003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600003, 0, 10, 1, npcs.Npc1312.id)
    this:DailyNpcSafeHideSelf(npcs.Npc7000.alias, true, 1)
end

function Quest6000:OnSubFinish600003(arg1)
    print("OnSubFinish600003")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
end

function Quest6000:OnSubStart600023(arg1)
    print("OnSubStart600023")
    this:DailyNpcSafeHideSelf(npcs.Npc7000.alias, true, 1)
end

function Quest6000:OnSubFinish600023(arg1)
    print("OnSubFinish600023")
end

function Quest6000:OnSubStart600004(arg1)
    print("OnSubStart600004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600004, 0, 10, 1, npcs.Npc1312.id)
    this:DailyNpcSafeHideSelf(npcs.Npc7000.alias, true, 1)
end

function Quest6000:OnSubFinish600004(arg1)
    print("OnSubFinish600004")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
end

function Quest6000:OnSubStart600005(arg1)
    print("OnSubStart600005")
    this:NpcCreateWithNoBlack(npcs.Npc1312.id, 0, 10, 600005, true, 600005)
    this:DailyNpcSafeHideSelf(npcs.Npc7000.alias, true, 1)
end

function Quest6000:OnSubFinish600005(arg1)
    print("OnSubFinish600005")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
end

function Quest6000:OnSubStart600006(arg1)
    print("OnSubStart600006")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600006, 0, 30, 1, npcs.Npc1312.id)
    this:DailyNpcSafeHideSelf(npcs.Npc7000.alias, true, 1)
    if this:GetQuestVar(600006, 0) == 0 then
        actorMgr:CreateActorWithPos("Q600006Trigger", "Actor/Gadget/Q600006Trigger", 70900002, 0, points._Q600006TriggerPoint_.pos, points._Q600006TriggerPoint_.rot, true, false, 3)
    end
end

function Quest6000:OnSubFinish600006(arg1)
    print("OnSubFinish600006")
    this:NpcDestroyImmediately(1204, npcs.Npc1312.alias)
    this:ActorDestroy("Q600006Trigger")
end

function Quest6000:OnSubStart600019(arg1)
    print("OnSubStart600019")
    this:NpcCreateWithNpcTrigger(npcs.Npc7010.id, 0, 6, 600019)
    this:DailyNpcSafeHideSelf(npcs.Npc7000.alias, true, 1)
end

function Quest6000:OnSubFinish600019(arg1)
    print("OnSubFinish600019")
    this:NpcDestroyImmediately(1204, npcs.Npc7010.alias)
end

function Quest6000:OnSubStart600007(arg1)
    print("OnSubStart600007")
    this:DailyNpcSafeHideSelf(npcs.Npc7000.alias, true, 1)
    this:NpcCreateWithNoBlack(npcs.Npc15381.id, 0, 5, 600007, true, 600008)
    this:BanCrowdNpc(1204, 1, {10016}, true, true)
end

function Quest6000:OnSubFinish600007(arg1)
    print("OnSubFinish600007")
    this:NpcDestroyImmediately(1204, npcs.Npc15381.alias)
    this:BanCrowdNpc(1204, 1, {10016}, false, true)
end

function Quest6000:OnSubStart600009(arg1)
    print("OnSubStart600009")
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7000.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7059.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc15378.id, 0, false, 0)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 16
    local tbl = {}
    local n3 = 160004
    tbl[1] = 160003
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
    actorMgr:CreateActorWithPos("Q600009Trigger", "Actor/Gadget/Q600009Trigger", 70900002, 0, points._Q600009TriggerPoint_.pos, points._Q600009TriggerPoint_.rot, true, false, 3)
end

function Quest6000:OnSubFinish600009(arg1)
    print("OnSubFinish600009")
    this:SafeDestroyQuestNpc(npcs.Npc15378.alias, 3)
    this:ActorDestroy("Q600009Trigger")
end

function Quest6000:OnSubStart600011(arg1)
    print("OnSubStart600011")
    this:DailyNpcSafeHideSelf(npcs.Npc7059.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1055.id, 0, false, 0)
    this:CreateNpcWithCameraLookTrigger("Q600011N1055Trigger", 600011, npcs.Npc1055.id, 0, 8, 600011, true)
end

function Quest6000:OnSubFinish600011(arg1)
    print("OnSubFinish600011")
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6000):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6000):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest6000:OnSubStart600015(arg1)
    print("OnSubStart600015")
    this:CreateQuestNpc(arg1, npcs.Npc1319_1.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7000.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7059.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
    this:CreateNpcWithCameraLookTrigger("Q600015N1319Trigger", 600015, npcs.Npc1319_1.id, 0, 10, 600015, false)
end

function Quest6000:OnSubFinish600015(arg1)
    print("OnSubFinish600015")
    this:NpcDestroyImmediately(3, npcs.Npc1319_1.alias)
    this:LightNotifyTo(npcs.Npc7000.alias, 0, true)
end

function Quest6000:OnSubStart600012(arg1)
    print("OnSubStart600012")
    this:DailyNpcSafeHideSelf(npcs.Npc7059.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
end

function Quest6000:OnSubFinish600012(arg1)
    print("OnSubFinish600012")
end

function Quest6000:OnSubStart600008(arg1)
    print("OnSubStart600008")
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1055.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 6000):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 6000):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6000):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6000):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7059.alias, true, 1)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 16
    local tbl = {}
    local n3 = 160004
    tbl[1] = 160003
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n4 = 3607
    local n5 = 7
    local tbl2 = {}
    local n6 = 70013
    tbl2[1] = 70012
    tbl2[2] = n6
    func(v4, n4, n5, tbl2, true, true)
end

function Quest6000:OnSubFinish600008(arg1)
    print("OnSubFinish600008")
end

function Quest6000:OnSubStart600016(arg1)
    print("OnSubStart600016")
    this:NpcCreateWithNpcTrigger(npcs.Npc1312.id, 0, 6, 600016)
    this:DailyNpcSafeHideSelf(npcs.Npc7059.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 6000):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 6000):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6000):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6000):DisableInteeHeadCtrl(true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 16
    local tbl = {}
    local n3 = 160004
    tbl[1] = 160003
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n4 = 3607
    local n5 = 7
    local tbl2 = {}
    local n6 = 70013
    tbl2[1] = 70012
    tbl2[2] = n6
    func(v4, n4, n5, tbl2, true, true)
end

function Quest6000:OnSubFinish600016(arg1)
    print("OnSubFinish600016")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
    this:LightNotifyTo(npcs.Npc7059.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7007.alias, 0, true)
    this:NpcDestroyImmediately(3, npcs.Npc1055.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 3)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 16
    local tbl = {}
    local n3 = 160004
    tbl[1] = 160003
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n4 = 3607
    local n5 = 7
    local tbl2 = {}
    local n6 = 70013
    tbl2[1] = 70012
    tbl2[2] = n6
    func(v4, n4, n5, tbl2, false, true)
end

function Quest6000:OnSubStart600017(arg1)
    print("OnSubStart600017")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600017, 1, 20, 1, npcs.Npc1312.id)
end

function Quest6000:OnSubFinish600017(arg1)
    print("OnSubFinish600017")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
end

function Quest6000:OnSubStart600013(arg1)
    print("OnSubStart600013")
end

function Quest6000:OnSubFinish600013(arg1)
    print("OnSubFinish600013")
    this:QuestNarratorTask(datas.NarratorWithId_600005, nil)
end

function Quest6000:OnSubStart600010(arg1)
    print("OnSubStart600010")
    this:NpcCreateWithNoBlack(npcs.Npc1312.id, 0, 10, 600010, true, 600010)
end

function Quest6000:OnSubFinish600010(arg1)
    print("OnSubFinish600010")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600010, nil, nil, nil)
end

function Quest6000:OnSubStart600021(arg1)
    print("OnSubStart600021")
    this:NpcCreateWithNpcTrigger(npcs.Npc1313.id, 0, 30, 600021)
    actorMgr:CreateActorWithPos("Q600021Trigger", "Actor/Gadget/Q600021Trigger", 70900002, 0, points._Q600021TriggerPoint_.pos, points._Q600021TriggerPoint_.rot, true, false, 3)
end

function Quest6000:OnSubFinish600021(arg1)
    print("OnSubFinish600021")
    this:ActorDestroy("Q600021Trigger")
end

function Quest6000:OnSubStart600024(arg1)
    print("OnSubStart600024")
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6000):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6000):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15349.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 6000):DoFreeStyle(1340, true, nil, true, true, false, false)
    local realAlias = this:GetRealAlias(npcs.Npc1312.alias)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6000):LookAtTarget(realAlias, datas.lookParam, true)
    this:PlayIndexedEffect("1", "Eff_Quest_Ineffa_Charging_01", {x = 1.728, y = 1.738, z = -6.829}, {x = 0, y = 90.332, z = 0}, nil)
    this:DeployStoryByQuest(110600001)
end

function Quest6000:OnSubFinish600024(arg1)
    print("OnSubFinish600024")
    this:NpcDestroyImmediately(1151, npcs.Npc1312.alias)
    this:NpcDestroyImmediately(1151, npcs.Npc1313.alias)
    this:NpcDestroyImmediately(1151, npcs.Npc15349.alias)
    this:CancelStoryByQuest(110600001)
end

function Quest6000:OnSubStart600030(arg1)
    print("OnSubStart600030")
    this:NpcCreateWithNoBlack(npcs.Npc15380.id, 0, 20, 600030, true, 600022)
end

function Quest6000:OnSubFinish600030(arg1)
    print("OnSubFinish600030")
    this:NpcDestroyImmediately(3, npcs.Npc15380.alias)
end

function Quest6000:OnSubStart600033(arg1)
    print("OnSubStart600033")
end

function Quest6000:OnSubFinish600033(arg1)
    print("OnSubFinish600033")
end

function Quest6000:OnSubStart600022(arg1)
    print("OnSubStart600022")
    this:NpcCreateWithNpcTrigger(npcs.Npc1315.id, 0, 10, 600022)
    this:CreateQuestNpc(arg1, npcs.Npc15744.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15744.alias, 6000):DoFreeStyle(4, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15745.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15746.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15748.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15748.alias, 6000):DoFreeStyle(5, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15750.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15408.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15741.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15663.id, 0, false, 0)
    this:CreateLocalGadget(73045052, "1", points.Q600022_Gadget73045052_1_Point.pos, points.Q600022_Gadget73045052_1_Point.rot, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73045052, "2", points.Q600022_Gadget73045052_2_Point.pos, points.Q600022_Gadget73045052_2_Point.rot, 3, nil, nil, false, 0, true)
end

function Quest6000:OnSubFinish600022(arg1)
    print("OnSubFinish600022")
    this:SafeDestroyQuestNpc(npcs.Npc15744.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15745.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15746.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15748.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15750.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15408.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15741.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15663.alias, 3)
    this:RemoveLocalGadget(73045052, "1")
    this:RemoveLocalGadget(73045052, "2")
end

function Quest6000:OnSubStart600025(arg1)
    print("OnSubStart600025")
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7098.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7099.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7100.alias, true, 1)
    this:ActionSafeCall(function(arg1)
        this:DeployRangeStoryByQuest(110600000, 3, {x = 1722.2, y = 218.44, z = 10416.4}, 60, 65)
    end)
end

function Quest6000:OnSubFinish600025(arg1)
    print("OnSubFinish600025")
    this:NpcDestroyImmediately(3, npcs.Npc15409.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15410.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7101_1.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
    this:LightNotifyTo(npcs.Npc7098.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7099.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7100.alias, 0, true)
    this:CancelRangeStoryByQuest(110600000)
end

function Quest6000:OnSubStart600026(arg1)
    print("OnSubStart600026")
    this:NpcCreateWithNoBlack(npcs.Npc1315.id, 0, 10, 600026, true, 600026)
    this:DailyNpcSafeHideSelf(npcs.Npc7103.alias, true, 1)
end

function Quest6000:OnSubFinish600026(arg1)
    print("OnSubFinish600026")
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
    this:LightNotifyTo(npcs.Npc7103.alias, 0, true)
end

function Quest6000:OnSubStart600027(arg1)
    print("OnSubStart600027")
    this:CreateQuestNpc(arg1, npcs.Npc15414.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7101.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7107.alias, true, 1)
    this:CreateLocalGadget(73078102, "1", points.Q600027_Gadget73078102_1_Point.pos, points.Q600027_Gadget73078102_1_Point.rot, 3, nil, nil, false, 0, true)
    actorMgr:CreateActorWithPos("Q600027Trigger", "Actor/Gadget/Q600027Trigger", 70900002, 0, points._Q600027TriggerPoint_.pos, points._Q600027TriggerPoint_.rot, true, false, 3)
end

function Quest6000:OnSubFinish600027(arg1)
    print("OnSubFinish600027")
    this:ActorDestroy("Q600027Trigger")
end

function Quest6000:OnSubStart600028(arg1)
    print("OnSubStart600028")
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7098.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7099.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7100.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15409.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15410.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7101_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15414.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DoFreeStyle(4121, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc7101.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7107.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc15407.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6000):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6000):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15381.id, 0, false, 0)
    this:CreateLocalGadget(73078102, "1", points.Q600027_Gadget73078102_1_Point.pos, points.Q600027_Gadget73078102_1_Point.rot, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    this:CreateNpcWithCameraLookTrigger("Q600028N1315Trigger", 600028, npcs.Npc1315.id, 0, 8, 600028, true)
end

function Quest6000:OnSubFinish600028(arg1)
    print("OnSubFinish600028")
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
end

function Quest6000:OnSubStart600014(arg1)
    print("OnSubStart600014")
    this:CreateQuestNpc(arg1, npcs.Npc15378.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15409.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15410.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7101_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7098.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7099.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7100.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc7101.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7107.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6000):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6000):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(73078102, "1", points.Q600027_Gadget73078102_1_Point.pos, points.Q600027_Gadget73078102_1_Point.rot, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
end

function Quest6000:OnSubFinish600014(arg1)
    print("OnSubFinish600014")
    this:NpcDestroyImmediately(3, npcs.Npc15378.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15409.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15410.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7101_1.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7098.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7099.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7100.alias)
end

function Quest6000:OnSubStart600018(arg1)
    print("OnSubStart600018")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600018, 0, 16, 1, npcs.Npc15413.id)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc7101.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7107.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6000):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6000):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(73078102, "1", points.Q600027_Gadget73078102_1_Point.pos, points.Q600027_Gadget73078102_1_Point.rot, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
end

function Quest6000:OnSubFinish600018(arg1)
    print("OnSubFinish600018")
    this:NpcDestroyImmediately(3, npcs.Npc15413.alias)
end

function Quest6000:OnSubStart600029(arg1)
    print("OnSubStart600029")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600029, 0, 8, 1, npcs.Npc1315.id)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc7101.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7107.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6000):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6000):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc7108.alias, true, 1)
    this:CreateLocalGadget(73078102, "1", points.Q600027_Gadget73078102_1_Point.pos, points.Q600027_Gadget73078102_1_Point.rot, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6000):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    if this:GetQuestVar(600029, 1) == 0 then
        actorMgr:CreateActorWithPos("Q600029Trigger", "Actor/Gadget/Q600029Trigger", 70900002, 0, points._Q600029TriggerPoint_.pos, points._Q600029TriggerPoint_.rot, true, false, 3)
    end
end

function Quest6000:OnSubFinish600029(arg1)
    print("OnSubFinish600029")
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
    this:SafeDestroyQuestNpc(npcs.Npc15414.alias, 3)
    this:LightNotifyTo(npcs.Npc7101.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7107.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc15407.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 3)
    this:LightNotifyTo(npcs.Npc7108.alias, 0, true)
    this:RemoveLocalGadget(73078102, "1")
    this:ActorDestroy("Q600029Trigger")
end

return Quest6000
