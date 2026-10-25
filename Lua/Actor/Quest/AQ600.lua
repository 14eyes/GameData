require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest600 = class("Quest600", QuestActorProxy)
Quest600.defaultAlias = "Quest600"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest600:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest600:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["60003"] = self.OnSubStart60003,
        ["60020"] = self.OnSubStart60020,
        ["60017"] = self.OnSubStart60017,
        ["60001"] = self.OnSubStart60001,
        ["60018"] = self.OnSubStart60018,
        ["60002"] = self.OnSubStart60002,
        ["60019"] = self.OnSubStart60019,
        ["60004"] = self.OnSubStart60004,
        ["60012"] = self.OnSubStart60012,
        ["60006"] = self.OnSubStart60006,
        ["60007"] = self.OnSubStart60007,
        ["60008"] = self.OnSubStart60008,
        ["60005"] = self.OnSubStart60005,
        ["60009"] = self.OnSubStart60009,
        ["60013"] = self.OnSubStart60013,
        ["60016"] = self.OnSubStart60016,
        ["60010"] = self.OnSubStart60010,
        ["60014"] = self.OnSubStart60014,
        ["60015"] = self.OnSubStart60015,
        ["60011"] = self.OnSubStart60011,
        ["60021"] = self.OnSubStart60021
    }
end

function Quest600:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["60003"] = self.OnSubFinish60003,
        ["60020"] = self.OnSubFinish60020,
        ["60017"] = self.OnSubFinish60017,
        ["60001"] = self.OnSubFinish60001,
        ["60018"] = self.OnSubFinish60018,
        ["60002"] = self.OnSubFinish60002,
        ["60019"] = self.OnSubFinish60019,
        ["60004"] = self.OnSubFinish60004,
        ["60012"] = self.OnSubFinish60012,
        ["60006"] = self.OnSubFinish60006,
        ["60007"] = self.OnSubFinish60007,
        ["60008"] = self.OnSubFinish60008,
        ["60005"] = self.OnSubFinish60005,
        ["60009"] = self.OnSubFinish60009,
        ["60013"] = self.OnSubFinish60013,
        ["60016"] = self.OnSubFinish60016,
        ["60010"] = self.OnSubFinish60010,
        ["60014"] = self.OnSubFinish60014,
        ["60015"] = self.OnSubFinish60015,
        ["60011"] = self.OnSubFinish60011,
        ["60021"] = self.OnSubFinish60021
    }
end

function Quest600:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest600:Start()
    print("Start")
end

function Quest600:OnDestroy()
    print("OnDestroy")
end

function Quest600:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest600:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest600:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest600:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q60016Trigger")
    this:ActorDestroy("Q60017Trigger")
    this:ActorDestroy("Q60020Trigger")
    this:ActorDestroy("Q60012Trigger")
    this:ActorDestroy("Q60005Trigger")
    this:ActorDestroy("Q60013Trigger")
end

function Quest600:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
    elseif arg1 == 2 then
        this:ActionSafeCall(function(arg1)
            globalActor:PlayerEnterDungeon(1, 1243, true, nil, 0)
        end)
    elseif arg1 == 3 then
        this:ActionSafeCall(function(arg1)
            globalActor:PlayerEnterDungeon(3, 1243, true, nil, 0)
        end)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 60021)
    end
end

function Quest600:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest600:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest600:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest600:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest600:AlbertRoomSearch()
    if this:GetQuestVar(60009, 8) ~= 1 then
        if this:GetQuestVar(60009, 5) ~= 1 then
            goto lbl_39
        end
    end

    this:CreateLocalGadget(73049001, "1", {x = -16.746, y = 9.743, z = -3.917}, {x = 0, y = 0, z = 0}, 1010, {"GV_AlbedoBook_Type"}, {1}, true, 202, true)
    goto lbl_62
    ::lbl_39::
    this:CreateLocalGadget(73049001, "1", {x = -16.746, y = 9.743, z = -3.917}, {x = 0, y = 0, z = 0}, 1010, {"GV_AlbedoBook_Type"}, {1}, true, 0, true)
    ::lbl_62::
    this:CreateLocalGadget(73049001, "3", {x = -15.248, y = 9.754, z = -1.164}, {x = 0, y = -130.626, z = 0}, 1010, {"GV_AlbedoBook_Type"}, {2}, true, 0, true)
    this:CreateLocalGadget(73049003, "1", {x = -14.644, y = 9.763, z = -3.285}, {x = 0, y = -88.381, z = 0}, 1010, nil, nil, true, 0, true)
    this:CreateLocalGadget(73049004, "1", {x = -15.034, y = 9.807, z = -3.961}, {x = 0, y = -90, z = 0}, 1010, nil, nil, true, 0, true)
    if this:GetQuestVar(60009, 9) == 1 then
        this:CreateLocalGadget(73049002, "2", {x = -16.881, y = 9.754, z = -3.925}, {x = 0, y = 23.143, z = 0}, 1010, nil, nil, true, 0, true)
    end
