require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16010 = class("Quest16010", QuestActorProxy)
Quest16010.defaultAlias = "Quest16010"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16010:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1601001"] = self.OnSubStart1601001,
        ["1601015"] = self.OnSubStart1601015,
        ["1601002"] = self.OnSubStart1601002,
        ["1601003"] = self.OnSubStart1601003,
        ["1601004"] = self.OnSubStart1601004,
        ["1601016"] = self.OnSubStart1601016,
        ["1601034"] = self.OnSubStart1601034,
        ["1601035"] = self.OnSubStart1601035,
        ["1601032"] = self.OnSubStart1601032,
        ["1601005"] = self.OnSubStart1601005,
        ["1601006"] = self.OnSubStart1601006,
        ["1601007"] = self.OnSubStart1601007,
        ["1601008"] = self.OnSubStart1601008,
        ["1601009"] = self.OnSubStart1601009,
        ["1601033"] = self.OnSubStart1601033,
        ["1601017"] = self.OnSubStart1601017,
        ["1601018"] = self.OnSubStart1601018,
        ["1601019"] = self.OnSubStart1601019,
        ["1601020"] = self.OnSubStart1601020,
        ["1601021"] = self.OnSubStart1601021,
        ["1601036"] = self.OnSubStart1601036,
        ["1601010"] = self.OnSubStart1601010,
        ["1601011"] = self.OnSubStart1601011,
        ["1601012"] = self.OnSubStart1601012,
        ["1601013"] = self.OnSubStart1601013,
        ["1601014"] = self.OnSubStart1601014,
        ["1601038"] = self.OnSubStart1601038,
        ["1601025"] = self.OnSubStart1601025,
        ["1601026"] = self.OnSubStart1601026,
        ["1601027"] = self.OnSubStart1601027,
        ["1601022"] = self.OnSubStart1601022,
        ["1601028"] = self.OnSubStart1601028,
        ["1601029"] = self.OnSubStart1601029,
        ["1601023"] = self.OnSubStart1601023,
        ["1601024"] = self.OnSubStart1601024,
        ["1601030"] = self.OnSubStart1601030,
        ["1601031"] = self.OnSubStart1601031,
        ["1601037"] = self.OnSubStart1601037
    }
end

function Quest16010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1601001"] = self.OnSubFinish1601001,
        ["1601015"] = self.OnSubFinish1601015,
        ["1601002"] = self.OnSubFinish1601002,
        ["1601003"] = self.OnSubFinish1601003,
        ["1601004"] = self.OnSubFinish1601004,
        ["1601016"] = self.OnSubFinish1601016,
        ["1601034"] = self.OnSubFinish1601034,
        ["1601035"] = self.OnSubFinish1601035,
        ["1601032"] = self.OnSubFinish1601032,
        ["1601005"] = self.OnSubFinish1601005,
        ["1601006"] = self.OnSubFinish1601006,
        ["1601007"] = self.OnSubFinish1601007,
        ["1601008"] = self.OnSubFinish1601008,
        ["1601009"] = self.OnSubFinish1601009,
        ["1601033"] = self.OnSubFinish1601033,
        ["1601017"] = self.OnSubFinish1601017,
        ["1601018"] = self.OnSubFinish1601018,
        ["1601019"] = self.OnSubFinish1601019,
        ["1601020"] = self.OnSubFinish1601020,
        ["1601021"] = self.OnSubFinish1601021,
        ["1601036"] = self.OnSubFinish1601036,
        ["1601010"] = self.OnSubFinish1601010,
        ["1601011"] = self.OnSubFinish1601011,
        ["1601012"] = self.OnSubFinish1601012,
        ["1601013"] = self.OnSubFinish1601013,
        ["1601014"] = self.OnSubFinish1601014,
        ["1601038"] = self.OnSubFinish1601038,
        ["1601025"] = self.OnSubFinish1601025,
        ["1601026"] = self.OnSubFinish1601026,
        ["1601027"] = self.OnSubFinish1601027,
        ["1601022"] = self.OnSubFinish1601022,
        ["1601028"] = self.OnSubFinish1601028,
        ["1601029"] = self.OnSubFinish1601029,
        ["1601023"] = self.OnSubFinish1601023,
        ["1601024"] = self.OnSubFinish1601024,
        ["1601030"] = self.OnSubFinish1601030,
        ["1601031"] = self.OnSubFinish1601031,
        ["1601037"] = self.OnSubFinish1601037
    }
