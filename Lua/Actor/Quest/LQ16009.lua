require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16009 = class("Quest16009", QuestActorProxy)
Quest16009.defaultAlias = "Quest16009"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16009:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1600901"] = self.OnSubStart1600901,
        ["1600922"] = self.OnSubStart1600922,
        ["1600902"] = self.OnSubStart1600902,
        ["1600923"] = self.OnSubStart1600923,
        ["1600903"] = self.OnSubStart1600903,
        ["1600904"] = self.OnSubStart1600904,
        ["1600905"] = self.OnSubStart1600905,
        ["1600906"] = self.OnSubStart1600906,
        ["1600907"] = self.OnSubStart1600907,
        ["1600920"] = self.OnSubStart1600920,
        ["1600921"] = self.OnSubStart1600921,
        ["1600908"] = self.OnSubStart1600908,
        ["1600910"] = self.OnSubStart1600910,
        ["1600909"] = self.OnSubStart1600909,
        ["1600911"] = self.OnSubStart1600911,
        ["1600912"] = self.OnSubStart1600912,
        ["1600924"] = self.OnSubStart1600924,
        ["1600913"] = self.OnSubStart1600913,
        ["1600914"] = self.OnSubStart1600914,
        ["1600915"] = self.OnSubStart1600915,
        ["1600925"] = self.OnSubStart1600925,
        ["1600916"] = self.OnSubStart1600916,
        ["1600926"] = self.OnSubStart1600926,
        ["1600917"] = self.OnSubStart1600917,
        ["1600918"] = self.OnSubStart1600918,
        ["1600919"] = self.OnSubStart1600919,
        ["1600927"] = self.OnSubStart1600927
    }
end

function Quest16009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1600901"] = self.OnSubFinish1600901,
        ["1600922"] = self.OnSubFinish1600922,
        ["1600902"] = self.OnSubFinish1600902,
        ["1600923"] = self.OnSubFinish1600923,
        ["1600903"] = self.OnSubFinish1600903,
        ["1600904"] = self.OnSubFinish1600904,
        ["1600905"] = self.OnSubFinish1600905,
        ["1600906"] = self.OnSubFinish1600906,
        ["1600907"] = self.OnSubFinish1600907,
        ["1600920"] = self.OnSubFinish1600920,
        ["1600921"] = self.OnSubFinish1600921,
        ["1600908"] = self.OnSubFinish1600908,
        ["1600910"] = self.OnSubFinish1600910,
        ["1600909"] = self.OnSubFinish1600909,
        ["1600911"] = self.OnSubFinish1600911,
        ["1600912"] = self.OnSubFinish1600912,
        ["1600924"] = self.OnSubFinish1600924,
        ["1600913"] = self.OnSubFinish1600913,
        ["1600914"] = self.OnSubFinish1600914,
        ["1600915"] = self.OnSubFinish1600915,
        ["1600925"] = self.OnSubFinish1600925,
        ["1600916"] = self.OnSubFinish1600916,
        ["1600926"] = self.OnSubFinish1600926,
        ["1600917"] = self.OnSubFinish1600917,
        ["1600918"] = self.OnSubFinish1600918,
        ["1600919"] = self.OnSubFinish1600919,
        ["1600927"] = self.OnSubFinish1600927
    }
end

function Quest16009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1600903"] = self.OnSubFailed1600903,
        ["1600904"] = self.OnSubFailed1600904,
        ["1600905"] = self.OnSubFailed1600905,
        ["1600906"] = self.OnSubFailed1600906,
        ["1600913"] = self.OnSubFailed1600913,
        ["1600914"] = self.OnSubFailed1600914,
        ["1600915"] = self.OnSubFailed1600915,
        ["1600916"] = self.OnSubFailed1600916,
        ["1600917"] = self.OnSubFailed1600917
    }
end

function Quest16009:Start()
    print("Start")
end

function Quest16009:OnDestroy()
    print("OnDestroy")
end

