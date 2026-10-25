require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6019 = class("Quest6019", QuestActorProxy)
Quest6019.defaultAlias = "Quest6019"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6019:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601917"] = self.OnSubStart601917,
        ["601901"] = self.OnSubStart601901,
        ["601918"] = self.OnSubStart601918,
        ["601915"] = self.OnSubStart601915,
        ["601919"] = self.OnSubStart601919,
        ["601902"] = self.OnSubStart601902,
        ["601903"] = self.OnSubStart601903,
        ["601904"] = self.OnSubStart601904,
        ["601924"] = self.OnSubStart601924,
        ["601905"] = self.OnSubStart601905,
        ["601920"] = self.OnSubStart601920,
        ["601906"] = self.OnSubStart601906,
        ["601921"] = self.OnSubStart601921,
        ["601907"] = self.OnSubStart601907,
        ["601916"] = self.OnSubStart601916,
        ["601908"] = self.OnSubStart601908,
        ["601909"] = self.OnSubStart601909,
        ["601911"] = self.OnSubStart601911,
        ["601922"] = self.OnSubStart601922,
        ["601923"] = self.OnSubStart601923,
        ["601910"] = self.OnSubStart601910,
        ["601912"] = self.OnSubStart601912,
        ["601913"] = self.OnSubStart601913,
        ["601914"] = self.OnSubStart601914
    }
end

function Quest6019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601917"] = self.OnSubFinish601917,
        ["601901"] = self.OnSubFinish601901,
        ["601918"] = self.OnSubFinish601918,
        ["601915"] = self.OnSubFinish601915,
        ["601919"] = self.OnSubFinish601919,
        ["601902"] = self.OnSubFinish601902,
        ["601903"] = self.OnSubFinish601903,
        ["601904"] = self.OnSubFinish601904,
        ["601924"] = self.OnSubFinish601924,
        ["601905"] = self.OnSubFinish601905,
        ["601920"] = self.OnSubFinish601920,
        ["601906"] = self.OnSubFinish601906,
        ["601921"] = self.OnSubFinish601921,
        ["601907"] = self.OnSubFinish601907,
        ["601916"] = self.OnSubFinish601916,
        ["601908"] = self.OnSubFinish601908,
        ["601909"] = self.OnSubFinish601909,
        ["601911"] = self.OnSubFinish601911,
        ["601922"] = self.OnSubFinish601922,
        ["601923"] = self.OnSubFinish601923,
        ["601910"] = self.OnSubFinish601910,
        ["601912"] = self.OnSubFinish601912,
        ["601913"] = self.OnSubFinish601913,
        ["601914"] = self.OnSubFinish601914
    }
end

function Quest6019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6019:Start()
    print("Start")
end

function Quest6019:OnDestroy()
    print("OnDestroy")
end

function Quest6019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6019:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q601901Trigger")
    this:ActorDestroy("Q601919Trigger")
    this:ActorDestroy("Q601922Trigger")
    this:ActorDestroy("Q601923Trigger")
    this:ActorDestroy("Q601913Trigger")
    this:ActorDestroy("Q601920Trigger")
    this:ActorDestroy("Q601924Trigger")
end

function Quest6019:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6019:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6019:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6019:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6019:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6019:OnSubStart601917(arg1)
    print("OnSubStart601917")
    actorUtils.FinishQuestID(false, 601917)
end

function Quest6019:OnSubFinish601917(arg1)
    print("OnSubFinish601917")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6019:OnSubStart601901(arg1)
    print("OnSubStart601901")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 601901, 10, true)
end

function Quest6019:OnSubFinish601901(arg1)
    print("OnSubFinish601901")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
    globalActor:PlayerEnterDungeon(8, 1262, true, nil, 0)
end