end

function Quest16010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1601034"] = self.OnSubFailed1601034,
        ["1601035"] = self.OnSubFailed1601035,
        ["1601005"] = self.OnSubFailed1601005,
        ["1601006"] = self.OnSubFailed1601006,
        ["1601007"] = self.OnSubFailed1601007,
        ["1601008"] = self.OnSubFailed1601008,
        ["1601009"] = self.OnSubFailed1601009,
        ["1601017"] = self.OnSubFailed1601017,
        ["1601018"] = self.OnSubFailed1601018,
        ["1601019"] = self.OnSubFailed1601019,
        ["1601020"] = self.OnSubFailed1601020,
        ["1601021"] = self.OnSubFailed1601021,
        ["1601010"] = self.OnSubFailed1601010,
        ["1601011"] = self.OnSubFailed1601011,
        ["1601012"] = self.OnSubFailed1601012,
        ["1601013"] = self.OnSubFailed1601013,
        ["1601014"] = self.OnSubFailed1601014,
        ["1601025"] = self.OnSubFailed1601025,
        ["1601026"] = self.OnSubFailed1601026,
        ["1601027"] = self.OnSubFailed1601027,
        ["1601022"] = self.OnSubFailed1601022,
        ["1601028"] = self.OnSubFailed1601028,
        ["1601029"] = self.OnSubFailed1601029,
        ["1601024"] = self.OnSubFailed1601024,
        ["1601030"] = self.OnSubFailed1601030,
        ["1601031"] = self.OnSubFailed1601031
    }
end

function Quest16010:Start()
    print("Start")
end

function Quest16010:OnDestroy()
    print("OnDestroy")
end

function Quest16010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16010:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("1")
    this:UnCallDelayByQuest("Q1601004N1310CallDelay")
    this:DestroyNpcTrigger("Q1601004N1310Trigger")
    this:DestroyNpcTrigger("Q1601005N1310Trigger")
    this:DestroyNpcTrigger("Q1601010N1310Trigger")
    this:UnCallDelayByQuest("Q1601014N1310CallDelay")
    this:DestroyNpcTrigger("Q1601014N1310Trigger")
    this:DestroyNpcTrigger("Q1601025N1310Trigger")
    this:DestroyNpcTrigger("Q1601017N1310Trigger")
    this:DestroyNpcTrigger("Q1601022N1310Trigger")
    this:ActorDestroy("Q1601001Trigger", nil)
    this:ActorDestroy("Q1601002Trigger", nil)
    this:ActorDestroy("Q1601007Trigger", nil)
    this:ActorDestroy("Q1601028Trigger", nil)
    this:ActorDestroy("Q1601019Trigger", nil)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1310_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1310_1.alias, 20334)
    this:LightNotifyTo(npcs.Npc7599.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7601.alias, 0, true)
    this:CancelStoryByQuest(121601000)
    this:CancelStoryByQuest(121601001)
    this:CancelStoryByQuest(121601003)
    this:CancelStoryByQuest(121601002)
    this:RecycleAllRes()
end

function Quest16010:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1601001Trigger", 0)
    this:ActorDestroy("Q1601002Trigger", 0)
    this:ActorDestroy("Q1601007Trigger", 0)
    this:ActorDestroy("Q1601028Trigger", 0)
    this:ActorDestroy("Q1601019Trigger", 0)
    this:ActorDestroy("Q1601022Trigger", 16010)
    this:ActorDestroy("Q1601036Trigger", 16010)
    this:ActorDestroy("Q1601036Trigger_1", 16010)
    this:ActorDestroy("Q1601038Trigger", 16010)
end

function Quest16010:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1601001 then
        actorUtils.FinishQuestWithParam({false}, {1601001})
    end
end

function Quest16010:ActorDestroy(arg1, arg2)
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

