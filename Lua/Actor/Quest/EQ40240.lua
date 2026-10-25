require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40240 = class("Quest40240", QuestActorProxy)
Quest40240.defaultAlias = "Quest40240"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40240:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40240:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4024001"] = self.OnSubStart4024001,
        ["4024012"] = self.OnSubStart4024012,
        ["4024013"] = self.OnSubStart4024013,
        ["4024020"] = self.OnSubStart4024020,
        ["4024002"] = self.OnSubStart4024002,
        ["4024024"] = self.OnSubStart4024024,
        ["4024003"] = self.OnSubStart4024003,
        ["4024017"] = self.OnSubStart4024017,
        ["4024018"] = self.OnSubStart4024018,
        ["4024019"] = self.OnSubStart4024019,
        ["4024004"] = self.OnSubStart4024004,
        ["4024025"] = self.OnSubStart4024025,
        ["4024005"] = self.OnSubStart4024005,
        ["4024021"] = self.OnSubStart4024021,
        ["4024006"] = self.OnSubStart4024006,
        ["4024026"] = self.OnSubStart4024026,
        ["4024023"] = self.OnSubStart4024023,
        ["4024015"] = self.OnSubStart4024015,
        ["4024016"] = self.OnSubStart4024016,
        ["4024029"] = self.OnSubStart4024029,
        ["4024030"] = self.OnSubStart4024030,
        ["4024014"] = self.OnSubStart4024014,
        ["4024027"] = self.OnSubStart4024027,
        ["4024007"] = self.OnSubStart4024007,
        ["4024022"] = self.OnSubStart4024022,
        ["4024008"] = self.OnSubStart4024008,
        ["4024009"] = self.OnSubStart4024009,
        ["4024028"] = self.OnSubStart4024028,
        ["4024010"] = self.OnSubStart4024010,
        ["4024011"] = self.OnSubStart4024011
    }
end

function Quest40240:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4024001"] = self.OnSubFinish4024001,
        ["4024012"] = self.OnSubFinish4024012,
        ["4024013"] = self.OnSubFinish4024013,
        ["4024020"] = self.OnSubFinish4024020,
        ["4024002"] = self.OnSubFinish4024002,
        ["4024024"] = self.OnSubFinish4024024,
        ["4024003"] = self.OnSubFinish4024003,
        ["4024017"] = self.OnSubFinish4024017,
        ["4024018"] = self.OnSubFinish4024018,
        ["4024019"] = self.OnSubFinish4024019,
        ["4024004"] = self.OnSubFinish4024004,
        ["4024025"] = self.OnSubFinish4024025,
        ["4024005"] = self.OnSubFinish4024005,
        ["4024021"] = self.OnSubFinish4024021,
        ["4024006"] = self.OnSubFinish4024006,
        ["4024026"] = self.OnSubFinish4024026,
        ["4024023"] = self.OnSubFinish4024023,
        ["4024015"] = self.OnSubFinish4024015,
        ["4024016"] = self.OnSubFinish4024016,
        ["4024029"] = self.OnSubFinish4024029,
        ["4024030"] = self.OnSubFinish4024030,
        ["4024014"] = self.OnSubFinish4024014,
        ["4024027"] = self.OnSubFinish4024027,
        ["4024007"] = self.OnSubFinish4024007,
        ["4024022"] = self.OnSubFinish4024022,
        ["4024008"] = self.OnSubFinish4024008,
        ["4024009"] = self.OnSubFinish4024009,
        ["4024028"] = self.OnSubFinish4024028,
        ["4024010"] = self.OnSubFinish4024010,
        ["4024011"] = self.OnSubFinish4024011
    }
end

function Quest40240:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4024002"] = self.OnSubFailed4024002,
        ["4024003"] = self.OnSubFailed4024003,
        ["4024017"] = self.OnSubFailed4024017,
        ["4024018"] = self.OnSubFailed4024018,
        ["4024019"] = self.OnSubFailed4024019,
        ["4024004"] = self.OnSubFailed4024004,
        ["4024005"] = self.OnSubFailed4024005,
        ["4024006"] = self.OnSubFailed4024006,
        ["4024023"] = self.OnSubFailed4024023,
        ["4024015"] = self.OnSubFailed4024015,
        ["4024016"] = self.OnSubFailed4024016,
        ["4024014"] = self.OnSubFailed4024014,
        ["4024007"] = self.OnSubFailed4024007,
        ["4024008"] = self.OnSubFailed4024008,
        ["4024009"] = self.OnSubFailed4024009,
        ["4024010"] = self.OnSubFailed4024010
    }