function Quest6019:OnSubStart601918(arg1)
    print("OnSubStart601918")
    local tbl = {}
    local str = "Q601919Trigger"
    local v = "Q601902N15590Trigger"
    local str2 = "Q601903N15591Trigger"
    local str3 = "Q601904N15593Trigger"
    local str4 = "Q601924Trigger"
    local str5 = "Q601905N15593Trigger"
    tbl[1] = "Q601915N1316Trigger"
    tbl[2] = str
    tbl[3] = v
    tbl[4] = str2
    tbl[5] = str3
    tbl[6] = str4
    tbl[7] = str5
    for i = 1, #tbl do
        self:ActorDestroy(tbl[i])
    end

    local tbl2 = {}
    local n = 15590
    local n2 = 15591
    local n3 = 15593
    local n4 = 16007
    local n5 = 16008
    local n6 = 16009
    local n7 = 16010
    local n8 = 16011
    local n9 = 16012
    local n10 = 16013
    tbl2[1] = 1316
    tbl2[2] = n
    tbl2[3] = n2
    tbl2[4] = n3
    tbl2[5] = n4
    tbl2[6] = n5
    tbl2[7] = n6
    tbl2[8] = n7
    tbl2[9] = n8
    tbl2[10] = n9
    tbl2[11] = n10
    for i = 1, #tbl2 do
        local str6 = "Npc" .. tbl2[i]
        self:DestroyQuestNpcActor(str6, 20281)
    end

    self:ClearNarratorTask()
end

function Quest6019:OnSubFinish601918(arg1)
    print("OnSubFinish601918")
end

