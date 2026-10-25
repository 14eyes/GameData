require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77160 = class("Quest77160", QuestActorProxy)
Quest77160.defaultAlias = "Quest77160"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77160:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77160:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7716024"] = self.OnSubStart7716024,
        ["7716023"] = self.OnSubStart7716023,
        ["7716025"] = self.OnSubStart7716025,
        ["7716026"] = self.OnSubStart7716026,
        ["7716017"] = self.OnSubStart7716017,
        ["7716018"] = self.OnSubStart7716018,
        ["7716001"] = self.OnSubStart7716001,
        ["7716002"] = self.OnSubStart7716002,
        ["7716003"] = self.OnSubStart7716003,
        ["7716004"] = self.OnSubStart7716004,
        ["7716029"] = self.OnSubStart7716029,
        ["7716030"] = self.OnSubStart7716030,
        ["7716028"] = self.OnSubStart7716028,
        ["7716027"] = self.OnSubStart7716027,
        ["7716005"] = self.OnSubStart7716005,
        ["7716031"] = self.OnSubStart7716031,
        ["7716032"] = self.OnSubStart7716032,
        ["7716006"] = self.OnSubStart7716006,
        ["7716007"] = self.OnSubStart7716007,
        ["7716008"] = self.OnSubStart7716008,
        ["7716021"] = self.OnSubStart7716021,
        ["7716009"] = self.OnSubStart7716009,
        ["7716010"] = self.OnSubStart7716010,
        ["7716019"] = self.OnSubStart7716019,
        ["7716020"] = self.OnSubStart7716020,
        ["7716011"] = self.OnSubStart7716011,
        ["7716012"] = self.OnSubStart7716012,
        ["7716013"] = self.OnSubStart7716013,
        ["7716022"] = self.OnSubStart7716022,
        ["7716014"] = self.OnSubStart7716014,
        ["7716015"] = self.OnSubStart7716015,
        ["7716016"] = self.OnSubStart7716016
    }
end

function Quest77160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7716024"] = self.OnSubFinish7716024,
        ["7716023"] = self.OnSubFinish7716023,
        ["7716025"] = self.OnSubFinish7716025,
        ["7716026"] = self.OnSubFinish7716026,
        ["7716017"] = self.OnSubFinish7716017,
        ["7716018"] = self.OnSubFinish7716018,
        ["7716001"] = self.OnSubFinish7716001,
        ["7716002"] = self.OnSubFinish7716002,
        ["7716003"] = self.OnSubFinish7716003,
        ["7716004"] = self.OnSubFinish7716004,
        ["7716029"] = self.OnSubFinish7716029,
        ["7716030"] = self.OnSubFinish7716030,
        ["7716028"] = self.OnSubFinish7716028,
        ["7716027"] = self.OnSubFinish7716027,
        ["7716005"] = self.OnSubFinish7716005,
        ["7716031"] = self.OnSubFinish7716031,
        ["7716032"] = self.OnSubFinish7716032,
        ["7716006"] = self.OnSubFinish7716006,
        ["7716007"] = self.OnSubFinish7716007,
        ["7716008"] = self.OnSubFinish7716008,
        ["7716021"] = self.OnSubFinish7716021,
        ["7716009"] = self.OnSubFinish7716009,
        ["7716010"] = self.OnSubFinish7716010,
        ["7716019"] = self.OnSubFinish7716019,
        ["7716020"] = self.OnSubFinish7716020,
        ["7716011"] = self.OnSubFinish7716011,
        ["7716012"] = self.OnSubFinish7716012,
        ["7716013"] = self.OnSubFinish7716013,
        ["7716022"] = self.OnSubFinish7716022,
        ["7716014"] = self.OnSubFinish7716014,
        ["7716015"] = self.OnSubFinish7716015,
        ["7716016"] = self.OnSubFinish7716016
    }
end