end

function Quest40240:Start()
    print("Start")
end

function Quest40240:OnDestroy()
    print("OnDestroy")
end

function Quest40240:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40240:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40240:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("402401401")
    this:DestroyNpcTrigger("Q4024002N1329Trigger")
    this:DestroyNpcTrigger("Q4024004N1329Trigger")
    this:DestroyNpcTrigger("Q4024006N1329Trigger")
    this:DestroyNpcTrigger("Q4024008N1329Trigger")
    this:DestroyNpcTrigger("Q4024010N1329Trigger")
    this:DestroyNpcTrigger("Q4024011N16610Trigger")
    this:DestroyNpcTrigger("Q4024012N1329Trigger")
    this:DestroyNpcTrigger("Q4024014N2605Trigger")
    this:ActorDestroy("Q4024006Trigger", 0)
    this:ActorDestroy("Q4024008Trigger", 0)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1329.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc16925.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc1069.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc2623.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc1329.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16901.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc16902.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc2605.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc2605.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16610.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16607.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2623.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233.alias, 20350)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:CancelStoryByQuest(134024003)
    this:CancelStoryByQuest(134024009)
    this:CancelStoryByQuest(134024002)
    this:SafeDestroyQuestNpc(npcs.Npc10233.alias, 3)
    this:RecycleAllRes()
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20350)
end

function Quest40240:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4024006Trigger", 0)
    this:ActorDestroy("Q4024008Trigger", 0)
end

function Quest40240:ActorDestroy(arg1, arg2)
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

function Quest40240:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40240:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40240:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40240:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40240:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40240:OnSubStart4024001(arg1)
    print("OnSubStart4024001")
end

function Quest40240:OnSubFinish4024001(arg1)
    print("OnSubFinish4024001")
end

function Quest40240:OnSubStart4024012(arg1)
    print("OnSubStart4024012")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024012, 0, 30, 1, npcs.Npc1329.id)
end

function Quest40240:OnSubFinish4024012(arg1)
    print("OnSubFinish4024012")
end

function Quest40240:OnSubStart4024013(arg1)
    print("OnSubStart4024013")
    this:CreateQuestNpc(arg1, npcs.Npc1329.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40240):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc2605.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40240):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2623.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10233.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40240):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1040.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024013(arg1)
    print("OnSubFinish4024013")
    this:NpcDestroyImmediately(3, npcs.Npc1329.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2605.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2623.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10233.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1040.alias)
    this:ShowBlackScreenWithDialogText(0.5, 1.5, 0, function(arg1)
        this:PlayerEnterDungeonWithData(2047, 1318, 4024013, 1, datas.TransmitData01, nil, nil)
    end, nil, nil, 0, false, true)
end

function Quest40240:OnSubStart4024020(arg1)
    print("OnSubStart4024020")
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024020(arg1)
    print("OnSubFinish4024020")
end

function Quest40240:OnSubStart4024002(arg1)
    print("OnSubStart4024002")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1329.id, 0, 4024002, 30, true)
end

function Quest40240:OnSubFinish4024002(arg1)
    print("OnSubFinish4024002")
    this:NpcDestroyImmediately(20350, npcs.Npc1329.alias)
end

function Quest40240:OnSubFailed4024002(arg1)
    print("OnSubFailed4024002")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024024(arg1)
    print("OnSubStart4024024")
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024024(arg1)
    print("OnSubFinish4024024")
end

function Quest40240:OnSubStart4024003(arg1)
    print("OnSubStart4024003")
    this:CreateQuestNpc(arg1, npcs.Npc1329.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40240):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc2605.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40240):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc2623.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40240):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc10233.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40240):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1040.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40240):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40240):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc16901.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc16902.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Paimon.alias, 40240):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Paimon.alias, 40240):DisableInteeHeadCtrl(true)
end

function Quest40240:OnSubFinish4024003(arg1)
    print("OnSubFinish4024003")
end