end

function Quest600:AlbertSearchDefinition() end

function Quest600:DeletAlbertRoomSearch()
    this:RemoveLocalGadget(73049001, "1")
    this:RemoveLocalGadget(73049001, "3")
    this:RemoveLocalGadget(73049003, "1")
    this:RemoveLocalGadget(73049004, "1")
    this:RemoveLocalGadget(73049002, "2")
end

function Quest600:OnSubStart60003(arg1)
    print("OnSubStart60003")
    actorUtils.FinishQuestID(false, 60003)
end

function Quest600:OnSubFinish60003(arg1)
    print("OnSubFinish60003")
    this:QuestNarratorTask(datas.NarratorWithId_60001, nil)
end

function Quest600:OnSubStart60020(arg1)
    print("OnSubStart60020")
end

function Quest600:OnSubFinish60020(arg1)
    print("OnSubFinish60020")
end

function Quest600:OnSubStart60017(arg1)
    print("OnSubStart60017")
    actorUtils.ShowQuestSpecHint("AQ600_01", function(arg1)
        actorUtils.FinishQuestID(false, 60017)
    end, function(arg1)
        actorUtils.FinishQuestID(true, 60017)
    end)
end

function Quest600:OnSubFinish60017(arg1)
    print("OnSubFinish60017")
    globalActor:PlayerEnterDungeon(1537, 1240, false, nil, 0)
end

function Quest600:OnSubStart60001(arg1)
    print("OnSubStart60001")
end

function Quest600:OnSubFinish60001(arg1)
    print("OnSubFinish60001")
end

function Quest600:OnSubStart60018(arg1)
    print("OnSubStart60018")
end

function Quest600:OnSubFinish60018(arg1)
    print("OnSubFinish60018")
end

function Quest600:OnSubStart60002(arg1)
    print("OnSubStart60002")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15224.id, 0, 60002, 20, true)
    this:CreateQuestNpc(arg1, npcs.Npc15241_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15241_1.alias, 600):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15238_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15238_1.alias, 600):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15239_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15239_1.alias, 600):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15242_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15242_1.alias, 600):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15226.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15226.alias, 600):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15228.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15228.alias, 600):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15259.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15259.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15258.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15258.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15244.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15244.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15245.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15245.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15226.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15228.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15238_1.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15239_1.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15241_1.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15242_1.alias, 600):DisableInteeHeadCtrl(true)
end

function Quest600:OnSubFinish60002(arg1)
    print("OnSubFinish60002")
end

function Quest600:OnSubStart60019(arg1)
    print("OnSubStart60019")
    this:GetQuestNpcActor(npcs.Npc15226.alias, 600):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15228.alias, 600):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15239_1.alias, 600):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15238_1.alias, 600):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15241_1.alias, 600):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15242_1.alias, 600):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15259.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15258.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15244.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15245.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15226.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15228.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15238_1.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15239_1.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15241_1.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15242_1.alias, 600):DisableInteeHeadCtrl(true)
end

function Quest600:OnSubFinish60019(arg1)
    print("OnSubFinish60019")
    this:NpcDestroyImmediately(20259, npcs.Npc15224.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15226.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15228.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15239_1.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15238_1.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15241_1.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15242_1.alias)
    this:SafeDestroyQuestNpc(npcs.Npc15259.alias, 20259)
    this:SafeDestroyQuestNpc(npcs.Npc15258.alias, 20259)
    this:SafeDestroyQuestNpc(npcs.Npc15244.alias, 20259)
    this:SafeDestroyQuestNpc(npcs.Npc15245.alias, 20259)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest600:OnSubStart60004(arg1)
    print("OnSubStart60004")
    this:GetQuestNpcActor(npcs.Npc15241_1.alias, 600):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15238_1.alias, 600):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15242_1.alias, 600):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15239_1.alias, 600):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15226.alias, 600):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15228.alias, 600):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15259.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15258.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15244.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15245.alias, 600):DoFreeStyle(1020, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15226.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15228.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15238_1.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15239_1.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15241_1.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15242_1.alias, 600):DisableInteeHeadCtrl(true)
