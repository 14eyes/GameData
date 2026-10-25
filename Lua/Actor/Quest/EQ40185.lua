require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40185 = class("Quest40185", QuestActorProxy)
Quest40185.defaultAlias = "Quest40185"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40185:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40185:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4018523"] = self.OnSubStart4018523,
        ["4018518"] = self.OnSubStart4018518,
        ["4018501"] = self.OnSubStart4018501,
        ["4018502"] = self.OnSubStart4018502,
        ["4018503"] = self.OnSubStart4018503,
        ["4018504"] = self.OnSubStart4018504,
        ["4018505"] = self.OnSubStart4018505,
        ["4018506"] = self.OnSubStart4018506,
        ["4018507"] = self.OnSubStart4018507,
        ["4018521"] = self.OnSubStart4018521,
        ["4018508"] = self.OnSubStart4018508,
        ["4018509"] = self.OnSubStart4018509,
        ["4018510"] = self.OnSubStart4018510,
        ["4018522"] = self.OnSubStart4018522,
        ["4018511"] = self.OnSubStart4018511,
        ["4018512"] = self.OnSubStart4018512,
        ["4018513"] = self.OnSubStart4018513,
        ["4018514"] = self.OnSubStart4018514,
        ["4018516"] = self.OnSubStart4018516,
        ["4018517"] = self.OnSubStart4018517,
        ["4018519"] = self.OnSubStart4018519,
        ["4018520"] = self.OnSubStart4018520
    }
end

function Quest40185:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4018523"] = self.OnSubFinish4018523,
        ["4018518"] = self.OnSubFinish4018518,
        ["4018501"] = self.OnSubFinish4018501,
        ["4018502"] = self.OnSubFinish4018502,
        ["4018503"] = self.OnSubFinish4018503,
        ["4018504"] = self.OnSubFinish4018504,
        ["4018505"] = self.OnSubFinish4018505,
        ["4018506"] = self.OnSubFinish4018506,
        ["4018507"] = self.OnSubFinish4018507,
        ["4018521"] = self.OnSubFinish4018521,
        ["4018508"] = self.OnSubFinish4018508,
        ["4018509"] = self.OnSubFinish4018509,
        ["4018510"] = self.OnSubFinish4018510,
        ["4018522"] = self.OnSubFinish4018522,
        ["4018511"] = self.OnSubFinish4018511,
        ["4018512"] = self.OnSubFinish4018512,
        ["4018513"] = self.OnSubFinish4018513,
        ["4018514"] = self.OnSubFinish4018514,
        ["4018516"] = self.OnSubFinish4018516,
        ["4018517"] = self.OnSubFinish4018517,
        ["4018519"] = self.OnSubFinish4018519,
        ["4018520"] = self.OnSubFinish4018520
    }
end

function Quest40185:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4018522"] = self.OnSubFailed4018522}
end

function Quest40185:Start()
    print("Start")
end

function Quest40185:OnDestroy()
    print("OnDestroy")
end

function Quest40185:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40185:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40185:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2084.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 20248)
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15089.alias, 20248)
    this:ActorDestroy("Q4018502Trigger")
    this:ActorDestroy("Q4018503Trigger")
    this:ActorDestroy("Q4018511Trigger")
    this:ActorDestroy("Q4018513Trigger")
    this:DestroyNpcTrigger("Q4018501N2084Trigger")
    this:DestroyNpcTrigger("Q4018505N1048Trigger")
    this:DestroyNpcTrigger("Q4018506N1048Trigger")
    this:DestroyNpcTrigger("Q4018507N10204Trigger")
    this:DestroyNpcTrigger("Q4018509N10204Trigger")
    this:DestroyNpcTrigger("Q4018513N2611Trigger")
    this:DestroyNpcTrigger("Q4018516N10204Trigger")
    this:DestroyNpcTrigger("Q4018517N10211Trigger")
    this:DestroyNpcTrigger("Q4018519N1093Trigger")
    this:DestroyNpcTrigger("Q4018520N2611Trigger")
    this:DestroyNpcTrigger("Q4018521N10204Trigger")
    this:DestroyNpcTrigger("Q4018512N15089Trigger")
    this:LightNotifyTo(npcs.Npc2311.alias, 0, true)
    this:RemoveIndexedEffect("1")
    this:CancelStoryByQuest(134018401)
    this:RemoveLocalGadget(74013026, "1")
    this:ActorDestroy("Q4018516Trigger")
    this:UnCallDelayByQuest("4018512")
end

function Quest40185:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40185:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40185:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40185:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40185:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40185:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40185:OnSubStart4018523(arg1)
    print("OnSubStart4018523")
end