function Quest16009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16009:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q1600918N1005Trigger")
    this:DestroyNpcTrigger("Q1600916N1011Trigger")
    this:DestroyNpcTrigger("Q1600913N1005Trigger")
    this:UnCallDelayByQuest("Q1600905N7603CallDelay")
    this:DestroyNpcTrigger("Q1600905N7603Trigger")
    this:DestroyNpcTrigger("Q1600903N1310Trigger")
    this:UnCallDelayByQuest("Q1600915N1326CallDelay")
    this:DestroyNpcTrigger("Q1600915N1326Trigger")
    this:DestroyNpcTrigger("Q1600919N1310Trigger")
    this:DestroyNpcTrigger("Q1600908N1009Trigger")
    this:DestroyNpcTrigger("Q1600907N1006Trigger")
    this:ActorDestroy("Q1600912Trigger", nil)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 20333)
    this:SafeDestroyQuestNpc(npcs.Razor.alias, 20333)
    this:SafeDestroyQuestNpc(npcs.Npc16596_1.alias, 20333)
    this:SafeDestroyQuestNpc(npcs.Npc1326.alias, 20333)
    this:SafeDestroyQuestNpc(npcs.Npc1020.alias, 1009)
    this:SafeDestroyQuestNpc(npcs.Diluc.alias, 1009)
    this:SafeDestroyQuestNpc(npcs.Npc1310_1.alias, 20334)
    this:SafeDestroyQuestNpc(npcs.Npc7603.alias, 20334)
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Gaia.alias, 1009)
    this:SafeDestroyQuestNpc(npcs.Npc1310_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1029.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1062.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1019.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1060.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Lisa.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 1004)
    this:LightNotifyTo(npcs.Npc1465.alias, 0, true)
    this:CancelStoryByQuest(121600900)
    this:RecycleAllRes()
end

function Quest16009:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1600918Trigger", 16009)
    this:ActorDestroy("Q1600916Trigger", 16009)
    this:ActorDestroy("Q1600912Trigger", 16009)
end

function Quest16009:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1600917 then
        actorUtils.FinishQuestWithParam({false}, {1600917})
    end
end

function Quest16009:ActorDestroy(arg1, arg2)
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

function Quest16009:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16009:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest16009:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest16009:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest16009:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16009:OnSubStart1600901(arg1)
    print("OnSubStart1600901")
    actorUtils.FinishQuestID(false, 1600901)
end

function Quest16009:OnSubFinish1600901(arg1)
    print("OnSubFinish1600901")
    this:ClearNarratorTask()
    this:QuestNarratorTask(datas.NarratorWithId_1600901, nil)
end

function Quest16009:OnSubStart1600922(arg1)
    print("OnSubStart1600922")
end

function Quest16009:OnSubFinish1600922(arg1)
    print("OnSubFinish1600922")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:QuestNarratorTask(datas.NarratorWithId_1600902, nil)
    end)
end

function Quest16009:OnSubStart1600902(arg1)
    print("OnSubStart1600902")
    this:NpcCreateWithNoBlackData(1600902, 1, npcs.Wendy.id, 0, 40, 1600902, datas.NoBlackData_ForceWalkIn)
    this:GetQuestNpcActor(npcs.Wendy.alias, 16009):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest16009:OnSubFinish1600902(arg1)
    print("OnSubFinish1600902")
    this:NpcDestroyImmediately(3, npcs.Wendy.alias)
    this:ClearNarratorTask()
    this:ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        this:PlayerEnterDungeonWithData(1867, 1307, 1600902, 1, datas.PlayerEnterDungeonWithBlack, nil, nil)
    end, nil, nil, 0, false, true)
end

function Quest16009:OnSubStart1600923(arg1)
    print("OnSubStart1600923")
end

function Quest16009:OnSubFinish1600923(arg1)
    print("OnSubFinish1600923")
end

function Quest16009:OnSubStart1600903(arg1)
    print("OnSubStart1600903")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1310_1.id, 0, 1600903, 30, true)
end

function Quest16009:OnSubFinish1600903(arg1)
    print("OnSubFinish1600903")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
end

function Quest16009:OnSubFailed1600903(arg1)
    print("OnSubFailed1600903")
    this:RecycleAllRes()
end

function Quest16009:OnSubStart1600904(arg1)
    print("OnSubStart1600904")
end

function Quest16009:OnSubFinish1600904(arg1)
    print("OnSubFinish1600904")
end

function Quest16009:OnSubFailed1600904(arg1)
    print("OnSubFailed1600904")
    this:RecycleAllRes()
end

function Quest16009:OnSubStart1600905(arg1)
    print("OnSubStart1600905")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1600905, 0, 30, 0, npcs.Npc7603.id)
end