function Quest16010:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest16010:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16010:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest16010:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest16010:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest16010:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16010:OnSubStart1601001(arg1)
    print("OnSubStart1601001")
    this:CreateQuestNpc(arg1, npcs.Npc1310_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 16010):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 16010):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 16010):DoFreeStyle(1340, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 16010):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc7599.alias, 1, true)
    this:NotifyTo(npcs.Npc7601.alias, 1, true)
    this:NotifyTo(npcs.Npc7602.alias, 1, true)
    this:NotifyTo(npcs.Npc7603.alias, 1, true)
    this:NotifyTo(npcs.Npc7604.alias, 1, true)
    this:NotifyTo(npcs.Npc7605.alias, 1, true)
    this:NotifyTo(npcs.Npc7606.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1601001Trigger", "Actor/Gadget/Q1601001Trigger", 70900002, 0, points._Q1601001TriggerPoint_.pos, points._Q1601001TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest16010:OnSubFinish1601001(arg1)
    print("OnSubFinish1601001")
    this:ActorDestroy("Q1601001Trigger", 0)
end

function Quest16010:OnSubStart1601015(arg1)
    print("OnSubStart1601015")
    this:GetQuestNpcActor(npcs.Npc1314.alias, 16010):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc7599.alias, 1, true)
    this:NotifyTo(npcs.Npc7601.alias, 1, true)
    this:NotifyTo(npcs.Npc7602.alias, 1, true)
    this:NotifyTo(npcs.Npc7603.alias, 1, true)
    this:NotifyTo(npcs.Npc7604.alias, 1, true)
    this:NotifyTo(npcs.Npc7605.alias, 1, true)
    this:NotifyTo(npcs.Npc7606.alias, 1, true)
end

function Quest16010:OnSubFinish1601015(arg1)
    print("OnSubFinish1601015")
    this:NpcDestroyImmediately(3, npcs.Npc1310_1.alias)
    this:LightNotifyTo(npcs.Npc7599.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7601.alias, 0, true)
end

function Quest16010:OnSubStart1601002(arg1)
    print("OnSubStart1601002")
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 16010):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 16010):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 16010):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 16010):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 16010):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 16010):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc7599.alias, 1, true)
    this:NotifyTo(npcs.Npc7601.alias, 1, true)
    this:NotifyTo(npcs.Npc7602.alias, 1, true)
    this:NotifyTo(npcs.Npc7603.alias, 1, true)
    this:NotifyTo(npcs.Npc7604.alias, 1, true)
    this:NotifyTo(npcs.Npc7605.alias, 1, true)
    this:NotifyTo(npcs.Npc7606.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1601002Trigger", "Actor/Gadget/Q1601002Trigger", 70900002, 0, points._Q1601002TriggerPoint_.pos, points._Q1601002TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest16010:OnSubFinish1601002(arg1)
    print("OnSubFinish1601002")
    this:QuestNarratorTask(datas.NarratorWithId_1601002, nil)
end

function Quest16010:OnSubStart1601003(arg1)
    print("OnSubStart1601003")
    this:GetQuestNpcActor(npcs.Npc1312.alias, 16010):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 16010):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 16010):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 16010):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 16010):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 16010):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc7599.alias, 1, true)
    this:NotifyTo(npcs.Npc7601.alias, 1, true)
    this:NotifyTo(npcs.Npc7602.alias, 1, true)
    this:NotifyTo(npcs.Npc7603.alias, 1, true)
    this:NotifyTo(npcs.Npc7604.alias, 1, true)
    this:NotifyTo(npcs.Npc7605.alias, 1, true)
    this:NotifyTo(npcs.Npc7606.alias, 1, true)
    this:CallDelayByQuest("1", 20, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1601003, nil)
    end)
end

function Quest16010:OnSubFinish1601003(arg1)
    print("OnSubFinish1601003")
    this:NpcDestroyImmediately(3, npcs.Npc1312.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1314.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
    this:LightNotifyTo(npcs.Npc7599.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7601.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7602.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7603.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7604.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7605.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7606.alias, 0, true)
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("1")
end

function Quest16010:OnSubStart1601004(arg1)
    print("OnSubStart1601004")
    this:NpcCreateWithNoBlackData(1601004, 0, npcs.Npc1310_1.id, 0, 40, 1601004, datas.NoBlackData_ForceStop_Dither)
end

function Quest16010:OnSubFinish1601004(arg1)
    print("OnSubFinish1601004")
    this:NpcDestroyImmediately(3, npcs.Npc1310_1.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowQuestSpecHint("50_013", nil, nil)
    end)
end

function Quest16010:OnSubStart1601016(arg1)
    print("OnSubStart1601016")
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
end

function Quest16010:OnSubFinish1601016(arg1)
    print("OnSubFinish1601016")
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
end

function Quest16010:OnSubStart1601034(arg1)
    print("OnSubStart1601034")
end

function Quest16010:OnSubFinish1601034(arg1)
    print("OnSubFinish1601034")
    this:PlayerEnterDungeonWithData(1867, 1307, 1601034, 1, datas.TransmitData, nil, nil)
end

function Quest16010:OnSubFailed1601034(arg1)
    print("OnSubFailed1601034")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601035(arg1)
    print("OnSubStart1601035")
end

function Quest16010:OnSubFinish1601035(arg1)
    print("OnSubFinish1601035")
    this:PlayerEnterDungeonWithData(1867, 1307, 1601035, 1, datas.TransmitData, nil, nil)
end

function Quest16010:OnSubFailed1601035(arg1)
    print("OnSubFailed1601035")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601032(arg1)
    print("OnSubStart1601032")
end

function Quest16010:OnSubFinish1601032(arg1)
    print("OnSubFinish1601032")
end

function Quest16010:OnSubStart1601005(arg1)
    print("OnSubStart1601005")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1310_1.id, 0, 1601005, 15, true)