end

function Quest600:OnSubFinish60004(arg1)
    print("OnSubFinish60004")
    this:NpcDestroyImmediately(20259, npcs.Npc15241_1.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15224.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15238_1.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15242_1.alias)
    this:NpcDestroyImmediately(20259, npcs.Npc15239_1.alias)
    this:SafeDestroyQuestNpc(npcs.Npc15226.alias, 20259)
    this:SafeDestroyQuestNpc(npcs.Npc15228.alias, 20259)
    this:SafeDestroyQuestNpc(npcs.Npc15259.alias, 20259)
    this:SafeDestroyQuestNpc(npcs.Npc15258.alias, 20259)
    this:SafeDestroyQuestNpc(npcs.Npc15244.alias, 20259)
    this:SafeDestroyQuestNpc(npcs.Npc15245.alias, 20259)
end

function Quest600:OnSubStart60012(arg1)
    print("OnSubStart60012")
    this:CreateQuestNpc(arg1, npcs.Npc15240_1.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1029.id, 0, 60012, 40, true)
    actorMgr:CreateActorWithPos("Q60012Trigger", "Actor/Gadget/Q60012Trigger", 70900002, 0, points._Q60012TriggerPoint_.pos, points._Q60012TriggerPoint_.rot, true, false, 1010)
end

function Quest600:OnSubFinish60012(arg1)
    print("OnSubFinish60012")
    this:SafeDestroyQuestNpc(npcs.Npc1029.alias, 1010)
end

function Quest600:OnSubStart60006(arg1)
    print("OnSubStart60006")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Qin.id, 0, 60006, 50, true)
    actorMgr:CreateActorWithPos("Q60012Trigger", "Actor/Gadget/Q60012Trigger", 70900002, 0, points._Q60012TriggerPoint_.pos, points._Q60012TriggerPoint_.rot, true, false, 1010)
end

function Quest600:OnSubFinish60006(arg1)
    print("OnSubFinish60006")
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 20262)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, function(arg1)
            this:TryShowQuestReview("60001")
        end, nil, nil)
    end)
end

function Quest600:OnSubStart60007(arg1)
    print("OnSubStart60007")
    this:NpcCreateWithNpcTrigger(npcs.Wendy.id, 0, 12, 60007)
    this:GetQuestNpcActor(npcs.Wendy.alias, 600):DoFreeStyle(1220, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q60012Trigger", "Actor/Gadget/Q60012Trigger", 70900002, 0, points._Q60012TriggerPoint_.pos, points._Q60012TriggerPoint_.rot, true, false, 1010)
    this:GetQuestNpcActor(npcs.Wendy.alias, 600):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1309.alias, 600):DisableInteeHeadCtrl(true)
end

function Quest600:OnSubFinish60007(arg1)
    print("OnSubFinish60007")
end

function Quest600:OnSubStart60008(arg1)
    print("OnSubStart60008")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Wendy.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Wendy.alias, 600):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:NpcCreateWithNpcTrigger(npcs.Qin.id, 0, 16, 60008)
        this:CreateQuestNpc(arg1, npcs.Npc15240_1.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1309.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1309.alias, 600):DoFreeStyle(1120, true, nil, true, true, false, true)
        actorMgr:CreateActorWithPos("Q60012Trigger", "Actor/Gadget/Q60012Trigger", 70900002, 0, points._Q60012TriggerPoint_.pos, points._Q60012TriggerPoint_.rot, true, false, 1010)
        this:GetQuestNpcActor(npcs.Wendy.alias, 600):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1309.alias, 600):DisableInteeHeadCtrl(true)
    end)
end

function Quest600:OnSubFinish60008(arg1)
    print("OnSubFinish60008")
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1309.alias, 3)
    this:ActorDestroy("Q60012Trigger")