function Quest40240:OnSubFailed4024003(arg1)
    print("OnSubFailed4024003")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024017(arg1)
    print("OnSubStart4024017")
end

function Quest40240:OnSubFinish4024017(arg1)
    print("OnSubFinish4024017")
end

function Quest40240:OnSubFailed4024017(arg1)
    print("OnSubFailed4024017")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024018(arg1)
    print("OnSubStart4024018")
end

function Quest40240:OnSubFinish4024018(arg1)
    print("OnSubFinish4024018")
end

function Quest40240:OnSubFailed4024018(arg1)
    print("OnSubFailed4024018")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024019(arg1)
    print("OnSubStart4024019")
end

function Quest40240:OnSubFinish4024019(arg1)
    print("OnSubFinish4024019")
end

function Quest40240:OnSubFailed4024019(arg1)
    print("OnSubFailed4024019")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024004(arg1)
    print("OnSubStart4024004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024004, 0, 30, 1, npcs.Npc1329.id)
end

function Quest40240:OnSubFinish4024004(arg1)
    print("OnSubFinish4024004")
    this:NpcDestroyImmediately(20350, npcs.Npc16902.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc16901.alias)
    this:NpcDestroyImmediately(20350, npcs.Paimon.alias)
end

function Quest40240:OnSubFailed4024004(arg1)
    print("OnSubFailed4024004")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024025(arg1)
    print("OnSubStart4024025")
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024025(arg1)
    print("OnSubFinish4024025")
end

function Quest40240:OnSubStart4024005(arg1)
    print("OnSubStart4024005")
    this:CreateQuestNpc(arg1, npcs.Npc1329.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40240):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1069.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1069.alias, 40240):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1069.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1040.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc2605.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40240):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc2605.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc2623.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc10233.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40240):DisableInteeHeadCtrl(true)
end

function Quest40240:OnSubFinish4024005(arg1)
    print("OnSubFinish4024005")
    this:NpcDestroyImmediately(20350, npcs.Npc1329.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc1069.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc1040.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc2605.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc2623.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc10233.alias)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0, function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData02, nil, nil, nil)
    end, nil, nil, 0, false, true)
end

function Quest40240:OnSubFailed4024005(arg1)
    print("OnSubFailed4024005")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024021(arg1)
    print("OnSubStart4024021")
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024021(arg1)
    print("OnSubFinish4024021")
end

function Quest40240:OnSubStart4024006(arg1)
    print("OnSubStart4024006")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024006, 0, 10, 1, npcs.Npc1329.id)
    actorMgr:CreateActorWithPos("Q4024006Trigger", "Actor/Gadget/Q4024006Trigger", 70900002, 0, points._Q4024006TriggerPoint_.pos, points._Q4024006TriggerPoint_.rot, true, false, 20350, nil, 0, 0)
end

function Quest40240:OnSubFinish4024006(arg1)
    print("OnSubFinish4024006")
    this:NpcDestroyImmediately(20350, npcs.Npc1329.alias)
    this:DestroyQuestTrigger("Q4024006Trigger", false)
end

function Quest40240:OnSubFailed4024006(arg1)
    print("OnSubFailed4024006")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024026(arg1)
    print("OnSubStart4024026")
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024026(arg1)
    print("OnSubFinish4024026")
end

function Quest40240:OnSubStart4024023(arg1)
    print("OnSubStart4024023")
end

function Quest40240:OnSubFinish4024023(arg1)
    print("OnSubFinish4024023")
    this:DeployStoryByQuest(134024002)
end

function Quest40240:OnSubFailed4024023(arg1)
    print("OnSubFailed4024023")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024015(arg1)
    print("OnSubStart4024015")
end

function Quest40240:OnSubFinish4024015(arg1)
    print("OnSubFinish4024015")
end

function Quest40240:OnSubFailed4024015(arg1)
    print("OnSubFailed4024015")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024016(arg1)
    print("OnSubStart4024016")
end

function Quest40240:OnSubFinish4024016(arg1)
    print("OnSubFinish4024016")
end

function Quest40240:OnSubFailed4024016(arg1)
    print("OnSubFailed4024016")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024029(arg1)
    print("OnSubStart4024029")
end

function Quest40240:OnSubFinish4024029(arg1)
    print("OnSubFinish4024029")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4024001, nil)
    end)
end