end

function Quest16010:OnSubFinish1601005(arg1)
    print("OnSubFinish1601005")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
end

function Quest16010:OnSubFailed1601005(arg1)
    print("OnSubFailed1601005")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601006(arg1)
    print("OnSubStart1601006")
    this:DeployStoryByQuest(121601000)
end

function Quest16010:OnSubFinish1601006(arg1)
    print("OnSubFinish1601006")
    this:QuestNarratorTask(datas.NarratorWithId_1601004, nil)
end

function Quest16010:OnSubFailed1601006(arg1)
    print("OnSubFailed1601006")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601007(arg1)
    print("OnSubStart1601007")
    actorMgr:CreateActorWithPos("Q1601007Trigger", "Actor/Gadget/Q1601007Trigger", 70900002, 0, points._Q1601007TriggerPoint_.pos, points._Q1601007TriggerPoint_.rot, true, false, 20334, nil, 0, 0)
end

function Quest16010:OnSubFinish1601007(arg1)
    print("OnSubFinish1601007")
    this:QuestNarratorTask(datas.NarratorWithId_1601006, nil)
end

function Quest16010:OnSubFailed1601007(arg1)
    print("OnSubFailed1601007")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601008(arg1)
    print("OnSubStart1601008")
end

function Quest16010:OnSubFinish1601008(arg1)
    print("OnSubFinish1601008")
    this:CallDelayByQuest("1", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1601007, nil)
    end)
end

function Quest16010:OnSubFailed1601008(arg1)
    print("OnSubFailed1601008")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601009(arg1)
    print("OnSubStart1601009")
    this:NpcCreateWithNoBlack(npcs.Npc1310_1.id, 0, 15, 1601009, false, 1601009)
end

function Quest16010:OnSubFinish1601009(arg1)
    print("OnSubFinish1601009")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
    this:CancelStoryByQuest(121601000)
end

function Quest16010:OnSubFailed1601009(arg1)
    print("OnSubFailed1601009")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601033(arg1)
    print("OnSubStart1601033")
end

function Quest16010:OnSubFinish1601033(arg1)
    print("OnSubFinish1601033")
end

function Quest16010:OnSubStart1601017(arg1)
    print("OnSubStart1601017")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1310_1.id, 0, 1601017, 15, true)
end

function Quest16010:OnSubFinish1601017(arg1)
    print("OnSubFinish1601017")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
end

function Quest16010:OnSubFailed1601017(arg1)
    print("OnSubFailed1601017")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601018(arg1)
    print("OnSubStart1601018")
    this:DeployStoryByQuest(121601002)
end

function Quest16010:OnSubFinish1601018(arg1)
    print("OnSubFinish1601018")
    this:QuestNarratorTask(datas.NarratorWithId_1601004, nil)
end

function Quest16010:OnSubFailed1601018(arg1)
    print("OnSubFailed1601018")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601019(arg1)
    print("OnSubStart1601019")
    actorMgr:CreateActorWithPos("Q1601019Trigger", "Actor/Gadget/Q1601019Trigger", 70900002, 0, points._Q1601019TriggerPoint_.pos, points._Q1601019TriggerPoint_.rot, true, false, 20334, nil, 0, 0)
end