function Quest16009:OnSubFinish1600905(arg1)
    print("OnSubFinish1600905")
    this:NpcDestroyImmediately(20334, npcs.Npc7603.alias)
end

function Quest16009:OnSubFailed1600905(arg1)
    print("OnSubFailed1600905")
    this:RecycleAllRes()
end

function Quest16009:OnSubStart1600906(arg1)
    print("OnSubStart1600906")
    this:NpcCreateWithNoBlackData(1600906, 0, npcs.Npc1310_1.id, 0, 13, 1600906, datas.NoBlackData_ForceStop_Dither)
    this:DeployStoryByQuest(121600900)
end

function Quest16009:OnSubFinish1600906(arg1)
    print("OnSubFinish1600906")
    this:NpcDestroyImmediately(20334, npcs.Npc1310_1.alias)
    this:CancelStoryByQuest(121600900)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest16009:OnSubFailed1600906(arg1)
    print("OnSubFailed1600906")
    this:RecycleAllRes()
end

function Quest16009:OnSubStart1600907(arg1)
    print("OnSubStart1600907")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Qin.id, 0, 1600907, 15, true)
    if sceneData.currSceneID == 20334 then
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end
end

function Quest16009:OnSubFinish1600907(arg1)
    print("OnSubFinish1600907")
end

function Quest16009:OnSubStart1600920(arg1)
    print("OnSubStart1600920")
    this:NpcCreateWithNpcTrigger(npcs.Qin.id, 0, 7, 1600920)
    this:GetQuestNpcActor(npcs.Qin.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Qin.alias, 16009):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1029.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1029.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1029.alias, 16009):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1062.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1062.alias, 16009):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1019.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 16009):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 16009):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1060.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 16009):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 16009):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Lisa.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Lisa.alias, 16009):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Lisa.alias, 16009):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Ambor.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Ambor.alias, 16009):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Ambor.alias, 16009):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc1565.alias, 1, true)
end

function Quest16009:OnSubFinish1600920(arg1)
    print("OnSubFinish1600920")
end

function Quest16009:OnSubStart1600921(arg1)
    print("OnSubStart1600921")
    this:GetQuestNpcActor(npcs.Ambor.alias, 16009):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Ambor.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Qin.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Qin.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Lisa.alias, 16009):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Lisa.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 16009):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1029.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1029.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 16009):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1062.alias, 16009):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc1565.alias, 1, true)
end

function Quest16009:OnSubFinish1600921(arg1)
    print("OnSubFinish1600921")
    this:QuestNarratorTask(datas.NarratorWithId_1600904, nil)
end

function Quest16009:OnSubStart1600908(arg1)
    print("OnSubStart1600908")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Diluc.id, 0, 1600908, 30, true)
    this:GetQuestNpcActor(npcs.Qin.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Qin.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Ambor.alias, 16009):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Ambor.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1062.alias, 16009):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1029.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1029.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 16009):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 16009):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 16009):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Lisa.alias, 16009):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Lisa.alias, 16009):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc1465.alias, 1, true)
    this:NotifyTo(npcs.Npc1565.alias, 1, true)
    this:NotifyTo(npcs.Npc1523.alias, 1, true)
    this:NotifyTo(npcs.Npc1477.alias, 1, true)
    this:NotifyTo(npcs.Npc1475.alias, 1, true)
    this:NotifyTo(npcs.Npc1603.alias, 1, true)
end

function Quest16009:OnSubFinish1600908(arg1)
    print("OnSubFinish1600908")
    this:NpcDestroyImmediately(1004, npcs.Qin.alias)
    this:NpcDestroyImmediately(1004, npcs.Ambor.alias)
    this:NpcDestroyImmediately(1004, npcs.Npc1062.alias)
    this:NpcDestroyImmediately(1004, npcs.Npc1029.alias)
    this:NpcDestroyImmediately(1004, npcs.Npc1019.alias)
    this:NpcDestroyImmediately(1004, npcs.Npc1060.alias)
    this:NpcDestroyImmediately(1004, npcs.Lisa.alias)
    this:LightNotifyTo(npcs.Npc1565.alias, 0, true)
end