function Quest6019:OnSubStart601915(arg1)
    print("OnSubStart601915")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1316.id, 0, 601915, 10, true)
    this:CreateQuestNpc(arg1, npcs.Npc16007.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16008.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16009.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16010.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16011.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16012.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16013.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DisableInteeHeadCtrl(true)
    this:SetNavigationByMainId(6019, true)
end

function Quest6019:OnSubFinish601915(arg1)
    print("OnSubFinish601915")
    this:NpcDestroyImmediately(20281, npcs.Npc1316.alias)
end

function Quest6019:OnSubStart601919(arg1)
    print("OnSubStart601919")
    this:CreateQuestNpc(arg1, npcs.Npc15590.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15591.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q601919Trigger", "Actor/Gadget/Q601919Trigger", 70900002, 0, points._Q601919TriggerPoint_.pos, points._Q601919TriggerPoint_.rot, true, false, 20281)
end

function Quest6019:OnSubFinish601919(arg1)
    print("OnSubFinish601919")
    this:QuestNarratorTask(datas.NarratorWithId_601901, nil)
    this:EnterSceneLookCameraByParam(datas.SceneLookCameraParams_601919)
end

function Quest6019:OnSubStart601902(arg1)
    print("OnSubStart601902")
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNoBlack(npcs.Npc15590.id, 0, 15, 601902, true, 601901)
end

function Quest6019:OnSubFinish601902(arg1)
    print("OnSubFinish601902")
    this:ClearNarratorTask()
end

function Quest6019:OnSubStart601903(arg1)
    print("OnSubStart601903")
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNoBlack(npcs.Npc15591.id, 0, 15, 601903, true, 601902)
end

function Quest6019:OnSubFinish601903(arg1)
    print("OnSubFinish601903")
end

function Quest6019:OnSubStart601904(arg1)
    print("OnSubStart601904")
    this:NpcCreateWithNpcTrigger(npcs.Npc15593.id, 0, 15, 601904)
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DisableInteeHeadCtrl(true)
end

function Quest6019:OnSubFinish601904(arg1)
    print("OnSubFinish601904")
end

function Quest6019:OnSubStart601924(arg1)
    print("OnSubStart601924")
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16007.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16009.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16010.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16011.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16012.alias, 6019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16013.alias, 6019):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q601924Trigger", "Actor/Gadget/Q601924Trigger", 70900002, 0, points._Q601924TriggerPoint_.pos, points._Q601924TriggerPoint_.rot, true, false, 20281)
end

function Quest6019:OnSubFinish601924(arg1)
    print("OnSubFinish601924")
    this:NpcDestroyImmediately(20281, npcs.Npc15593.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc16007.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc16008.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc16009.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc16010.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc16011.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc16012.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc16013.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15590.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15591.alias)
end

function Quest6019:OnSubStart601905(arg1)
    print("OnSubStart601905")
    this:NpcCreateWithNoBlack(npcs.Npc15593.id, 0, 50, 601905, true, 601904)
end

function Quest6019:OnSubFinish601905(arg1)
    print("OnSubFinish601905")
    this:NpcDestroyImmediately(20281, npcs.Npc15593.alias)
end

function Quest6019:OnSubStart601920(arg1)
    print("OnSubStart601920")
    this:ActorDestroy("Q601906N15698Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15698.alias, 20304)
    actorMgr:CreateActorWithPos("Q601920Trigger", "Actor/Gadget/Q601920Trigger", 70900002, 0, points._Q601920TriggerPoint_.pos, points._Q601920TriggerPoint_.rot, true, false, 20281)
end

function Quest6019:OnSubFinish601920(arg1)
    print("OnSubFinish601920")
    this:ActorDestroy("Q601920Trigger")
end

function Quest6019:OnSubStart601906(arg1)
    print("OnSubStart601906")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15698.id, 0, 601906, 50, true)
    this:CreateQuestNpc(arg1, npcs.Npc15699.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15699.alias, 6019):SpawnAttachEx("VoidAttachNew_MaleStandard")
    this:SetNavigationByMainId(6019, true)
end

function Quest6019:OnSubFinish601906(arg1)
    print("OnSubFinish601906")
    this:NpcDestroyImmediately(20304, npcs.Npc15698.alias)
    this:NpcDestroyImmediately(20304, npcs.Npc15699.alias)
    globalActor:PlayerEnterDungeon(1, 1289, true, nil, 0)
    this:GetQuestNpcActor(npcs.Npc15699.alias, 6019):UnSpawnAttachEx("VoidAttachNew_MaleStandard")
end

function Quest6019:OnSubStart601921(arg1)
    print("OnSubStart601921")
    local tbl = {}
    local str = "Q601909N15700Trigger"
    tbl[1] = "Q601907N15594Trigger"
    tbl[2] = str
    for i = 1, #tbl do
        self:ActorDestroy(tbl[i])
    end

    local v = {}
    local n = 15821
    local n2 = 15711
    local n3 = 15700
    v[1] = 15594
    v[2] = n
    v[3] = n2
    v[4] = n3
    for i = 1, #v do
        local str2 = "Npc" .. v[i]
        self:DestroyQuestNpcActor(str2, 20283)
    end

    local tbl2 = {}
    local tbl3 = {}
    local str2 = "1"
    tbl3[1] = 73097030
    tbl3[2] = str2
    local tbl4 = {}
    local str3 = "1"
    tbl4[1] = 73097031
    tbl4[2] = str3
    local tbl5 = {}
    local str4 = "1"
    tbl5[1] = 73097001
    tbl5[2] = str4
    local tbl6 = {}
    local str5 = "2"
    tbl6[1] = 73097001
    tbl6[2] = str5
    local tbl7 = {}
    local str6 = "0"
    tbl7[1] = 73097002
    tbl7[2] = str6
    local tbl8 = {}
    local str7 = "0"
    tbl8[1] = 73097003
    tbl8[2] = str7
    tbl2[1] = tbl3
    tbl2[2] = tbl4
    tbl2[3] = tbl5
    tbl2[4] = tbl6
    tbl2[5] = tbl7
    tbl2[6] = tbl8
    for i, value in ipairs(tbl2) do
        self:RemoveLocalGadget(value[1], value[2])
    end

    self:ClearNarratorTask()
end

function Quest6019:OnSubFinish601921(arg1)
    print("OnSubFinish601921")
end

function Quest6019:OnSubStart601907(arg1)
    print("OnSubStart601907")
    this:NpcCreateWithNoBlack(npcs.Npc15594.id, 0, 15, 601907, true, 601911)
    this:CreateQuestNpc(arg1, npcs.Npc15594.id, 0, false, 0)
    this:CreateLocalGadget(73097030, "1", {x = -56.62, y = 3.97, z = -5.713}, {x = 0, y = 59.953, z = 0}, 20283, nil, nil, false, 0, true)
    this:CreateLocalGadget(73097031, "1", {x = -56.62, y = 3.97, z = -5.713}, {x = 0, y = 59.953, z = 0}, 20283, nil, nil, false, 0, true)
    this:SetNavigationByMainId(6019, true)
end

function Quest6019:OnSubFinish601907(arg1)
    print("OnSubFinish601907")
end

function Quest6019:OnSubStart601916(arg1)
    print("OnSubStart601916")
    this:CreateQuestNpc(arg1, npcs.Npc15821.id, 0, false, 0)
    this:CreateLocalGadget(73097030, "1", {x = -56.62, y = 3.97, z = -5.713}, {x = 0, y = 59.953, z = 0}, 20283, nil, nil, false, 0, true)
    this:CreateLocalGadget(73097031, "1", {x = -56.62, y = 4.1, z = -5.713}, {x = 0, y = 59.953, z = 0}, 20283, nil, nil, false, 0, true)
end

function Quest6019:OnSubFinish601916(arg1)
    print("OnSubFinish601916")
    this:NpcDestroyImmediately(20283, npcs.Npc15821.alias)
    this:RemoveLocalGadget(73097030, "1")
    this:RemoveLocalGadget(73097031, "1")
end

function Quest6019:OnSubStart601908(arg1)
    print("OnSubStart601908")
    this:CreateQuestNpc(arg1, npcs.Npc15711.id, 0, false, 0)
    this:RemoveLocalGadget(73097001, "1")
    this:RemoveLocalGadget(73097001, "2")
    this:RemoveLocalGadget(73097002, "0")
    this:RemoveLocalGadget(73097003, "0")
end

function Quest6019:OnSubFinish601908(arg1)
    print("OnSubFinish601908")
    this:SafeDestroyQuestNpc(npcs.Npc15711.alias, 20283)
end

function Quest6019:OnSubStart601909(arg1)
    print("OnSubStart601909")
    this:NpcCreateWithNoBlack(npcs.Npc15700.id, 0, 15, 601909, true, 601913)
    this:CreateQuestNpc(arg1, npcs.Npc15700.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15700.alias, 6019):SpawnAttachEx("VoidAttach_FeMaleStandard")
end

function Quest6019:OnSubFinish601909(arg1)
    print("OnSubFinish601909")
    this:NpcDestroyImmediately(20283, npcs.Npc15700.alias)
    this:NpcDestroyImmediately(20283, npcs.Npc15594.alias)
    globalActor:PlayerEnterDungeonPoint(1, 1262, 601909, 1)
end

function Quest6019:OnSubStart601911(arg1)
    print("OnSubStart601911")
    local tbl = {}
    local str = "Q601923Trigger"
    local v = "Q601910N15595Trigger"
    local str2 = "Q601913Trigger"
    local str3 = "Q601914N1316Trigger"
    local str4 = "Q601912N15595Trigger"
    tbl[1] = "Q601922Trigger"
    tbl[2] = str
    tbl[3] = v
    tbl[4] = str2
    tbl[5] = str3
    tbl[6] = str4
    for i = 1, #tbl do
        self:ActorDestroy(tbl[i])
    end

    local tbl2 = {}
    local n = 15595
    local n2 = 15926
    local n3 = 15925
    local n4 = 15930
    local n5 = 15931
    local n6 = 15927
    local n7 = 15701
    local n8 = 15928
    local n9 = 15929
    tbl2[1] = 1316
    tbl2[2] = n
    tbl2[3] = n2
    tbl2[4] = n3
    tbl2[5] = n4
    tbl2[6] = n5
    tbl2[7] = n6
    tbl2[8] = n7
    tbl2[9] = n8
    tbl2[10] = n9
    for i = 1, #tbl2 do
        local str5 = "Npc" .. tbl2[i]
        self:DestroyQuestNpcActor(str5, 20281)
    end

    self:ClearNarratorTask()
    this:RemoveLocalGadget(70291004, "1")
end

function Quest6019:OnSubFinish601911(arg1)
    print("OnSubFinish601911")
end

function Quest6019:OnSubStart601922(arg1)
    print("OnSubStart601922")
    actorMgr:CreateActorWithPos("Q601922Trigger", "Actor/Gadget/Q601922Trigger", 70900002, 0, points._Q601922TriggerPoint_.pos, points._Q601922TriggerPoint_.rot, true, false, 20281)
    this:SetNavigationByMainId(6019, true)
end

function Quest6019:OnSubFinish601922(arg1)
    print("OnSubFinish601922")
end

function Quest6019:OnSubStart601923(arg1)
    print("OnSubStart601923")
    this:CreateQuestNpc(arg1, npcs.Npc15595.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15926.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15926.alias, 6019):DoFreeStyle(4300, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15925.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15925.alias, 6019):DoFreeStyle(4467, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15930.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15930.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15931.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15931.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15927.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15701.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15928.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15928.alias, 6019):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15929.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q601923Trigger", "Actor/Gadget/Q601923Trigger", 70900002, 0, points._Q601923TriggerPoint_.pos, points._Q601923TriggerPoint_.rot, true, false, 20281)
    this:CreateLocalGadget(70291004, "1", {x = 749.282, y = 119.331, z = 905.996}, {x = 0, y = 136.143, z = 0}, 20281, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15595.alias, 6019):SitOnChair(0, false)
end

function Quest6019:OnSubFinish601923(arg1)
    print("OnSubFinish601923")
end

function Quest6019:OnSubStart601910(arg1)
    print("OnSubStart601910")
    this:RequestInteractionWithCameraLookTrigger("Q601910N15595Trigger", 601910, npcs.Npc15595.alias, 20281, {x = 750.018, y = 119.104, z = 906.472}, 59, 601905, true, true)
    this:GetQuestNpcActor(npcs.Npc15926.alias, 6019):DoFreeStyle(4300, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15925.alias, 6019):DoFreeStyle(4467, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15930.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15931.alias, 6019):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15928.alias, 6019):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateLocalGadget(70291004, "1", {x = 749.282, y = 119.331, z = 905.996}, {x = 0, y = 136.143, z = 0}, 20281, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15595.alias, 6019):SitOnChair(0, false)