function Quest40185:OnSubFinish4018523(arg1)
    print("OnSubFinish4018523")
    this:CancelStoryByQuest(134018401)
end

function Quest40185:OnSubStart4018518(arg1)
    print("OnSubStart4018518")
    this:ClearNarratorTask()
    this:QuestNarratorTask(datas.NarratorWithId_4018501, nil)
    actorUtils.FinishQuestID(false, 4018518)
end

function Quest40185:OnSubFinish4018518(arg1)
    print("OnSubFinish4018518")
end

function Quest40185:OnSubStart4018501(arg1)
    print("OnSubStart4018501")
    this:NpcCreateWithNpcTrigger(npcs.Npc2084.id, 0, 15, 4018501)
end

function Quest40185:OnSubFinish4018501(arg1)
    print("OnSubFinish4018501")
    this:SafeDestroyQuestNpc(npcs.Npc2084.alias, 3)
end

function Quest40185:OnSubStart4018502(arg1)
    print("OnSubStart4018502")
    this:DailyNpcSafeHideSelf(npcs.Npc2311.alias, true, 1)
    actorMgr:CreateActorWithPos("Q4018502Trigger", "Actor/Gadget/Q4018502Trigger", 70900002, 0, points._Q4018502TriggerPoint_.pos, points._Q4018502TriggerPoint_.rot, true, false, 3)
end

function Quest40185:OnSubFinish4018502(arg1)
    print("OnSubFinish4018502")
end

function Quest40185:OnSubStart4018503(arg1)
    print("OnSubStart4018503")
    actorMgr:CreateActorWithPos("Q4018503Trigger", "Actor/Gadget/Q4018503Trigger", 70900002, 0, points._Q4018503TriggerPoint_.pos, points._Q4018503TriggerPoint_.rot, true, false, 3)
    this:NotifyTo(npcs.Npc2311.alias, 1, true)
    this:CreateLocalGadget(74013026, "1", {x = 1532.455, y = 252.06, z = 412.2}, {x = -75.72, y = 24, z = 8.74}, 3, nil, nil, true, 0, true)
end

function Quest40185:OnSubFinish4018503(arg1)
    print("OnSubFinish4018503")
end

function Quest40185:OnSubStart4018504(arg1)
    print("OnSubStart4018504")
    this:NotifyTo(npcs.Npc2311.alias, 1, true)
    this:CreateLocalGadget(74013026, "1", {x = 1532.455, y = 252.06, z = 412.2}, {x = -75.72, y = 24, z = 8.74}, 3, nil, nil, true, 0, true)
end

function Quest40185:OnSubFinish4018504(arg1)
    print("OnSubFinish4018504")
end

function Quest40185:OnSubStart4018505(arg1)
    print("OnSubStart4018505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018505, 0, 15, 1, npcs.Npc1048.id)
    this:NotifyTo(npcs.Npc2311.alias, 1, true)
    this:CreateLocalGadget(74013026, "1", {x = 1532.455, y = 252.06, z = 412.2}, {x = -75.72, y = 24, z = 8.74}, 3, nil, nil, true, 0, true)
end

function Quest40185:OnSubFinish4018505(arg1)
    print("OnSubFinish4018505")
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:LightNotifyTo(npcs.Npc2311.alias, 0, true)
    this:RemoveLocalGadget(74013026, "1")
end

function Quest40185:OnSubStart4018506(arg1)
    print("OnSubStart4018506")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018506, 0, 35, 1, npcs.Npc1048.id)
end

function Quest40185:OnSubFinish4018506(arg1)
    print("OnSubFinish4018506")
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
end

function Quest40185:OnSubStart4018507(arg1)
    print("OnSubStart4018507")
    this:NpcCreateWithNpcTrigger(npcs.Xiao.id, 0, 8, 4018507)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc10211.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc10211.alias, 40185):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)
end

function Quest40185:OnSubFinish4018507(arg1)
    print("OnSubFinish4018507")
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018408, nil, nil, nil)
end

function Quest40185:OnSubStart4018521(arg1)
    print("OnSubStart4018521")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Xiao.id, 0, 4018521, 15, true)
end

function Quest40185:OnSubFinish4018521(arg1)
    print("OnSubFinish4018521")
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
end

function Quest40185:OnSubStart4018508(arg1)
    print("OnSubStart4018508")
end

function Quest40185:OnSubFinish4018508(arg1)
    print("OnSubFinish4018508")
end

function Quest40185:OnSubStart4018509(arg1)
    print("OnSubStart4018509")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018509, 0, 15, 1, npcs.Xiao.id)
end

function Quest40185:OnSubFinish4018509(arg1)
    print("OnSubFinish4018509")
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
end