function Quest77160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7716017"] = self.OnSubFailed7716017,
        ["7716001"] = self.OnSubFailed7716001,
        ["7716003"] = self.OnSubFailed7716003,
        ["7716004"] = self.OnSubFailed7716004,
        ["7716027"] = self.OnSubFailed7716027,
        ["7716005"] = self.OnSubFailed7716005,
        ["7716009"] = self.OnSubFailed7716009,
        ["7716010"] = self.OnSubFailed7716010,
        ["7716019"] = self.OnSubFailed7716019,
        ["7716020"] = self.OnSubFailed7716020,
        ["7716011"] = self.OnSubFailed7716011,
        ["7716012"] = self.OnSubFailed7716012,
        ["7716013"] = self.OnSubFailed7716013,
        ["7716014"] = self.OnSubFailed7716014
    }
end

function Quest77160:Start()
    print("Start")
end

function Quest77160:OnDestroy()
    print("OnDestroy")
end

function Quest77160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77160:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77160:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7716003Trigger", 77160)
    this:ActorDestroy("Q7716004Trigger", 77160)
    this:ActorDestroy("Q7716005Trigger", 77160)
    this:ActorDestroy("Q7716011Trigger", 77160)
    this:ActorDestroy("Q7716027Trigger", 77160)
end

function Quest77160:ActorDestroy(arg1, arg2)
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

function Quest77160:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77160:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77160:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77160:OnSubStart7716024(arg1)
    print("OnSubStart7716024")
end

function Quest77160:OnSubFinish7716024(arg1)
    print("OnSubFinish7716024")
end

function Quest77160:OnSubStart7716023(arg1)
    print("OnSubStart7716023")
    this:CreateQuestNpc(arg1, npcs.Npc22287.id, 0, false, 0)
end

function Quest77160:OnSubFinish7716023(arg1)
    print("OnSubFinish7716023")
end

function Quest77160:OnSubStart7716025(arg1)
    print("OnSubStart7716025")
    this:CreateQuestNpc(arg1, npcs.Npc22287.id, 0, false, 0)
end

function Quest77160:OnSubFinish7716025(arg1)
    print("OnSubFinish7716025")
end

function Quest77160:OnSubStart7716026(arg1)
    print("OnSubStart7716026")
    this:CreateQuestNpc(arg1, npcs.Npc22287.id, 0, false, 0)
end

function Quest77160:OnSubFinish7716026(arg1)
    print("OnSubFinish7716026")
end

function Quest77160:OnSubStart7716017(arg1)
    print("OnSubStart7716017")
    this:CreateQuestNpc(arg1, npcs.Npc22287.id, 0, false, 0)
end

function Quest77160:OnSubFinish7716017(arg1)
    print("OnSubFinish7716017")
    this:QuestNarratorTask(datas.NarratorWithId_7716018, nil)
end

function Quest77160:OnSubFailed7716017(arg1)
    print("OnSubFailed7716017")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716018(arg1)
    print("OnSubStart7716018")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7716018, 0, 8, 1, npcs.Npc22280.id)
end

function Quest77160:OnSubFinish7716018(arg1)
    print("OnSubFinish7716018")
    this:NpcDestroyImmediately(3, npcs.Npc22280.alias)
end

function Quest77160:OnSubStart7716001(arg1)
    print("OnSubStart7716001")
    this:CreateQuestNpc(arg1, npcs.Npc22287.id, 0, false, 0)
end

function Quest77160:OnSubFinish7716001(arg1)
    print("OnSubFinish7716001")
    this:NpcDestroyImmediately(3, npcs.Npc22287.alias)
    this:CallDelayByQuest("7716001", 1, function(arg1)
        this:ShowBlackScreen(0.5, 4, 0.5, nil, nil, nil, "", false, true)
    end)
end

function Quest77160:OnSubFailed7716001(arg1)
    print("OnSubFailed7716001")
    this:RecycleAllRes()
    this:CallDelayByQuest("7716002", 1, function(arg1)
        this:ShowBlackScreen(0.5, 4, 0.5, nil, nil, nil, "LEVEL_BSH_Nervdoor_01", false, true)
    end)
end

function Quest77160:OnSubStart7716002(arg1)
    print("OnSubStart7716002")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7716002, 0, 30, 0.5, npcs.Npc22279.id)
end

function Quest77160:OnSubFinish7716002(arg1)
    print("OnSubFinish7716002")
    this:NpcDestroyImmediately(3, npcs.Npc22279.alias)
end

