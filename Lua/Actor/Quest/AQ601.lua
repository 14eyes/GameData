require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest601 = class("Quest601", QuestActorProxy)
Quest601.defaultAlias = "Quest601"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest601:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest601:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["60109"] = self.OnSubStart60109,
        ["60101"] = self.OnSubStart60101,
        ["60110"] = self.OnSubStart60110,
        ["60111"] = self.OnSubStart60111,
        ["60118"] = self.OnSubStart60118,
        ["60119"] = self.OnSubStart60119,
        ["60128"] = self.OnSubStart60128,
        ["60122"] = self.OnSubStart60122,
        ["60102"] = self.OnSubStart60102,
        ["60133"] = self.OnSubStart60133,
        ["60112"] = self.OnSubStart60112,
        ["60104"] = self.OnSubStart60104,
        ["60105"] = self.OnSubStart60105,
        ["60130"] = self.OnSubStart60130,
        ["60113"] = self.OnSubStart60113,
        ["60103"] = self.OnSubStart60103,
        ["60131"] = self.OnSubStart60131,
        ["60132"] = self.OnSubStart60132,
        ["60117"] = self.OnSubStart60117,
        ["60127"] = self.OnSubStart60127,
        ["60129"] = self.OnSubStart60129,
        ["60123"] = self.OnSubStart60123,
        ["60124"] = self.OnSubStart60124,
        ["60108"] = self.OnSubStart60108,
        ["60120"] = self.OnSubStart60120,
        ["60125"] = self.OnSubStart60125,
        ["60126"] = self.OnSubStart60126,
        ["60106"] = self.OnSubStart60106,
        ["60114"] = self.OnSubStart60114,
        ["60115"] = self.OnSubStart60115,
        ["60107"] = self.OnSubStart60107,
        ["60121"] = self.OnSubStart60121,
        ["60116"] = self.OnSubStart60116
    }
end

function Quest601:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["60109"] = self.OnSubFinish60109,
        ["60101"] = self.OnSubFinish60101,
        ["60110"] = self.OnSubFinish60110,
        ["60111"] = self.OnSubFinish60111,
        ["60118"] = self.OnSubFinish60118,
        ["60119"] = self.OnSubFinish60119,
        ["60128"] = self.OnSubFinish60128,
        ["60122"] = self.OnSubFinish60122,
        ["60102"] = self.OnSubFinish60102,
        ["60133"] = self.OnSubFinish60133,
        ["60112"] = self.OnSubFinish60112,
        ["60104"] = self.OnSubFinish60104,
        ["60105"] = self.OnSubFinish60105,
        ["60130"] = self.OnSubFinish60130,
        ["60113"] = self.OnSubFinish60113,
        ["60103"] = self.OnSubFinish60103,
        ["60131"] = self.OnSubFinish60131,
        ["60132"] = self.OnSubFinish60132,
        ["60117"] = self.OnSubFinish60117,
        ["60127"] = self.OnSubFinish60127,
        ["60129"] = self.OnSubFinish60129,
        ["60123"] = self.OnSubFinish60123,
        ["60124"] = self.OnSubFinish60124,
        ["60108"] = self.OnSubFinish60108,
        ["60120"] = self.OnSubFinish60120,
        ["60125"] = self.OnSubFinish60125,
        ["60126"] = self.OnSubFinish60126,
        ["60106"] = self.OnSubFinish60106,
        ["60114"] = self.OnSubFinish60114,
        ["60115"] = self.OnSubFinish60115,
        ["60107"] = self.OnSubFinish60107,
        ["60121"] = self.OnSubFinish60121,
        ["60116"] = self.OnSubFinish60116
    }
end

function Quest601:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["60105"] = self.OnSubFailed60105,
        ["60103"] = self.OnSubFailed60103,
        ["60117"] = self.OnSubFailed60117,
        ["60124"] = self.OnSubFailed60124,
        ["60108"] = self.OnSubFailed60108,
        ["60120"] = self.OnSubFailed60120,
        ["60125"] = self.OnSubFailed60125,
        ["60126"] = self.OnSubFailed60126,
        ["60115"] = self.OnSubFailed60115
    }
end

function Quest601:Start()
    print("Start")
end

function Quest601:OnDestroy()
    print("OnDestroy")
end

function Quest601:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest601:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest601:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest601:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q60130Trigger")
    this:ActorDestroy("Q60131Trigger")
end

function Quest601:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 60102)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 60133)
    end
end

function Quest601:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest601:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest601:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest601:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest601:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest601:QuestVarDefinition() end

