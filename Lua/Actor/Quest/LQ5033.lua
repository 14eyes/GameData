require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5033 = class("Quest5033", QuestActorProxy)
Quest5033.defaultAlias = "Quest5033"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5033:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["503301"] = self.OnSubStart503301,
        ["503302"] = self.OnSubStart503302,
        ["503322"] = self.OnSubStart503322,
        ["503317"] = self.OnSubStart503317,
        ["503318"] = self.OnSubStart503318,
        ["503323"] = self.OnSubStart503323,
        ["503303"] = self.OnSubStart503303,
        ["503324"] = self.OnSubStart503324,
        ["503304"] = self.OnSubStart503304,
        ["503320"] = self.OnSubStart503320,
        ["503321"] = self.OnSubStart503321,
        ["503305"] = self.OnSubStart503305,
        ["503306"] = self.OnSubStart503306,
        ["503307"] = self.OnSubStart503307,
        ["503308"] = self.OnSubStart503308,
        ["503309"] = self.OnSubStart503309,
        ["503310"] = self.OnSubStart503310,
        ["503311"] = self.OnSubStart503311,
        ["503312"] = self.OnSubStart503312,
        ["503313"] = self.OnSubStart503313,
        ["503319"] = self.OnSubStart503319,
        ["503314"] = self.OnSubStart503314,
        ["503315"] = self.OnSubStart503315,
        ["503316"] = self.OnSubStart503316
    }
end

function Quest5033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["503301"] = self.OnSubFinish503301,
        ["503302"] = self.OnSubFinish503302,
        ["503322"] = self.OnSubFinish503322,
        ["503317"] = self.OnSubFinish503317,
        ["503318"] = self.OnSubFinish503318,
        ["503323"] = self.OnSubFinish503323,
        ["503303"] = self.OnSubFinish503303,
        ["503324"] = self.OnSubFinish503324,
        ["503304"] = self.OnSubFinish503304,
        ["503320"] = self.OnSubFinish503320,
        ["503321"] = self.OnSubFinish503321,
        ["503305"] = self.OnSubFinish503305,
        ["503306"] = self.OnSubFinish503306,
        ["503307"] = self.OnSubFinish503307,
        ["503308"] = self.OnSubFinish503308,
        ["503309"] = self.OnSubFinish503309,
        ["503310"] = self.OnSubFinish503310,
        ["503311"] = self.OnSubFinish503311,
        ["503312"] = self.OnSubFinish503312,
        ["503313"] = self.OnSubFinish503313,
        ["503319"] = self.OnSubFinish503319,
        ["503314"] = self.OnSubFinish503314,
        ["503315"] = self.OnSubFinish503315,
        ["503316"] = self.OnSubFinish503316
    }
end

function Quest5033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["503302"] = self.OnSubFailed503302,
        ["503322"] = self.OnSubFailed503322,
        ["503318"] = self.OnSubFailed503318,
        ["503323"] = self.OnSubFailed503323,
        ["503304"] = self.OnSubFailed503304,
        ["503320"] = self.OnSubFailed503320,
        ["503308"] = self.OnSubFailed503308,
        ["503309"] = self.OnSubFailed503309,
        ["503319"] = self.OnSubFailed503319,
        ["503314"] = self.OnSubFailed503314,
        ["503315"] = self.OnSubFailed503315
    }
end

function Quest5033:Start()
    print("Start")
end

function Quest5033:OnDestroy()
    print("OnDestroy")
end

function Quest5033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5033:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest5033:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest5033:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5033:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5033:OnSubStart503301(arg1)
    print("OnSubStart503301")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 503301, 10)
    this:NotifyTo(npcs.Npc6340.alias, 1, true)
    this:ActorDestroy("Q5033PaokuFail")
end

function Quest5033:OnSubFinish503301(arg1)
    print("OnSubFinish503301")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2038, nil)
    end)
end

function Quest5033:OnSubStart503302(arg1)
    print("OnSubStart503302")
    this:NotifyTo(npcs.Npc6340.alias, 1, true)
    actorMgr:CreateActorWithPos("Q5033PaokuFail", "Actor/Gadget/Q5033PaokuFail", 70900002, 0, points._Q5033PaokuFailPoint_.pos, points._Q5033PaokuFailPoint_.rot, true, false, nil)
end

function Quest5033:OnSubFinish503302(arg1)
    print("OnSubFinish503302")
end

function Quest5033:OnSubFailed503302(arg1)
    print("OnSubFailed503302")
    this:ActorDestroy("Q5033PaokuFail")
end

function Quest5033:OnSubStart503322(arg1)
    print("OnSubStart503322")
    actorMgr:CreateActorWithPos("Q5033PaokuFail", "Actor/Gadget/Q5033PaokuFail", 70900002, 0, points._Q5033PaokuFailPoint_.pos, points._Q5033PaokuFailPoint_.rot, true, false, nil)
end

function Quest5033:OnSubFinish503322(arg1)
    print("OnSubFinish503322")
    this:ActorDestroy("Q5033PaokuFail")
    this:LightNotifyTo(npcs.Npc6340.alias, 0, true)