function Quest77160:OnSubStart7716003(arg1)
    print("OnSubStart7716003")
    actorMgr:CreateActorWithPos("Q7716003Trigger", "Actor/Gadget/Q7716003Trigger", 70900002, 0, points._Q7716003TriggerPoint_.pos, points._Q7716003TriggerPoint_.rot, true, false, 3, nil, 0, 77160)
end

function Quest77160:OnSubFinish7716003(arg1)
    print("OnSubFinish7716003")
end

function Quest77160:OnSubFailed7716003(arg1)
    print("OnSubFailed7716003")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716004(arg1)
    print("OnSubStart7716004")
    actorMgr:CreateActorWithPos("Q7716004Trigger", "Actor/Gadget/Q7716004Trigger", 70900002, 0, points._Q7716004TriggerPoint_.pos, points._Q7716004TriggerPoint_.rot, true, false, 3, nil, 0, 77160)
end

function Quest77160:OnSubFinish7716004(arg1)
    print("OnSubFinish7716004")
    this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2142, dungeonId = 2224, questId = 7716004, questPointCfgId = 1}, datas.PlayerEnterDungeonData, nil, nil)
end

function Quest77160:OnSubFailed7716004(arg1)
    print("OnSubFailed7716004")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716029(arg1)
    print("OnSubStart7716029")
    actorUtils.FinishQuestWithParam({false}, {7716029})
end

function Quest77160:OnSubFinish7716029(arg1)
    print("OnSubFinish7716029")
end

function Quest77160:OnSubStart7716030(arg1)
    print("OnSubStart7716030")
end

function Quest77160:OnSubFinish7716030(arg1)
    print("OnSubFinish7716030")
end

function Quest77160:OnSubStart7716028(arg1)
    print("OnSubStart7716028")
end

function Quest77160:OnSubFinish7716028(arg1)
    print("OnSubFinish7716028")
end

function Quest77160:OnSubStart7716027(arg1)
    print("OnSubStart7716027")
    actorMgr:CreateActorWithPos("Q7716027Trigger", "Actor/Gadget/Q7716027Trigger", 70900002, 0, points._Q7716027TriggerPoint_.pos, points._Q7716027TriggerPoint_.rot, true, false, 51332, nil, 0, 77160)
end

function Quest77160:OnSubFinish7716027(arg1)
    print("OnSubFinish7716027")
    this:TransmitPlayerByData(arg1, 4, datas.TransmitData_2, nil, nil, nil)
end

function Quest77160:OnSubFailed7716027(arg1)
    print("OnSubFailed7716027")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716005(arg1)
    print("OnSubStart7716005")
    this:CreateQuestNpc(arg1, npcs.Npc22279.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7716005Trigger", "Actor/Gadget/Q7716005Trigger", 70900002, 0, points._Q7716005TriggerPoint_.pos, points._Q7716005TriggerPoint_.rot, true, false, 3, nil, 0, 77160)
end

function Quest77160:OnSubFinish7716005(arg1)
    print("OnSubFinish7716005")
end

function Quest77160:OnSubFailed7716005(arg1)
    print("OnSubFailed7716005")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716031(arg1)
    print("OnSubStart7716031")
    actorUtils.FinishQuestWithParam({false}, {7716031})
end

function Quest77160:OnSubFinish7716031(arg1)
    print("OnSubFinish7716031")
end

function Quest77160:OnSubStart7716032(arg1)
    print("OnSubStart7716032")
end

function Quest77160:OnSubFinish7716032(arg1)
    print("OnSubFinish7716032")
end

function Quest77160:OnSubStart7716006(arg1)
    print("OnSubStart7716006")
    this:RequestInteraction(npcs.Npc22279.alias, "", true)
end

function Quest77160:OnSubFinish7716006(arg1)
    print("OnSubFinish7716006")
    this:NpcDestroyImmediately(3, npcs.Npc22279.alias)
end

function Quest77160:OnSubStart7716007(arg1)
    print("OnSubStart7716007")
end

function Quest77160:OnSubFinish7716007(arg1)
    print("OnSubFinish7716007")
end

function Quest77160:OnSubStart7716008(arg1)
    print("OnSubStart7716008")
    this:PlayCutsceneIndex(7716008, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7716008})
    end, nil, nil, false)
end

function Quest77160:OnSubFinish7716008(arg1)
    print("OnSubFinish7716008")
    this:TransmitPlayerByData(arg1, 5, datas.ClientConfigVar, nil, nil, nil)
