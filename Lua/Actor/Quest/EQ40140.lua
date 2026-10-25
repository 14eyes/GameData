require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40140 = class("Quest40140", QuestActorProxy)
Quest40140.defaultAlias = "Quest40140"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40140:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40140:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014001"] = self.OnSubStart4014001,
        ["4014002"] = self.OnSubStart4014002,
        ["4014003"] = self.OnSubStart4014003,
        ["4014008"] = self.OnSubStart4014008,
        ["4014009"] = self.OnSubStart4014009,
        ["4014010"] = self.OnSubStart4014010,
        ["4014011"] = self.OnSubStart4014011,
        ["4014012"] = self.OnSubStart4014012,
        ["4014013"] = self.OnSubStart4014013,
        ["4014014"] = self.OnSubStart4014014,
        ["4014015"] = self.OnSubStart4014015,
        ["4014016"] = self.OnSubStart4014016,
        ["4014004"] = self.OnSubStart4014004,
        ["4014005"] = self.OnSubStart4014005,
        ["4014006"] = self.OnSubStart4014006,
        ["4014007"] = self.OnSubStart4014007,
        ["4014017"] = self.OnSubStart4014017
    }
end

function Quest40140:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014001"] = self.OnSubFinish4014001,
        ["4014002"] = self.OnSubFinish4014002,
        ["4014003"] = self.OnSubFinish4014003,
        ["4014008"] = self.OnSubFinish4014008,
        ["4014009"] = self.OnSubFinish4014009,
        ["4014010"] = self.OnSubFinish4014010,
        ["4014011"] = self.OnSubFinish4014011,
        ["4014012"] = self.OnSubFinish4014012,
        ["4014013"] = self.OnSubFinish4014013,
        ["4014014"] = self.OnSubFinish4014014,
        ["4014015"] = self.OnSubFinish4014015,
        ["4014016"] = self.OnSubFinish4014016,
        ["4014004"] = self.OnSubFinish4014004,
        ["4014005"] = self.OnSubFinish4014005,
        ["4014006"] = self.OnSubFinish4014006,
        ["4014007"] = self.OnSubFinish4014007,
        ["4014017"] = self.OnSubFinish4014017
    }
end

function Quest40140:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40140:Start()
    print("Start")
end

function Quest40140:OnDestroy()
    print("OnDestroy")
end

function Quest40140:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40140:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40140:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1084Data.alias, 1035)
    this:SafeDestroyQuestNpc(npcs.Npc1084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1083Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13853Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13854Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13891Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13899Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1066Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4014005Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4014005Trigger01", 3, false)
    this:DestroyNpcTrigger("Q4014002N1084Trigger")
    this:DestroyNpcTrigger("Q4014003N1015Trigger")
    this:DestroyNpcTrigger("Q4014004N1083Trigger")
    this:DestroyNpcTrigger("Q4014006N1083Trigger")
    this:DestroyNpcTrigger("Q4014007N1015Trigger")
    this:DestroyNpcTrigger("Q4014008N1015Trigger")
    this:DestroyNpcTrigger("Q4014017N1083Trigger")
    actorMgr:DestroyNpcActorByAlias("Npc1389040139")
    actorMgr:DestroyNpcActorByAlias("Npc1385740139")
end

function Quest40140:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40140:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest40140:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40140:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40140:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40140:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40140:OnSubStart4014001(arg1)
    print("OnSubStart4014001")
end

function Quest40140:OnSubFinish4014001(arg1)
    print("OnSubFinish4014001")
    this:NarratorOnlyTaskByData(datas.Narrator_4014099, nil, 40140)
    actorMgr:DestroyNpcActorByAlias("Npc1389040139")
    actorMgr:DestroyNpcActorByAlias("Npc1385740139")
end

function Quest40140:OnSubStart4014002(arg1)
    print("OnSubStart4014002")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1084Data.id, 4014002, 0, 20, 1, true)
end

function Quest40140:OnSubFinish4014002(arg1)
    print("OnSubFinish4014002")
    this:ClearNarratorTask()
    this:NpcDestroyWithBlackscreen(1035, npcs.Npc1084Data.alias)
end

function Quest40140:OnSubStart4014003(arg1)
    print("OnSubStart4014003")
    this:NpcCreateWithNpcTrigger(npcs.Npc1015Data.id, 4014003, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Npc1045Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1066Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1015Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1045Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1066Data.alias):DoFreeStyle(1192, true, nil, true, true, false, false)
end

function Quest40140:OnSubFinish4014003(arg1)
    print("OnSubFinish4014003")
end

function Quest40140:OnSubStart4014008(arg1)
    print("OnSubStart4014008")
end

function Quest40140:OnSubFinish4014008(arg1)
    print("OnSubFinish4014008")
end