end

function Quest5033:OnSubFailed503322(arg1)
    print("OnSubFailed503322")
    this:ActorDestroy("Q5033PaokuFail")
end

function Quest5033:OnSubStart503317(arg1)
    print("OnSubStart503317")
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:NotifyTo(npcs.Npc6340.alias, 1, true)
    this:ActorDestroy("Q5033PaokuFail")
end

function Quest5033:OnSubFinish503317(arg1)
    print("OnSubFinish503317")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
end

function Quest5033:OnSubStart503318(arg1)
    print("OnSubStart503318")
    this:NotifyTo(npcs.Npc6340.alias, 1, true)
    actorMgr:CreateActorWithPos("Q5033PaokuFail", "Actor/Gadget/Q5033PaokuFail", 70900002, 0, points._Q5033PaokuFailPoint_.pos, points._Q5033PaokuFailPoint_.rot, true, false, nil)
end

function Quest5033:OnSubFinish503318(arg1)
    print("OnSubFinish503318")
end

function Quest5033:OnSubFailed503318(arg1)
    print("OnSubFailed503318")
    this:ActorDestroy("Q5033PaokuFail")
end

function Quest5033:OnSubStart503323(arg1)
    print("OnSubStart503323")
    actorMgr:CreateActorWithPos("Q5033PaokuFail", "Actor/Gadget/Q5033PaokuFail", 70900002, 0, points._Q5033PaokuFailPoint_.pos, points._Q5033PaokuFailPoint_.rot, true, false, nil)
end

function Quest5033:OnSubFinish503323(arg1)
    print("OnSubFinish503323")
    this:ActorDestroy("Q5033PaokuFail")
    this:LightNotifyTo(npcs.Npc6340.alias, 0, true)
end

function Quest5033:OnSubFailed503323(arg1)
    print("OnSubFailed503323")
    this:ActorDestroy("Q5033PaokuFail")
end

function Quest5033:OnSubStart503303(arg1)
    print("OnSubStart503303")
    this:NpcCreateWithNpcTriggerAndBlackscreen(503303, 0, 25, 1, npcs.Npc1091.id)
end

function Quest5033:OnSubFinish503303(arg1)
    print("OnSubFinish503303")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
end

function Quest5033:OnSubStart503324(arg1)
    print("OnSubStart503324")
end

function Quest5033:OnSubFinish503324(arg1)
    print("OnSubFinish503324")
end

function Quest5033:OnSubStart503304(arg1)
    print("OnSubStart503304")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110503301)
    end)
end

function Quest5033:OnSubFinish503304(arg1)
    print("OnSubFinish503304")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2039, nil)
    end)
end

function Quest5033:OnSubFailed503304(arg1)
    print("OnSubFailed503304")
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 3)
    this:CancelStoryByQuest(110503301)
end

function Quest5033:OnSubStart503320(arg1)
    print("OnSubStart503320")
    this:QuestLimitRegionTask(503320, 3, nil, {x = -1908.972, y = 52.422, z = 9065.857}, {x = 0, y = 0, z = 0}, 1, 60, 80, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "", nil, nil, nil)
    local n = 8
    local v = 2
    local n2 = 1
    local n3 = 2
    local n4 = 133501710
    local n5 = 710001
    local str = "_ParabolaBall_HP"
    local n6 = 1089
    local n7 = 7400
    local n8 = 133501710
    local n9 = 710040
    local str2 = "_ParabolaBall_HP"
    if actorUtils.IsMalePlayer() then
        this:NatlanBallVSStart(n, v, n2, n4, n5, str, n6, n7, n8, n9, str2)
    else
        this:NatlanBallVSStart(n, v, n3, n4, n5, str, n6, n7, n8, n9, str2)
    end
end

function Quest5033:OnSubFinish503320(arg1)
    print("OnSubFinish503320")
    this:ClearQuestLimitRegionTask()
    this:NatlanBallVSEnd()
end

function Quest5033:OnSubFailed503320(arg1)
    print("OnSubFailed503320")
    this:ClearQuestLimitRegionTask()
    this:NatlanBallVSEnd()
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 3)
    this:CancelStoryByQuest(110503301)
end

function Quest5033:OnSubStart503321(arg1)
    print("OnSubStart503321")
end

function Quest5033:OnSubFinish503321(arg1)
    print("OnSubFinish503321")
end

function Quest5033:OnSubStart503305(arg1)
    print("OnSubStart503305")
    this:CallDelayByQuest("503305", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(503305, 0, 10, 1, npcs.Npc1091.id)
    end)
end

function Quest5033:OnSubFinish503305(arg1)
    print("OnSubFinish503305")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    this:CancelStoryByQuest(110503301)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
end

function Quest5033:OnSubStart503306(arg1)
    print("OnSubStart503306")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 503306, 10)
end

function Quest5033:OnSubFinish503306(arg1)
    print("OnSubFinish503306")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q503306Kaiche, nil, 5033)
    end)