function Quest601:OnSubStart60109(arg1)
    print("OnSubStart60109")
    actorUtils.FinishQuestID(false, 60109)
end

function Quest601:OnSubFinish60109(arg1)
    print("OnSubFinish60109")
end

function Quest601:OnSubStart60101(arg1)
    print("OnSubStart60101")
    this:CreateQuestNpc(arg1, npcs.Qin.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Barbara.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10095.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1020.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1018.id, 0, 60101, 20, true)
    this:GetQuestNpcActor(npcs.Barbara.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1020.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60101(arg1)
    print("OnSubFinish60101")
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 20260)
end

function Quest601:OnSubStart60110(arg1)
    print("OnSubStart60110")
end

function Quest601:OnSubFinish60110(arg1)
    print("OnSubFinish60110")
end

function Quest601:OnSubStart60111(arg1)
    print("OnSubStart60111")
end

function Quest601:OnSubFinish60111(arg1)
    print("OnSubFinish60111")
end

function Quest601:OnSubStart60118(arg1)
    print("OnSubStart60118")
end

function Quest601:OnSubFinish60118(arg1)
    print("OnSubFinish60118")
end

function Quest601:OnSubStart60119(arg1)
    print("OnSubStart60119")
    this:CreateQuestNpc(arg1, npcs.Npc15259.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15258.id, 0, false, 0)
end

function Quest601:OnSubFinish60119(arg1)
    print("OnSubFinish60119")
    this:SafeDestroyQuestNpc(npcs.Npc15259.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15258.alias, 20260)
end

function Quest601:OnSubStart60128(arg1)
    print("OnSubStart60128")
end

function Quest601:OnSubFinish60128(arg1)
    print("OnSubFinish60128")
end

function Quest601:OnSubStart60122(arg1)
    print("OnSubStart60122")
end

function Quest601:OnSubFinish60122(arg1)
    print("OnSubFinish60122")
end

function Quest601:OnSubStart60102(arg1)
    print("OnSubStart60102")
    this:NpcCreateWithNpcTrigger(npcs.Wendy.id, 0, 15, 60102)
    this:GetQuestNpcActor(npcs.Barbara.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1020.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60102(arg1)
    print("OnSubFinish60102")
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 20260)
end

function Quest601:OnSubStart60133(arg1)
    print("OnSubStart60133")
end

function Quest601:OnSubFinish60133(arg1)
    print("OnSubFinish60133")
end

function Quest601:OnSubStart60112(arg1)
    print("OnSubStart60112")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Qin.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1019.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Barbara.alias, 601):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1020.alias, 601):DisableInteeHeadCtrl(true)
    end)
end

function Quest601:OnSubFinish60112(arg1)
    print("OnSubFinish60112")
    this:SafeDestroyQuestNpc(npcs.Diluc.alias, 20260)
end

function Quest601:OnSubStart60104(arg1)
    print("OnSubStart60104")
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Barbara.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1020.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60104(arg1)
    print("OnSubFinish60104")
end

function Quest601:OnSubStart60105(arg1)
    print("OnSubStart60105")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(60105, 0, 50, 1, npcs.Diluc.id)
    this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Barbara.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1020.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60105(arg1)
    print("OnSubFinish60105")
    this:SafeDestroyQuestNpc(npcs.Barbara.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc1020.alias, 20260)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end)
end

function Quest601:OnSubFailed60105(arg1)
    print("OnSubFailed60105")
    this:UnCallDelayByQuest("Q60105N1009CallDelay")
    this:ActorDestroy("Q60105N1009Trigger")
    this:DestroyQuestNpcActor(npcs.Diluc.alias, 20260)
end

function Quest601:OnSubStart60130(arg1)
    print("OnSubStart60130")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Diluc.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Gaia_1.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Gaia_1.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, true)
    end)

    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q60130Trigger", "Actor/Gadget/Q60130Trigger", 70900002, 0, points._Q60130TriggerPoint_.pos, points._Q60130TriggerPoint_.rot, true, false, 20260)
end

function Quest601:OnSubFinish60130(arg1)
    print("OnSubFinish60130")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, function(arg1)
            this:ShowTutorialDialog(2190, nil)
        end, nil, nil)
    end)
end

