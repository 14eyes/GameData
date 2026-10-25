require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40201 = class("Quest40201", QuestActorProxy)
Quest40201.defaultAlias = "Quest40201"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40201:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40201:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4020101"] = self.OnSubStart4020101,
        ["4020102"] = self.OnSubStart4020102,
        ["4020109"] = self.OnSubStart4020109,
        ["4020104"] = self.OnSubStart4020104,
        ["4020105"] = self.OnSubStart4020105,
        ["4020111"] = self.OnSubStart4020111,
        ["4020103"] = self.OnSubStart4020103,
        ["4020110"] = self.OnSubStart4020110,
        ["4020106"] = self.OnSubStart4020106,
        ["4020108"] = self.OnSubStart4020108,
        ["4020107"] = self.OnSubStart4020107
    }
end

function Quest40201:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4020101"] = self.OnSubFinish4020101,
        ["4020102"] = self.OnSubFinish4020102,
        ["4020109"] = self.OnSubFinish4020109,
        ["4020104"] = self.OnSubFinish4020104,
        ["4020105"] = self.OnSubFinish4020105,
        ["4020111"] = self.OnSubFinish4020111,
        ["4020103"] = self.OnSubFinish4020103,
        ["4020110"] = self.OnSubFinish4020110,
        ["4020106"] = self.OnSubFinish4020106,
        ["4020108"] = self.OnSubFinish4020108,
        ["4020107"] = self.OnSubFinish4020107
    }
end

function Quest40201:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4020106"] = self.OnSubFailed4020106}
end

function Quest40201:Start()
    print("Start")
end

function Quest40201:OnDestroy()
    print("OnDestroy")
end

function Quest40201:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40201:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40201:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:DestroyNpcTrigger("Q4020107N1048Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15402.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15403.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15585.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15586.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15587.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15588.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15421.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30819.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30820.alias, 3)
    this:ActorDestroy("Q4020105Trigger")
    this:ActorDestroy("Q4020106Trigger_escape")
    this:ActorDestroy("Q4020108Trigger")
    this:ActorDestroy("Q4020111Trigger")
    this:ActorDestroy("Q4020103Trigger")
end

function Quest40201:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4020105Trigger")
end

function Quest40201:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40201:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40201:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40201:OnSubStart4020101(arg1)
    print("OnSubStart4020101")
end

function Quest40201:OnSubFinish4020101(arg1)
    print("OnSubFinish4020101")
    this:QuestNarratorTask(datas.NarratorWithId4020101, nil)
end

function Quest40201:OnSubStart4020102(arg1)
    print("OnSubStart4020102")
    this:CreateQuestNpc(arg1, npcs.Npc1048.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1048.alias, 40201):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15402.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15403.id, 0, false, 0)
end

function Quest40201:OnSubFinish4020102(arg1)
    print("OnSubFinish4020102")
    this:ClearNarratorTask()
end

function Quest40201:OnSubStart4020109(arg1)
    print("OnSubStart4020109")
    this:GetQuestNpcActor(npcs.Npc1048.alias, 40201):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15402.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15403.id, 0, false, 0)
end

function Quest40201:OnSubFinish4020109(arg1)
    print("OnSubFinish4020109")
    this:TransmitPlayerWithDialogTextByQuestId(4020109, 1, datas.DialogIdsData_level03, 3, function(arg1)
        this:ShowTutorialDialog(2288, function(arg1)
            actorUtils.ShowContext("AgentReconGalleryStartBanner", 3)
        end)
    end, nil, nil)
end

function Quest40201:OnSubStart4020104(arg1)
    print("OnSubStart4020104")
    this:CreateQuestNpc(arg1, npcs.Npc1048.id, 0, false, 0)
end

function Quest40201:OnSubFinish4020104(arg1)
    print("OnSubFinish4020104")
    this:TransmitPlayerByQuestId(4020104, 1, nil, nil, nil)
end