function Quest16009:OnSubStart1600910(arg1)
    print("OnSubStart1600910")
    this:CreateQuestNpc(arg1, npcs.Npc1020.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1020.alias, 16009):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Gaia.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Diluc.alias, 16009):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc1465.alias, 1, true)
    this:NotifyTo(npcs.Npc1475.alias, 1, true)
    this:NotifyTo(npcs.Npc1477.alias, 1, true)
    this:NotifyTo(npcs.Npc1523.alias, 1, true)
    this:NotifyTo(npcs.Npc1603.alias, 1, true)
end

function Quest16009:OnSubFinish1600910(arg1)
    print("OnSubFinish1600910")
end

function Quest16009:OnSubStart1600909(arg1)
    print("OnSubStart1600909")
    this:CreateQuestNpc(arg1, npcs.Gaia.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Gaia.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1020.alias, 16009):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Diluc.alias, 16009):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc1465.alias, 1, true)
    this:NotifyTo(npcs.Npc1475.alias, 1, true)
    this:NotifyTo(npcs.Npc1477.alias, 1, true)
    this:NotifyTo(npcs.Npc1523.alias, 1, true)
    this:NotifyTo(npcs.Npc1603.alias, 1, true)
end

function Quest16009:OnSubFinish1600909(arg1)
    print("OnSubFinish1600909")
end

function Quest16009:OnSubStart1600911(arg1)
    print("OnSubStart1600911")
    this:CreateQuestNpc(arg1, npcs.Diluc.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Diluc.alias, 16009):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1020.alias, 16009):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Gaia.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc1465.alias, 1, true)
    this:NotifyTo(npcs.Npc1475.alias, 1, true)
    this:NotifyTo(npcs.Npc1477.alias, 1, true)
    this:NotifyTo(npcs.Npc1523.alias, 1, true)
    this:NotifyTo(npcs.Npc1603.alias, 1, true)
end

function Quest16009:OnSubFinish1600911(arg1)
    print("OnSubFinish1600911")
end

function Quest16009:OnSubStart1600912(arg1)
    print("OnSubStart1600912")
    this:GetQuestNpcActor(npcs.Gaia.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Diluc.alias, 16009):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1020.alias, 16009):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc1465.alias, 1, true)
    this:NotifyTo(npcs.Npc1475.alias, 1, true)
    this:NotifyTo(npcs.Npc1477.alias, 1, true)
    this:NotifyTo(npcs.Npc1523.alias, 1, true)
    this:NotifyTo(npcs.Npc1603.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1600912Trigger", "Actor/Gadget/Q1600912Trigger", 70900002, 0, points._Q1600912TriggerPoint_.pos, points._Q1600912TriggerPoint_.rot, true, false, 3, nil, 0, 16009)
end

function Quest16009:OnSubFinish1600912(arg1)
    print("OnSubFinish1600912")
    this:NpcDestroyImmediately(1009, npcs.Gaia.alias)
    this:NpcDestroyImmediately(1009, npcs.Diluc.alias)
    this:NpcDestroyImmediately(1009, npcs.Npc1020.alias)
    this:LightNotifyTo(npcs.Npc1465.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1475.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1477.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1523.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1603.alias, 0, true)
    this:PlayerEnterDungeonWithData(1871, 1306, 1600912, 1, datas.PlayerEnterDungeonWithBlack, nil, nil)
end

function Quest16009:OnSubStart1600924(arg1)
    print("OnSubStart1600924")
end

function Quest16009:OnSubFinish1600924(arg1)
    print("OnSubFinish1600924")
end

function Quest16009:OnSubStart1600913(arg1)
    print("OnSubStart1600913")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Paimon.id, 0, 1600913, 30, true)
end

function Quest16009:OnSubFinish1600913(arg1)
    print("OnSubFinish1600913")
    this:NpcDestroyImmediately(20333, npcs.Paimon.alias)
end

function Quest16009:OnSubFailed1600913(arg1)
    print("OnSubFailed1600913")
    this:RecycleAllRes()
end

function Quest16009:OnSubStart1600914(arg1)
    print("OnSubStart1600914")
end

function Quest16009:OnSubFinish1600914(arg1)
    print("OnSubFinish1600914")
end

function Quest16009:OnSubFailed1600914(arg1)
    print("OnSubFailed1600914")
    this:RecycleAllRes()
end

function Quest16009:OnSubStart1600915(arg1)
    print("OnSubStart1600915")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1600915, 0, 50, 0, npcs.Npc1326.id)
end