end

function Quest77160:OnSubStart7716021(arg1)
    print("OnSubStart7716021")
end

function Quest77160:OnSubFinish7716021(arg1)
    print("OnSubFinish7716021")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_2, nil, nil, nil)
end

function Quest77160:OnSubStart7716009(arg1)
    print("OnSubStart7716009")
end

function Quest77160:OnSubFinish7716009(arg1)
    print("OnSubFinish7716009")
end

function Quest77160:OnSubFailed7716009(arg1)
    print("OnSubFailed7716009")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716010(arg1)
    print("OnSubStart7716010")
    this:PlayCutsceneIndex(7716010, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7716010})
    end, nil, nil, false)
end

function Quest77160:OnSubFinish7716010(arg1)
    print("OnSubFinish7716010")
    this:TransmitPlayerByData(arg1, 6, datas.ClientConfigVar, nil, nil, nil)
end

function Quest77160:OnSubFailed7716010(arg1)
    print("OnSubFailed7716010")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716019(arg1)
    print("OnSubStart7716019")
    this:QuestNarratorTask(datas.NarratorWithId_7716019, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7716019})
    end)
end

function Quest77160:OnSubFinish7716019(arg1)
    print("OnSubFinish7716019")
end

function Quest77160:OnSubFailed7716019(arg1)
    print("OnSubFailed7716019")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716020(arg1)
    print("OnSubStart7716020")
    this:PlayCutsceneIndex(7716020, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7716020})
    end, nil, nil, false)
end

function Quest77160:OnSubFinish7716020(arg1)
    print("OnSubFinish7716020")
end

function Quest77160:OnSubFailed7716020(arg1)
    print("OnSubFailed7716020")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716011(arg1)
    print("OnSubStart7716011")
    actorMgr:CreateActorWithPos("Q7716011Trigger", "Actor/Gadget/Q7716011Trigger", 70900002, 0, points._Q7716011TriggerPoint_.pos, points._Q7716011TriggerPoint_.rot, true, false, 3, nil, 0, 77160)
end

function Quest77160:OnSubFinish7716011(arg1)
    print("OnSubFinish7716011")
end

function Quest77160:OnSubFailed7716011(arg1)
    print("OnSubFailed7716011")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716012(arg1)
    print("OnSubStart7716012")
end

function Quest77160:OnSubFinish7716012(arg1)
    print("OnSubFinish7716012")
end

function Quest77160:OnSubFailed7716012(arg1)
    print("OnSubFailed7716012")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716013(arg1)
    print("OnSubStart7716013")
    this:PlayCutsceneIndex(7716013, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7716013})
    end, nil, nil, false)
end

function Quest77160:OnSubFinish7716013(arg1)
    print("OnSubFinish7716013")
    this:TransmitPlayerByData(arg1, 7, datas.ClientConfigVar, nil, nil, nil)
end

function Quest77160:OnSubFailed7716013(arg1)
    print("OnSubFailed7716013")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716022(arg1)
    print("OnSubStart7716022")
end

function Quest77160:OnSubFinish7716022(arg1)
    print("OnSubFinish7716022")
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData_2, nil, nil, nil)
end

function Quest77160:OnSubStart7716014(arg1)
    print("OnSubStart7716014")
end

function Quest77160:OnSubFinish7716014(arg1)
    print("OnSubFinish7716014")
end

function Quest77160:OnSubFailed7716014(arg1)
    print("OnSubFailed7716014")
    this:RecycleAllRes()
end

function Quest77160:OnSubStart7716015(arg1)
    print("OnSubStart7716015")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7716015, 0, 50, 0.5, npcs.Npc22279.id)
end

function Quest77160:OnSubFinish7716015(arg1)
    print("OnSubFinish7716015")
    this:NpcDestroyImmediately(3, npcs.Npc22279.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_2, nil, nil, nil)
end

function Quest77160:OnSubStart7716016(arg1)
    print("OnSubStart7716016")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc22292.id, 0, 7716016, 30, true)
end

function Quest77160:OnSubFinish7716016(arg1)
    print("OnSubFinish7716016")
    this:NpcDestroyImmediately(3, npcs.Npc22292.alias)
end

return Quest77160