function Quest601:OnSubStart60113(arg1)
    print("OnSubStart60113")
    this:CreateQuestNpc(arg1, npcs.Npc15244.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15244.alias, 601):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15245.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15245.alias, 601):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15340.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15340.alias, 601):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15341.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15341.alias, 601):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15342.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15342.alias, 601):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Gaia_1.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15245.alias, 601):LookAt({x = 2367.789, y = 260.158, z = -691.249})
    this:GetQuestNpcActor(npcs.Npc15340.alias, 601):LookAt({x = 2372.356, y = 259.998, z = -684.954})
    this:GetQuestNpcActor(npcs.Npc15341.alias, 601):LookAt({x = 2376.96, y = 259.998, z = -686.078})
    this:GetQuestNpcActor(npcs.Npc15342.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15244.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60113(arg1)
    print("OnSubFinish60113")
end

function Quest601:OnSubStart60103(arg1)
    print("OnSubStart60103")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(60103, 0, 50, 1, npcs.Barbara.id)
    this:GetQuestNpcActor(npcs.Gaia_1.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15244.alias, 601):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15245.alias, 601):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15340.alias, 601):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15341.alias, 601):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15342.alias, 601):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest601:OnSubFinish60103(arg1)
    print("OnSubFinish60103")
    this:SafeDestroyQuestNpc(npcs.Barbara.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15244.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15245.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15340.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15341.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15342.alias, 20260)
end

function Quest601:OnSubFailed60103(arg1)
    print("OnSubFailed60103")
    this:UnCallDelayByQuest("Q60103N1008CallDelay")
    this:ActorDestroy("Q60103N1008Trigger")
    this:DestroyQuestNpcActor(npcs.Barbara.alias, 20260)
end

function Quest601:OnSubStart60131(arg1)
    print("OnSubStart60131")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Qin.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc10095.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Diluc.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Gaia_1.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Gaia_1.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, true)
    end)

    actorMgr:CreateActorWithPos("Q60131Trigger", "Actor/Gadget/Q60131Trigger", 70900002, 0, points._Q60131TriggerPoint_.pos, points._Q60131TriggerPoint_.rot, true, false, 20260)
end

function Quest601:OnSubFinish60131(arg1)
    print("OnSubFinish60131")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end)
end

function Quest601:OnSubStart60132(arg1)
    print("OnSubStart60132")
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Gaia_1.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, true)
end

function Quest601:OnSubFinish60132(arg1)
    print("OnSubFinish60132")
end

function Quest601:OnSubStart60117(arg1)
    print("OnSubStart60117")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(60117, 0, 40, 1, npcs.Ambor.id)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Gaia_1.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, true)
end

function Quest601:OnSubFinish60117(arg1)
    print("OnSubFinish60117")
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 20260)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("", 1, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_60102, nil)
        end)
    end)
end

function Quest601:OnSubFailed60117(arg1)
    print("OnSubFailed60117")
    this:UnCallDelayByQuest("Q60117N1002CallDelay")
    this:ActorDestroy("Q60117N1002Trigger")
    this:DestroyQuestNpcActor(npcs.Ambor.alias, 20260)
end

function Quest601:OnSubStart60127(arg1)
    print("OnSubStart60127")
end

function Quest601:OnSubFinish60127(arg1)
    print("OnSubFinish60127")
end

function Quest601:OnSubStart60129(arg1)
    print("OnSubStart60129")
end

function Quest601:OnSubFinish60129(arg1)
    print("OnSubFinish60129")
end

function Quest601:OnSubStart60123(arg1)
    print("OnSubStart60123")
end

function Quest601:OnSubFinish60123(arg1)
    print("OnSubFinish60123")
end

function Quest601:OnSubStart60124(arg1)
    print("OnSubStart60124")
    this:CreateQuestNpc(arg1, npcs.Npc15263.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15263.alias, 601):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateSpeechBubbleTask(15263, 6016024, 5, true, 1, 3, true, false)
end

function Quest601:OnSubFinish60124(arg1)
    print("OnSubFinish60124")
    this:ClearSpeechBubbleTask()
end

function Quest601:OnSubFailed60124(arg1)
    print("OnSubFailed60124")
    this:SafeDestroyQuestNpc(npcs.Npc15263.alias, 20260)
end

function Quest601:OnSubStart60108(arg1)
    print("OnSubStart60108")
    if this:GetQuestVar(60108, 1) == 0 then
        print("\231\172\172\228\184\128\230\172\161")
        this:CallDelayNpcCreateWithNpcTriggerAndBlack(60108, 0, 20, 1, npcs.Npc15263.id)
        this:SetQuestVarByMainId(1, 1)
    else
        this:CreateQuestNpc(arg1, npcs.Npc15263.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15263.alias, 601):DoFreeStyle(1160, true, nil, true, true, false, true)
    end
end