function Quest40201:OnSubStart4020105(arg1)
    print("OnSubStart4020105")
    this:CreateQuestNpc(arg1, npcs.Npc1048.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15402.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15403.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4020105Trigger", "Actor/Gadget/Q4020105Trigger", 70900002, 0, points._Q4020105TriggerPoint_.pos, points._Q4020105TriggerPoint_.rot, true, false, 3)
    this:ActorDestroy("Q4020106Trigger_escape")
    this:SafeDestroyQuestNpc(npcs.Npc15585.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15586.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15587.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15588.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30819.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30820.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15421.alias, 3)
    this:ActorDestroy("Q4020103Trigger")
end

function Quest40201:OnSubFinish4020105(arg1)
    print("OnSubFinish4020105")
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:TransmitPlayerWithDialogTextByQuestId(4020105, 1, datas.DialogIdsData_4020105, 2, nil, nil, nil)
end

function Quest40201:OnSubStart4020111(arg1)
    print("OnSubStart4020111")
    this:CreateQuestNpc(arg1, npcs.Npc15402.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15403.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4020111Trigger", "Actor/Gadget/Q4020111Trigger", 70900002, 0, points._Q4020111TriggerPoint_.pos, points._Q4020111TriggerPoint_.rot, true, false, 3)
end

function Quest40201:OnSubFinish4020111(arg1)
    print("OnSubFinish4020111")
end

function Quest40201:OnSubStart4020103(arg1)
    print("OnSubStart4020103")
    this:CreateQuestNpc(arg1, npcs.Npc15402.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15403.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4020103Trigger", "Actor/Gadget/Q4020103Trigger", 70900002, 0, points._Q4020103TriggerPoint_.pos, points._Q4020103TriggerPoint_.rot, true, false, 3)
end

function Quest40201:OnSubFinish4020103(arg1)
    print("OnSubFinish4020103")
end

function Quest40201:OnSubStart4020110(arg1)
    print("OnSubStart4020110")
    this:CreateQuestNpc(arg1, npcs.Npc1048.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15421.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc30819.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc30820.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15402.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15403.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15585.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15586.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15587.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15588.id, arg1)
    actorMgr:CreateActorWithPos("Q4020106Trigger_escape", "Actor/Gadget/Q4020106Trigger_escape", 70900002, 0, points._Q4020106Trigger_escapePoint_.pos, points._Q4020106Trigger_escapePoint_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1048.alias, 40201):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc30819.alias, 40201):DoFreeStyle(1180, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc30820.alias, 40201):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15402.alias, 40201):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15403.alias, 40201):DoFreeStyle(1180, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15585.alias, 40201):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15586.alias, 40201):DoFreeStyle(1050, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15587.alias, 40201):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15588.alias, 40201):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest40201:OnSubFinish4020110(arg1)
    print("OnSubFinish4020110")
    this:SafeDestroyQuestNpc(npcs.Npc15421.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("AgentReconGalleryStartBanner", 4)
    end)
end

function Quest40201:OnSubStart4020106(arg1)
    print("OnSubStart4020106")
    this:GetQuestNpcActor(npcs.Npc1048.alias, 40201):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30819.alias, 40201):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30820.alias, 40201):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15402.alias, 40201):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15403.alias, 40201):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15585.alias, 40201):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15586.alias, 40201):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15587.alias, 40201):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15588.alias, 40201):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4020106Trigger_escape", "Actor/Gadget/Q4020106Trigger_escape", 70900002, 0, points._Q4020106Trigger_escapePoint_.pos, points._Q4020106Trigger_escapePoint_.rot, true, false, 3)
end

function Quest40201:OnSubFinish4020106(arg1)
    print("OnSubFinish4020106")
    this:ActorDestroy("Q4020106Trigger_escape")
end

function Quest40201:OnSubFailed4020106(arg1)
    print("OnSubFailed4020106")
    this:ActorDestroy("Q4020106Trigger_escape")
end

function Quest40201:OnSubStart4020108(arg1)
    print("OnSubStart4020108")
    this:GetQuestNpcActor(npcs.Npc15402.alias, 40201):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15403.alias, 40201):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15585.alias, 40201):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15586.alias, 40201):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15587.alias, 40201):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15588.alias, 40201):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4020108Trigger", "Actor/Gadget/Q4020108Trigger", 70900002, 0, points._Q4020108TriggerPoint_.pos, points._Q4020108TriggerPoint_.rot, true, false, 3)
end

function Quest40201:OnSubFinish4020108(arg1)
    print("OnSubFinish4020108")
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15402.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15403.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30819.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30820.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15585.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15586.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15587.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15588.alias, 3)
    this:TransmitPlayerWithDialogTextByQuestId(4020108, 1, datas.DialogIdsData_level04, 0, nil, nil, nil)
end

function Quest40201:OnSubStart4020107(arg1)
    print("OnSubStart4020107")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1048.id, 0, 4020107, 7, true)
end

function Quest40201:OnSubFinish4020107(arg1)
    print("OnSubFinish4020107")
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
end

return Quest40201