function Quest16009:OnSubFinish1600915(arg1)
    print("OnSubFinish1600915")
    this:NpcDestroyImmediately(20333, npcs.Npc1326.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest16009:OnSubFailed1600915(arg1)
    print("OnSubFailed1600915")
    this:RecycleAllRes()
end

function Quest16009:OnSubStart1600925(arg1)
    print("OnSubStart1600925")
end

function Quest16009:OnSubFinish1600925(arg1)
    print("OnSubFinish1600925")
end

function Quest16009:OnSubStart1600916(arg1)
    print("OnSubStart1600916")
    this:NpcCreateWithNoBlackData(1600916, 1, npcs.Razor.id, 0, 60, 1600942, datas.NoBlackData_ForceStop)
    this:GetQuestNpcActor(npcs.Razor.alias, 16009):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16596_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1600916Trigger", "Actor/Gadget/Q1600916Trigger", 70900002, 0, points._Q1600916TriggerPoint_.pos, points._Q1600916TriggerPoint_.rot, true, false, 20333, nil, 0, 16009)
end

function Quest16009:OnSubFinish1600916(arg1)
    print("OnSubFinish1600916")
    this:ActorDestroy("Q1600916Trigger", 16009)
end

function Quest16009:OnSubFailed1600916(arg1)
    print("OnSubFailed1600916")
    this:RecycleAllRes()
end

function Quest16009:OnSubStart1600926(arg1)
    print("OnSubStart1600926")
end

function Quest16009:OnSubFinish1600926(arg1)
    print("OnSubFinish1600926")
end

function Quest16009:OnSubStart1600917(arg1)
    print("OnSubStart1600917")
    this:CreateQuestNpc(arg1, npcs.Wendy.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Wendy.alias, 16009):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Razor.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Razor.alias, 16009):DoFreeStyle(1130, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Razor.alias, 16009):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16596_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1326.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1326.alias, 16009):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1326.alias, 16009):DisableInteeHeadCtrl(true)
end

function Quest16009:OnSubFinish1600917(arg1)
    print("OnSubFinish1600917")
    this:NpcDestroyImmediately(20333, npcs.Wendy.alias)
    this:NpcDestroyImmediately(20333, npcs.Razor.alias)
    this:NpcDestroyImmediately(20333, npcs.Npc16596_1.alias)
    this:NpcDestroyImmediately(20333, npcs.Npc1326.alias)
    this:TransmitPlayerByQuestId(1600917, 1, nil, nil, nil)
end

function Quest16009:OnSubFailed1600917(arg1)
    print("OnSubFailed1600917")
    this:RecycleAllRes()
end

function Quest16009:OnSubStart1600918(arg1)
    print("OnSubStart1600918")
    actorMgr:CreateActorWithPos("Q1600918Trigger", "Actor/Gadget/Q1600918Trigger", 70900002, 0, points._Q1600918TriggerPoint_.pos, points._Q1600918TriggerPoint_.rot, true, false, 3, nil, 0, 16009)
    if sceneData.currSceneID == 20333 then
        this:TransmitPlayerByQuestId(1600918, 1, nil, nil, nil)
    end
end

function Quest16009:OnSubFinish1600918(arg1)
    print("OnSubFinish1600918")
end

function Quest16009:OnSubStart1600919(arg1)
    print("OnSubStart1600919")
    this:NpcCreateWithNpcTrigger(npcs.Npc16653.id, 0, 50, 1600919)
    this:CreateQuestNpc(arg1, npcs.Npc1310_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1310_1.alias, 16009):DoFreeStyle(4506, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7603.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7603.alias, 16009):DoFreeStyle(1080, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7603.alias, 16009):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7604.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7604.alias, 16009):DoFreeStyle(1080, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7604.alias, 16009):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7605.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7605.alias, 16009):DoFreeStyle(1080, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7605.alias, 16009):DisableInteeHeadCtrl(true)
end

function Quest16009:OnSubFinish1600919(arg1)
    print("OnSubFinish1600919")
    this:NpcDestroyImmediately(3, npcs.Npc16653.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1310_1.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7603.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7604.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7605.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest16009:OnSubStart1600927(arg1)
    print("OnSubStart1600927")
    actorUtils.FinishQuestWithParam({false}, {1600927})
end

function Quest16009:OnSubFinish1600927(arg1)
    print("OnSubFinish1600927")
end

return Quest16009