function Quest16010:OnSubFinish1601019(arg1)
    print("OnSubFinish1601019")
    this:QuestNarratorTask(datas.NarratorWithId_1601006, nil)
    this:ActorDestroy("Q1601019Trigger", 16010)
end

function Quest16010:OnSubFailed1601019(arg1)
    print("OnSubFailed1601019")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601020(arg1)
    print("OnSubStart1601020")
end

function Quest16010:OnSubFinish1601020(arg1)
    print("OnSubFinish1601020")
    this:CallDelayByQuest("1", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1601013, nil)
    end)
end

function Quest16010:OnSubFailed1601020(arg1)
    print("OnSubFailed1601020")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601021(arg1)
    print("OnSubStart1601021")
    this:NpcCreateWithNoBlack(npcs.Npc1310_1.id, 0, 15, 1601021, false, 1601033)
end

function Quest16010:OnSubFinish1601021(arg1)
    print("OnSubFinish1601021")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
    this:CancelStoryByQuest(121601002)
end

function Quest16010:OnSubFailed1601021(arg1)
    print("OnSubFailed1601021")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601036(arg1)
    print("OnSubStart1601036")
end

function Quest16010:OnSubFinish1601036(arg1)
    print("OnSubFinish1601036")
end

function Quest16010:OnSubStart1601010(arg1)
    print("OnSubStart1601010")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1310_1.id, 0, 1601010, 70, true)
    actorMgr:CreateActorWithPos("Q1601036Trigger", "Actor/Gadget/Q1601036Trigger", 70900002, 0, points._Q1601036TriggerPoint_.pos, points._Q1601036TriggerPoint_.rot, true, false, 20334, nil, 0, 16010)
    actorMgr:CreateActorWithPos("Q1601036Trigger_1", "Actor/Gadget/Q1601036Trigger_1", 70900002, 0, points._Q1601036Trigger_1Point_.pos, points._Q1601036Trigger_1Point_.rot, true, false, 20334, nil, 0, 16010)
end

function Quest16010:OnSubFinish1601010(arg1)
    print("OnSubFinish1601010")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
    this:ActorDestroy("Q1601036Trigger", 16010)
    this:ActorDestroy("Q1601036Trigger_1", 16010)
end

function Quest16010:OnSubFailed1601010(arg1)
    print("OnSubFailed1601010")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601011(arg1)
    print("OnSubStart1601011")
end

function Quest16010:OnSubFinish1601011(arg1)
    print("OnSubFinish1601011")
    this:CallDelayByQuest("1", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1601008, function(arg1)
            this:CallDelayByQuest("WaitFor4", 4, function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId_1601019, nil)
            end)
        end)
    end)
end

function Quest16010:OnSubFailed1601011(arg1)
    print("OnSubFailed1601011")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601012(arg1)
    print("OnSubStart1601012")
end

function Quest16010:OnSubFinish1601012(arg1)
    print("OnSubFinish1601012")
end

function Quest16010:OnSubFailed1601012(arg1)
    print("OnSubFailed1601012")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601013(arg1)
    print("OnSubStart1601013")
    this:DeployStoryByQuest(121601001)
end

function Quest16010:OnSubFinish1601013(arg1)
    print("OnSubFinish1601013")
end

function Quest16010:OnSubFailed1601013(arg1)
    print("OnSubFailed1601013")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601014(arg1)
    print("OnSubStart1601014")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1601014, 0, 50, 0, npcs.Npc1310_1.id)
end

function Quest16010:OnSubFinish1601014(arg1)
    print("OnSubFinish1601014")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
    this:CancelStoryByQuest(121601001)
end

function Quest16010:OnSubFailed1601014(arg1)
    print("OnSubFailed1601014")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601038(arg1)
    print("OnSubStart1601038")
end

function Quest16010:OnSubFinish1601038(arg1)
    print("OnSubFinish1601038")
end

function Quest16010:OnSubStart1601025(arg1)
    print("OnSubStart1601025")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1310_1.id, 0, 1601025, 15, true)
    actorMgr:CreateActorWithPos("Q1601038Trigger", "Actor/Gadget/Q1601038Trigger", 70900002, 0, points._Q1601038TriggerPoint_.pos, points._Q1601038TriggerPoint_.rot, true, false, 20334, nil, 0, 16010)
end

function Quest16010:OnSubFinish1601025(arg1)
    print("OnSubFinish1601025")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
    this:ActorDestroy("Q1601038Trigger", 16010)