function Quest40240:OnSubStart4024030(arg1)
    print("OnSubStart4024030")
end

function Quest40240:OnSubFinish4024030(arg1)
    print("OnSubFinish4024030")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4024002, nil)
    end)
end

function Quest40240:OnSubStart4024014(arg1)
    print("OnSubStart4024014")
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
    this:CallDelayByQuest("402401401", 3, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(4024014, 0, 50, 1, npcs.Npc2605.id)
        this:CancelAllStory()
    end)
end

function Quest40240:OnSubFinish4024014(arg1)
    print("OnSubFinish4024014")
    this:NpcDestroyImmediately(20350, npcs.Npc2605.alias)
end

function Quest40240:OnSubFailed4024014(arg1)
    print("OnSubFailed4024014")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024027(arg1)
    print("OnSubStart4024027")
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024027(arg1)
    print("OnSubFinish4024027")
end

function Quest40240:OnSubStart4024007(arg1)
    print("OnSubStart4024007")
    this:CreateQuestNpc(arg1, npcs.Npc1329.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1329.alias, 40240):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 40240):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc2605.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2623.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2623.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc10233.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10233.alias, 40240):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16925.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024007(arg1)
    print("OnSubFinish4024007")
    this:NpcDestroyImmediately(20350, npcs.Npc1329.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc1044.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc2605.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc2623.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc10233.alias)
    this:NpcDestroyImmediately(20350, npcs.Npc16925.alias)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0, function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData03, nil, nil, nil)
    end, nil, nil, 0, false, true)
end

function Quest40240:OnSubFailed4024007(arg1)
    print("OnSubFailed4024007")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024022(arg1)
    print("OnSubStart4024022")
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024022(arg1)
    print("OnSubFinish4024022")
end

function Quest40240:OnSubStart4024008(arg1)
    print("OnSubStart4024008")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024008, 0, 10, 1, npcs.Npc1329.id)
    actorMgr:CreateActorWithPos("Q4024008Trigger", "Actor/Gadget/Q4024008Trigger", 70900002, 0, points._Q4024008TriggerPoint_.pos, points._Q4024008TriggerPoint_.rot, true, false, 20350, nil, 0, 0)
end

function Quest40240:OnSubFinish4024008(arg1)
    print("OnSubFinish4024008")
    this:NpcDestroyImmediately(20350, npcs.Npc1329.alias)
    this:DestroyQuestTrigger("Q4024008Trigger", false)
end

function Quest40240:OnSubFailed4024008(arg1)
    print("OnSubFailed4024008")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024009(arg1)
    print("OnSubStart4024009")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4024003, nil)
        this:DeployStoryByQuest(134024009)
    end)
end

function Quest40240:OnSubFinish4024009(arg1)
    print("OnSubFinish4024009")
    this:CancelAllStory()
    this:ClearNarratorTask()
end

function Quest40240:OnSubFailed4024009(arg1)
    print("OnSubFailed4024009")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024028(arg1)
    print("OnSubStart4024028")
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16610.id, 0, false, 0)
end

function Quest40240:OnSubFinish4024028(arg1)
    print("OnSubFinish4024028")
end

function Quest40240:OnSubStart4024010(arg1)
    print("OnSubStart4024010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024010, 0, 30, 1, npcs.Npc1329.id)
end

function Quest40240:OnSubFinish4024010(arg1)
    print("OnSubFinish4024010")
    this:NpcDestroyImmediately(20350, npcs.Npc1329.alias)
end

function Quest40240:OnSubFailed4024010(arg1)
    print("OnSubFailed4024010")
    this:RecycleAllRes()
end

function Quest40240:OnSubStart4024011(arg1)
    print("OnSubStart4024011")
    this:CreateQuestNpc(arg1, npcs.Npc16607.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc16610.id, 0, 20, 4024011)
    if sceneData.currSceneID == 20350 then
        this:ShowBlackScreenWithDialogText(0.5, 1, 0, function(arg1_2)
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData04, nil, nil, nil)
        end, nil, nil, 0, false, true)
    end
end

function Quest40240:OnSubFinish4024011(arg1)
    print("OnSubFinish4024011")
    this:NpcDestroyImmediately(3, npcs.Npc16607.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16610.alias)
    this:DeployStoryByQuest(134024003)
end

return Quest40240