end

function Quest5033:OnSubStart503307(arg1)
    print("OnSubStart503307")
end

function Quest5033:OnSubFinish503307(arg1)
    print("OnSubFinish503307")
end

function Quest5033:OnSubStart503308(arg1)
    print("OnSubStart503308")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 503308, 20)
end

function Quest5033:OnSubFinish503308(arg1)
    print("OnSubFinish503308")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20245)
end

function Quest5033:OnSubFailed503308(arg1)
    print("OnSubFailed503308")
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 20245)
    this:ActorDestroy("Q503308N1089Trigger")
end

function Quest5033:OnSubStart503309(arg1)
    print("OnSubStart503309")
    self:CreateNpcWithCameraLookTrigger("Q503309N1089", 503309, 1089, 0, 40, 503309, true)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14986.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14986.alias, 5033):DoFreeStyle(1120, true, nil, true, true, false, false)
    globalActor:ChangeDay24Time(8, true)
end

function Quest5033:OnSubFinish503309(arg1)
    print("OnSubFinish503309")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20245)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 20245)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20245)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 20245)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q503309Kaiche, nil, 5033)
    end)
end

function Quest5033:OnSubFailed503309(arg1)
    print("OnSubFailed503309")
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc1086.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc1087.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc14986.alias, 20245)
    this:ActorDestroy("Q503309N1089")
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 20245)
end

function Quest5033:OnSubStart503310(arg1)
    print("OnSubStart503310")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc1088.id, 0, 10, 503310)
    end)
end

function Quest5033:OnSubFinish503310(arg1)
    print("OnSubFinish503310")
end

function Quest5033:OnSubStart503311(arg1)
    print("OnSubStart503311")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    end)
end

function Quest5033:OnSubFinish503311(arg1)
    print("OnSubFinish503311")
end

function Quest5033:OnSubStart503312(arg1)
    print("OnSubStart503312")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc1096.id, 0, 10, 503312)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 5033):DoFreeStyle(1351, true, nil, true, true, false, false)
    end)
end

function Quest5033:OnSubFinish503312(arg1)
    print("OnSubFinish503312")
end

function Quest5033:OnSubStart503313(arg1)
    print("OnSubStart503313")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc1086.id, 0, 10, 503313)
    end)
end

function Quest5033:OnSubFinish503313(arg1)
    print("OnSubFinish503313")
end

function Quest5033:OnSubStart503319(arg1)
    print("OnSubStart503319")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1088.alias, 5033):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14986.alias, 5033):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest5033:OnSubFinish503319(arg1)
    print("OnSubFinish503319")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.diaochahoukaiche, nil)
    end)
end

function Quest5033:OnSubFailed503319(arg1)
    print("OnSubFailed503319")
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc1086.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc1091.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20245)
    this:ActorDestroy("Q503312N1096Trigger")
    this:ActorDestroy("Q503310N1088Trigger")
    this:ActorDestroy("Q503313N1086Trigger")
    this:DestroyQuestNpcActor(npcs.Npc14986.alias, 20245)
end

function Quest5033:OnSubStart503314(arg1)
    print("OnSubStart503314")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 5, 503314)
end

function Quest5033:OnSubFinish503314(arg1)
    print("OnSubFinish503314")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 20245)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 20245)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 20245)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 20245)
    this:TransmitPlayerWithQuestIdByData(503314, 1, datas.TransmitData_NowordNoSound, nil, nil, nil)
    this:ClearNarratorTask()
    this:TryPauseCurAutoNarrator()
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20245)
end

function Quest5033:OnSubFailed503314(arg1)
    print("OnSubFailed503314")
    this:ClearNarratorTask()
    this:TryPauseCurAutoNarrator()
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 20245)
    this:ActorDestroy("Q503314N1089Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc1086.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc1091.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc14986.alias, 20245)
end

function Quest5033:OnSubStart503315(arg1)
    print("OnSubStart503315")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Paimon.id, 0, 503315, 5)
    this:GetQuestNpcActor(npcs.Npc14986.alias, 5033):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest5033:OnSubFinish503315(arg1)
    print("OnSubFinish503315")
    this:DestroyQuestNpcActor(npcs.Paimon.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc14986.alias, 20245)
end

function Quest5033:OnSubFailed503315(arg1)
    print("OnSubFailed503315")
    this:DestroyQuestNpcActor(npcs.Paimon.alias, 20245)
    this:DestroyQuestNpcActor(npcs.Npc14986.alias, 20245)
    this:ActorDestroy("Q503315N1005Trigger")
end

function Quest5033:OnSubStart503316(arg1)
    print("OnSubStart503316")
    actorMgr:CreateActorWithPos("Q03315transmit", "Actor/Gadget/Q03315transmit", 70900002, 0, points._Q03315transmitPoint_.pos, points._Q03315transmitPoint_.rot, true, false, 20245)
end

function Quest5033:OnSubFinish503316(arg1)
    print("OnSubFinish503316")
    this:ActorDestroy("Q03315transmit")
end

return Quest5033