function Quest601:OnSubFinish60108(arg1)
    print("OnSubFinish60108")
    this:SafeDestroyQuestNpc(npcs.Npc15263.alias, 20260)
end

function Quest601:OnSubFailed60108(arg1)
    print("OnSubFailed60108")
    this:SafeDestroyQuestNpc(npcs.Npc15263.alias, 20260)
end

function Quest601:OnSubStart60120(arg1)
    print("OnSubStart60120")
    this:CreateQuestNpc(arg1, npcs.Npc1061.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1028.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1028.alias, 601):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15264.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15264.alias, 601):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15264.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1028.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60120(arg1)
    print("OnSubFinish60120")
end

function Quest601:OnSubFailed60120(arg1)
    print("OnSubFailed60120")
    this:SafeDestroyQuestNpc(npcs.Npc1061.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc1028.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15264.alias, 20260)
end

function Quest601:OnSubStart60125(arg1)
    print("OnSubStart60125")
    this:CreateQuestNpc(arg1, npcs.Npc1061.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1028.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1028.alias, 601):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15264.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15264.alias, 601):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15264.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1028.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60125(arg1)
    print("OnSubFinish60125")
end

function Quest601:OnSubFailed60125(arg1)
    print("OnSubFailed60125")
    this:SafeDestroyQuestNpc(npcs.Npc1061.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc1028.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15264.alias, 20260)
end

function Quest601:OnSubStart60126(arg1)
    print("OnSubStart60126")
    this:CreateQuestNpc(arg1, npcs.Npc1028.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1028.alias, 601):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15264.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15264.alias, 601):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1061.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1061.alias, 601):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15265.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15265.alias, 601):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15265.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1061.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15264.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1028.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60126(arg1)
    print("OnSubFinish60126")
    this:SafeDestroyQuestNpc(npcs.Npc1028.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15264.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc1061.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15265.alias, 20260)
end

function Quest601:OnSubFailed60126(arg1)
    print("OnSubFailed60126")
    this:SafeDestroyQuestNpc(npcs.Npc1028.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15264.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc1061.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc15265.alias, 20260)
end

function Quest601:OnSubStart60106(arg1)
    print("OnSubStart60106")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1029.id, 0, 12, 60106)
        this:CreateQuestNpc(arg1, npcs.Qin.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Gaia_1.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Gaia_1.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Diluc.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1019.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1309.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1309.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1309.alias, 601):DisableInteeHeadCtrl(true)
    end)
end

function Quest601:OnSubFinish60106(arg1)
    print("OnSubFinish60106")
    this:SafeDestroyQuestNpc(npcs.Npc1029.alias, 20260)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("", 1, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_60101, nil)
        end)
    end)
end

function Quest601:OnSubStart60114(arg1)
    print("OnSubStart60114")
    this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Gaia_1.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1309.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1309.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60114(arg1)
    print("OnSubFinish60114")
end

function Quest601:OnSubStart60115(arg1)
    print("OnSubStart60115")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(60115, 0, 50, 1, npcs.Npc1029.id)
    this:GetQuestNpcActor(npcs.Diluc.alias, 601):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Gaia_1.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1309.alias, 601):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 601):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1309.alias, 601):DisableInteeHeadCtrl(true)
end

function Quest601:OnSubFinish60115(arg1)
    print("OnSubFinish60115")
    this:SafeDestroyQuestNpc(npcs.Npc1029.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc10095.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Diluc.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Gaia_1.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc1019.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Npc1309.alias, 20260)
end

function Quest601:OnSubFailed60115(arg1)
    print("OnSubFailed60115")
    this:UnCallDelayByQuest("Q60115N1029CallDelay")
    this:ActorDestroy("Q60115N1029Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1029.alias, 20260)
end

function Quest601:OnSubStart60107(arg1)
    print("OnSubStart60107")
    this:NpcCreateWithNpcTrigger(npcs.Qin.id, 0, 12, 60107)
end

function Quest601:OnSubFinish60107(arg1)
    print("OnSubFinish60107")
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 20260)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end)
end

function Quest601:OnSubStart60121(arg1)
    print("OnSubStart60121")
end

function Quest601:OnSubFinish60121(arg1)
    print("OnSubFinish60121")
end

function Quest601:OnSubStart60116(arg1)
    print("OnSubStart60116")
    this:NpcCreateWithNpcTriggerAndBlackscreen(60116, 0, 4, 1, npcs.Qin.id)
end

function Quest601:OnSubFinish60116(arg1)
    print("OnSubFinish60116")
end

return Quest601