end

function Quest600:OnSubStart60005(arg1)
    print("OnSubStart60005")
    this:GetQuestNpcActor(npcs.Qin.alias, 600):SitOnChair(0, true)
    actorMgr:CreateActorWithPos("Q60005Trigger", "Actor/Gadget/Q60005Trigger", 70900002, 0, points._Q60005TriggerPoint_.pos, points._Q60005TriggerPoint_.rot, true, false, 1010)
    this:AlbertRoomSearch()
end

function Quest600:OnSubFinish60005(arg1)
    print("OnSubFinish60005")
end

function Quest600:OnSubStart60009(arg1)
    print("OnSubStart60009")
    this:CreateQuestNpc(arg1, npcs.Npc15176.id, 0, false, 0)
    this:AlbertRoomSearch()
    this:GetQuestNpcActor(npcs.Qin.alias, 600):SitOnChair(0, true)
end

function Quest600:OnSubFinish60009(arg1)
    print("OnSubFinish60009")
end

function Quest600:OnSubStart60013(arg1)
    print("OnSubStart60013")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15332.id, 0, false, 0)
        this:AlbertRoomSearch()
        this:GetQuestNpcActor(npcs.Qin.alias, 600):SitOnChair(0, true)
        actorMgr:CreateActorWithPos("Q60013Trigger", "Actor/Gadget/Q60013Trigger", 70900002, 0, points._Q60013TriggerPoint_.pos, points._Q60013TriggerPoint_.rot, true, false, 1010)
    end)
end

function Quest600:OnSubFinish60013(arg1)
    print("OnSubFinish60013")
    this:SafeDestroyQuestNpc(npcs.Npc15332.alias, 1010)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_60002, nil)
    end)
end

function Quest600:OnSubStart60016(arg1)
    print("OnSubStart60016")
    this:CreateQuestNpc(arg1, npcs.Npc15235.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q60016Trigger", "Actor/Gadget/Q60016Trigger", 70900002, 0, points._Q60016TriggerPoint_.pos, points._Q60016TriggerPoint_.rot, true, false, 3)
    this:AlbertRoomSearch()
    this:CreateLocalGadget(70710470, "1", {x = 1316.306, y = 356.986, z = -937.599}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Qin.alias, 600):SitOnChair(0, true)
end

function Quest600:OnSubFinish60016(arg1)
    print("OnSubFinish60016")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
    end)

    this:ClearNarratorTask()
    this:RemoveLocalGadget(70710470, "1")
end

function Quest600:OnSubStart60010(arg1)
    print("OnSubStart60010")
    this:NpcCreateWithNpcTrigger(npcs.Qin.id, 0, 16, 60010)
    this:GetQuestNpcActor(npcs.Qin.alias, 600):SitOnChair(0, true)
    this:AlbertRoomSearch()
end

function Quest600:OnSubFinish60010(arg1)
    print("OnSubFinish60010")
    this:SafeDestroyQuestNpc(npcs.Npc15176.alias, 1010)
    this:SafeDestroyQuestNpc(npcs.Npc15235.alias, 3)
    this:DeletAlbertRoomSearch()
end

function Quest600:OnSubStart60014(arg1)
    print("OnSubStart60014")
end

function Quest600:OnSubFinish60014(arg1)
    print("OnSubFinish60014")
    this:QuestNarratorTask(datas.NarratorWithId_60004, nil)
end

function Quest600:OnSubStart60015(arg1)
    print("OnSubStart60015")
end

function Quest600:OnSubFinish60015(arg1)
    print("OnSubFinish60015")
end

function Quest600:OnSubStart60011(arg1)
    print("OnSubStart60011")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Qin.id, 0, 60011, 15, true)
end

function Quest600:OnSubFinish60011(arg1)
    print("OnSubFinish60011")
    this:NpcDestroyImmediately(20262, npcs.Qin.alias)
    this:SafeDestroyQuestNpc(npcs.Npc15240_1.alias, 1004)
    this:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(1, 1241, false, nil, 0)
    end)
end

function Quest600:OnSubStart60021(arg1)
    print("OnSubStart60021")
end

function Quest600:OnSubFinish60021(arg1)
    print("OnSubFinish60021")
end

return Quest600