function Quest40140:OnSubStart4014009(arg1)
    print("OnSubStart4014009")
    this:NpcCreateWithNpcTrigger(npcs.Npc1015Data.id, 4014009, 0, 20)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1045Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1015Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1045Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest40140:OnSubFinish4014009(arg1)
    print("OnSubFinish4014009")
end

function Quest40140:OnSubStart4014010(arg1)
    print("OnSubStart4014010")
end

function Quest40140:OnSubFinish4014010(arg1)
    print("OnSubFinish4014010")
end

function Quest40140:OnSubStart4014011(arg1)
    print("OnSubStart4014011")
    this:CreateQuestNpc(arg1, npcs.Npc1083Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1066Data.id, 0)
end

function Quest40140:OnSubFinish4014011(arg1)
    print("OnSubFinish4014011")
end

function Quest40140:OnSubStart4014012(arg1)
    print("OnSubStart4014012")
    this:CreateQuestNpc(arg1, npcs.Npc1084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13891Data.id, 0)
    if this:GetSubQuestState(4014010) == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc1083Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1066Data.id, 0)
    end

    if this:GetSubQuestState(4014009) == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc1015Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1045Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1015Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1045Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    end

    this:GetQuestNpcActor(npcs.Npc1066Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13891Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1083Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1015Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1045Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1083Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13891Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1066Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40140:OnSubFinish4014012(arg1)
    print("OnSubFinish4014012")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_4014098, nil, 40140)
    end)
end

function Quest40140:OnSubStart4014013(arg1)
    print("OnSubStart4014013")
    this:CreateQuestNpc(arg1, npcs.Npc13899Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1066Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1015Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1045Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13891Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1083Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1015Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1045Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1083Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13891Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1066Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40140:OnSubFinish4014013(arg1)
    print("OnSubFinish4014013")
    this:SafeDestroyQuestNpc(npcs.Npc13899Data.alias, 3)
    this:ClearNarratorTask()
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1015Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1045Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1083Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13891Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1066Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40140:OnSubStart4014014(arg1)
    print("OnSubStart4014014")
end

function Quest40140:OnSubFinish4014014(arg1)
    print("OnSubFinish4014014")
end

function Quest40140:OnSubStart4014015(arg1)
    print("OnSubStart4014015")
end

function Quest40140:OnSubFinish4014015(arg1)
    print("OnSubFinish4014015")
end

function Quest40140:OnSubStart4014016(arg1)
    print("OnSubStart4014016")
end

function Quest40140:OnSubFinish4014016(arg1)
    print("OnSubFinish4014016")
end

function Quest40140:OnSubStart4014004(arg1)
    print("OnSubStart4014004")
    this:NpcCreateWithNpcTrigger(npcs.Npc1083Data.id, 4014004, 0, 30)
end

function Quest40140:OnSubFinish4014004(arg1)
    print("OnSubFinish4014004")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1083Data.alias)
end

function Quest40140:OnSubStart4014005(arg1)
    print("OnSubStart4014005")
    this:CreateQuestNpc(arg1, npcs.Npc1084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1015Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1045Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13891Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1066Data.id, 0)
    actorMgr:CreateActorWithPos("Q4014005Trigger", "Actor/Gadget/Q4014005Trigger", 70900002, 0, points.TPos_Q4014005Trigger.pos, points.TPos_Q4014005Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q4014005Trigger01", "Actor/Gadget/Q4014005Trigger01", 70900002, 0, points.TPos_Q4014005Trigger01.pos, points.TPos_Q4014005Trigger01.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1066Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1015Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1045Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13891Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40140:OnSubFinish4014005(arg1)
    print("OnSubFinish4014005")
    this:ActorDestroy("Q4014005Trigger")
    this:ActorDestroy("Q4014005Trigger01")
    this:DestroyQuestNpcActor(npcs.Npc1084Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1015Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1045Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13891Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1066Data.alias, 3)
end

function Quest40140:OnSubStart4014006(arg1)
    print("OnSubStart4014006")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083Data.id, 4014006, 0, 30, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1015Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1045Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13891Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1066Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1066Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1015Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1045Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13891Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40140:OnSubFinish4014006(arg1)
    print("OnSubFinish4014006")
    this:SafeDestroyQuestNpc(npcs.Npc1084Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1083Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13891Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1066Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest40140:OnSubStart4014007(arg1)
    print("OnSubStart4014007")
    this:NpcCreateWithNpcTrigger(npcs.Npc1015Data.id, 4014007, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Npc1045Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13853Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13854Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1015Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1045Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13853Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13854Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13853Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13854Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40140:OnSubFinish4014007(arg1)
    print("OnSubFinish4014007")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1015Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13853Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13854Data.alias, 3)
end

function Quest40140:OnSubStart4014017(arg1)
    print("OnSubStart4014017")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083Data.id, 4014017, 0, 15, 1)
end

function Quest40140:OnSubFinish4014017(arg1)
    print("OnSubFinish4014017")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1083Data.alias)
end

return Quest40140