end

function Quest16010:OnSubFailed1601025(arg1)
    print("OnSubFailed1601025")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601026(arg1)
    print("OnSubStart1601026")
    this:DeployStoryByQuest(121601004)
end

function Quest16010:OnSubFinish1601026(arg1)
    print("OnSubFinish1601026")
end

function Quest16010:OnSubFailed1601026(arg1)
    print("OnSubFailed1601026")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601027(arg1)
    print("OnSubStart1601027")
    this:NpcCreateWithNoBlackData(1601027, 0, npcs.Npc1310_1.id, 0, 15, 1601027, datas.NoBlackData_ForceStop)
end

function Quest16010:OnSubFinish1601027(arg1)
    print("OnSubFinish1601027")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_BlackNoSound, nil, nil, nil)
    this:CancelStoryByQuest(121601004)
end

function Quest16010:OnSubFailed1601027(arg1)
    print("OnSubFailed1601027")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601022(arg1)
    print("OnSubStart1601022")
end

function Quest16010:OnSubFinish1601022(arg1)
    print("OnSubFinish1601022")
end

function Quest16010:OnSubFailed1601022(arg1)
    print("OnSubFailed1601022")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601028(arg1)
    print("OnSubStart1601028")
    actorMgr:CreateActorWithPos("Q1601022Trigger", "Actor/Gadget/Q1601022Trigger", 70900002, 0, points._Q1601022TriggerPoint_.pos, points._Q1601022TriggerPoint_.rot, true, false, 20334, nil, 0, 16010)
    this:CallDelayByQuest("1", 3, function(arg1)
        this:DeployStoryByQuest(121601003)
    end)

    actorUtils.SetMainPageFeatureDisable(16010, "MiniMap", true)
    this:DisableMainPageWithConfigByQuest(true, "CommandWarDisableNearMapBTN")
end

function Quest16010:OnSubFinish1601028(arg1)
    print("OnSubFinish1601028")
    this:ActorDestroy("Q1601022Trigger", 16010)
    this:DisableMainPageWithConfigByQuest(false, "CommandWarDisableNearMapBTN")
    actorUtils.SetMainPageFeatureDisable(16010, "MiniMap", false)
end

function Quest16010:OnSubFailed1601028(arg1)
    print("OnSubFailed1601028")
    this:RecycleAllRes()
    this:DisableMainPageWithConfigByQuest(false, "CommandWarDisableNearMapBTN")
    actorUtils.SetMainPageFeatureDisable(16010, "MiniMap", false)
end

function Quest16010:OnSubStart1601029(arg1)
    print("OnSubStart1601029")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1601029, 0, 30, 0, npcs.Npc1310_1.id)
end

function Quest16010:OnSubFinish1601029(arg1)
    print("OnSubFinish1601029")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
    this:PlayerEnterDungeonWithData(1, 1308, 1601029, 1, datas.TransmitData, nil, nil)
    this:CancelStoryByQuest(121601003)
end

function Quest16010:OnSubFailed1601029(arg1)
    print("OnSubFailed1601029")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601023(arg1)
    print("OnSubStart1601023")
    actorUtils.FinishQuestWithParam({false}, {1601023})
end

function Quest16010:OnSubFinish1601023(arg1)
    print("OnSubFinish1601023")
end

function Quest16010:OnSubStart1601024(arg1)
    print("OnSubStart1601024")
end

function Quest16010:OnSubFinish1601024(arg1)
    print("OnSubFinish1601024")
end

function Quest16010:OnSubFailed1601024(arg1)
    print("OnSubFailed1601024")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601030(arg1)
    print("OnSubStart1601030")
end

function Quest16010:OnSubFinish1601030(arg1)
    print("OnSubFinish1601030")
end

function Quest16010:OnSubFailed1601030(arg1)
    print("OnSubFailed1601030")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601031(arg1)
    print("OnSubStart1601031")
end

function Quest16010:OnSubFinish1601031(arg1)
    print("OnSubFinish1601031")
end

function Quest16010:OnSubFailed1601031(arg1)
    print("OnSubFailed1601031")
    this:RecycleAllRes()
end

function Quest16010:OnSubStart1601037(arg1)
    print("OnSubStart1601037")
end

function Quest16010:OnSubFinish1601037(arg1)
    print("OnSubFinish1601037")
end

return Quest16010