function Quest40185:OnSubStart4018510(arg1)
    print("OnSubStart4018510")
    this:NpcCreateWithActionSafeCall(0, npcs.Xiao.id, arg1)
    this:PlayIndexedEffect("1", "Eff_Quest_DyingBreath_Portal_01", {x = 1592.3, y = 286.4, z = 347.8}, nil, nil)
end

function Quest40185:OnSubFinish4018510(arg1)
    print("OnSubFinish4018510")
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:RemoveIndexedEffect("1")
end

function Quest40185:OnSubStart4018522(arg1)
    print("OnSubStart4018522")
end

function Quest40185:OnSubFinish4018522(arg1)
    print("OnSubFinish4018522")
end

function Quest40185:OnSubFailed4018522(arg1)
    print("OnSubFailed4018522")
    this:UnCallDelayByQuest("4018512")
    this:ActorDestroy("Q4018512N15089Trigger")
    this:ActorDestroy("Q4018513N2611Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 20248)
    this:ActorDestroy("Q4018513Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc15089.alias, 20248)
end

function Quest40185:OnSubStart4018511(arg1)
    print("OnSubStart4018511")
end

function Quest40185:OnSubFinish4018511(arg1)
    print("OnSubFinish4018511")
end

function Quest40185:OnSubStart4018512(arg1)
    print("OnSubStart4018512")
    this:CallDelayByQuest("4018512", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(4018512, 0, 25, 1, npcs.Npc15089.id)
    end)
end

function Quest40185:OnSubFinish4018512(arg1)
    print("OnSubFinish4018512")
    this:SafeDestroyQuestNpc(npcs.Npc15089.alias, 20248)
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 51)
end

function Quest40185:OnSubStart4018513(arg1)
    print("OnSubStart4018513")
    local questVar = this:GetQuestVar(4018513, 0)
    if questVar == 1 then
        this:CreateQuestNpcById(4018513, npcs.Npc2611.id, 0, false, 0)
    elseif questVar == 0 then
        this:NpcCreateWithNpcTriggerAndBlackscreen(4018513, 0, 50, 1, npcs.Npc2611.id)
    end

    actorMgr:CreateActorWithPos("Q4018513Trigger", "Actor/Gadget/Q4018513Trigger", 70900002, 0, points._Q4018513TriggerPoint_.pos, points._Q4018513TriggerPoint_.rot, true, false, 20248)
end

function Quest40185:OnSubFinish4018513(arg1)
    print("OnSubFinish4018513")
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 20248)
    this:ActorDestroy("Q4018513Trigger")
end

function Quest40185:OnSubStart4018514(arg1)
    print("OnSubStart4018514")
end

function Quest40185:OnSubFinish4018514(arg1)
    print("OnSubFinish4018514")
end

function Quest40185:OnSubStart4018516(arg1)
    print("OnSubStart4018516")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Xiao.id, 0, 4018516, 15, true)
    actorMgr:CreateActorWithPos("Q4018516Trigger", "Actor/Gadget/Q4018516Trigger", 70900002, 0, points._Q4018516TriggerPoint_.pos, points._Q4018516TriggerPoint_.rot, true, false, 20248)
end

function Quest40185:OnSubFinish4018516(arg1)
    print("OnSubFinish4018516")
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:ActorDestroy("Q4018516Trigger")
end

function Quest40185:OnSubStart4018517(arg1)
    print("OnSubStart4018517")
    this:NpcCreateWithNpcTrigger(npcs.Npc10211.id, 0, 30, 4018517)
end

function Quest40185:OnSubFinish4018517(arg1)
    print("OnSubFinish4018517")
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
end

function Quest40185:OnSubStart4018519(arg1)
    print("OnSubStart4018519")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018519, 0, 25, 1, npcs.Npc1093.id)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc10211.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc10211.alias, 40185):DoFreeStyle(1190, true, nil, true, true, true, true)
    end)
end

function Quest40185:OnSubFinish4018519(arg1)
    print("OnSubFinish4018519")
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
end

function Quest40185:OnSubStart4018520(arg1)
    print("OnSubStart4018520")
    this:NpcCreateWithNpcTrigger(npcs.Npc2611.id, 0, 15, 4018520)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1093.id, arg1)
end

function Quest40185:OnSubFinish4018520(arg1)
    print("OnSubFinish4018520")
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc2611_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        actorMgr:CreateActorWithPos("Q4018520Trigger", "Actor/Gadget/Q4018520Trigger", 70900002, 0, points._Q4018520TriggerPoint_.pos, points._Q4018520TriggerPoint_.rot, true, false, 3)
    end)
end

return Quest40185