end

function Quest6019:OnSubFinish601910(arg1)
    print("OnSubFinish601910")
    this:NpcDestroyImmediately(20281, npcs.Npc15595.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15926.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15925.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15930.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15931.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15927.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15701.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15928.alias)
    this:NpcDestroyImmediately(20281, npcs.Npc15929.alias)
    this:RemoveLocalGadget(70291004, "1")
end

function Quest6019:OnSubStart601912(arg1)
    print("OnSubStart601912")
    this:NpcCreateWithNoBlack(npcs.Npc15595.id, 0, 35, 601912, true, 601907)
end

function Quest6019:OnSubFinish601912(arg1)
    print("OnSubFinish601912")
    this:SafeDestroyQuestNpc(npcs.Npc15595.alias, 20281)
end

function Quest6019:OnSubStart601913(arg1)
    print("OnSubStart601913")
    actorMgr:CreateActorWithPos("Q601913Trigger", "Actor/Gadget/Q601913Trigger", 70900002, 0, points._Q601913TriggerPoint_.pos, points._Q601913TriggerPoint_.rot, true, false, 20281)
end

function Quest6019:OnSubFinish601913(arg1)
    print("OnSubFinish601913")
    this:EnterSceneLookCamera({x = 459.05, y = 130.342, z = 866.99}, 0, 4, true, true)
end

function Quest6019:OnSubStart601914(arg1)
    print("OnSubStart601914")
    this:NpcCreateWithNoBlack(npcs.Npc1316.id, 0, 20, 601914, true, 601914)
end

function Quest6019:OnSubFinish601914(arg1)
    print("OnSubFinish601914")
    this:NpcDestroyImmediately(20281, npcs.Npc1316.alias)
end

return Quest6019
