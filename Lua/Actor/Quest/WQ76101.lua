require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76101 = class("Quest76101", QuestActorProxy)
Quest76101.defaultAlias = "Quest76101"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76101:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76101:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7610101"] = self.OnSubStart7610101,
        ["7610102"] = self.OnSubStart7610102,
        ["7610103"] = self.OnSubStart7610103,
        ["7610104"] = self.OnSubStart7610104,
        ["7610105"] = self.OnSubStart7610105,
        ["7610106"] = self.OnSubStart7610106,
        ["7610108"] = self.OnSubStart7610108,
        ["7610114"] = self.OnSubStart7610114,
        ["7610116"] = self.OnSubStart7610116,
        ["7610117"] = self.OnSubStart7610117,
        ["7610115"] = self.OnSubStart7610115,
        ["7610124"] = self.OnSubStart7610124,
        ["7610118"] = self.OnSubStart7610118,
        ["7610119"] = self.OnSubStart7610119,
        ["7610109"] = self.OnSubStart7610109,
        ["7610110"] = self.OnSubStart7610110,
        ["7610111"] = self.OnSubStart7610111,
        ["7610113"] = self.OnSubStart7610113,
        ["7610112"] = self.OnSubStart7610112,
        ["7610107"] = self.OnSubStart7610107,
        ["7610120"] = self.OnSubStart7610120,
        ["7610121"] = self.OnSubStart7610121,
        ["7610122"] = self.OnSubStart7610122
    }
end

function Quest76101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7610101"] = self.OnSubFinish7610101,
        ["7610102"] = self.OnSubFinish7610102,
        ["7610103"] = self.OnSubFinish7610103,
        ["7610104"] = self.OnSubFinish7610104,
        ["7610105"] = self.OnSubFinish7610105,
        ["7610106"] = self.OnSubFinish7610106,
        ["7610108"] = self.OnSubFinish7610108,
        ["7610114"] = self.OnSubFinish7610114,
        ["7610116"] = self.OnSubFinish7610116,
        ["7610117"] = self.OnSubFinish7610117,
        ["7610115"] = self.OnSubFinish7610115,
        ["7610124"] = self.OnSubFinish7610124,
        ["7610118"] = self.OnSubFinish7610118,
        ["7610119"] = self.OnSubFinish7610119,
        ["7610109"] = self.OnSubFinish7610109,
        ["7610110"] = self.OnSubFinish7610110,
        ["7610111"] = self.OnSubFinish7610111,
        ["7610113"] = self.OnSubFinish7610113,
        ["7610112"] = self.OnSubFinish7610112,
        ["7610107"] = self.OnSubFinish7610107,
        ["7610120"] = self.OnSubFinish7610120,
        ["7610121"] = self.OnSubFinish7610121,
        ["7610122"] = self.OnSubFinish7610122
    }
end

function Quest76101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76101:Start()
    print("Start")
end

function Quest76101:OnDestroy()
    print("OnDestroy")
end

function Quest76101:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76101:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76101:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76101:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7610101Trigger")
    this:ActorDestroy("Q7610103Trigger")
    this:ActorDestroy("Q7610105Trigger")
    this:ActorDestroy("Q7610108Trigger")
    this:ActorDestroy("Q7610117Trigger")
    this:ActorDestroy("Q7610109Trigger")
    this:ActorDestroy("Q7610110Trigger")
    this:ActorDestroy("Q7610112Trigger")
    this:ActorDestroy("Q7610120Trigger")
    this:ActorDestroy("Q7610124Trigger")
    this:ActorDestroy("Q7610121Trigger_RemoveOrphanNpc")
    this:ActorDestroy("Q7610121Trigger_N7180")
end

function Quest76101:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7610107 then
        actorUtils.FinishQuestID(false, 7610107)
    elseif arg1 == 7610112 then
        actorUtils.FinishQuestID(false, 7610112)
    end
end

function Quest76101:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76101:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76101:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76101:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest76101:OnSubStart7610101(arg1)
    print("OnSubStart7610101")
    actorMgr:CreateActorWithPos("Q7610101Trigger", "Actor/Gadget/Q7610101Trigger", 70900002, 0, points._Q7610101TriggerPoint_.pos, points._Q7610101TriggerPoint_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610101(arg1)
    print("OnSubFinish7610101")
    this:QuestNarratorTask(datas.NarratorWithId_76101, nil)
end

function Quest76101:OnSubStart7610102(arg1)
    print("OnSubStart7610102")
    this:NpcCreateWithNpcTrigger(npcs.Npc22320.id, 0, 20, 7610102)
end

function Quest76101:OnSubFinish7610102(arg1)
    print("OnSubFinish7610102")
end

function Quest76101:OnSubStart7610103(arg1)
    print("OnSubStart7610103")
    this:CreateQuestNpc(arg1, npcs.Npc7180.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22320.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7610103Trigger", "Actor/Gadget/Q7610103Trigger", 70900002, 0, points._Q7610103TriggerPoint_.pos, points._Q7610103TriggerPoint_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610103(arg1)
    print("OnSubFinish7610103")
    actorUtils.ShowQuestSpecHint("50_012", nil, nil)
    this:SetNavigationByMainId(76101, true)
end

function Quest76101:OnSubStart7610104(arg1)
    print("OnSubStart7610104")
end

function Quest76101:OnSubFinish7610104(arg1)
    print("OnSubFinish7610104")
    this:SafeDestroyQuestNpc(npcs.Npc7180.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22320.alias, 3)
end

function Quest76101:OnSubStart7610105(arg1)
    print("OnSubStart7610105")
    actorMgr:CreateActorWithPos("Q7610105Trigger", "Actor/Gadget/Q7610105Trigger", 70900002, 0, points._Q7610105TriggerPoint_.pos, points._Q7610105TriggerPoint_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610105(arg1)
    print("OnSubFinish7610105")
end

function Quest76101:OnSubStart7610106(arg1)
    print("OnSubStart7610106")
end

function Quest76101:OnSubFinish7610106(arg1)
    print("OnSubFinish7610106")
end

function Quest76101:OnSubStart7610108(arg1)
    print("OnSubStart7610108")
    actorMgr:CreateActorWithPos("Q7610108Trigger", "Actor/Gadget/Q7610108Trigger", 70900002, 0, points._Q7610108TriggerPoint_.pos, points._Q7610108TriggerPoint_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610108(arg1)
    print("OnSubFinish7610108")
end

function Quest76101:OnSubStart7610114(arg1)
    print("OnSubStart7610114")
end

function Quest76101:OnSubFinish7610114(arg1)
    print("OnSubFinish7610114")
end

function Quest76101:OnSubStart7610116(arg1)
    print("OnSubStart7610116")
end

function Quest76101:OnSubFinish7610116(arg1)
    print("OnSubFinish7610116")
end

function Quest76101:OnSubStart7610117(arg1)
    print("OnSubStart7610117")
    actorMgr:CreateActorWithPos("Q7610117Trigger", "Actor/Gadget/Q7610117Trigger", 70900002, 0, points._Q7610117TriggerPoint_.pos, points._Q7610117TriggerPoint_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610117(arg1)
    print("OnSubFinish7610117")
end

function Quest76101:OnSubStart7610115(arg1)
    print("OnSubStart7610115")
end

function Quest76101:OnSubFinish7610115(arg1)
    print("OnSubFinish7610115")
end

function Quest76101:OnSubStart7610124(arg1)
    print("OnSubStart7610124")
    actorMgr:CreateActorWithPos("Q7610124Trigger", "Actor/Gadget/Q7610124Trigger", 70900002, 0, points._Q7610124TriggerPoint_.pos, points._Q7610124TriggerPoint_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610124(arg1)
    print("OnSubFinish7610124")
end

function Quest76101:OnSubStart7610118(arg1)
    print("OnSubStart7610118")
end

function Quest76101:OnSubFinish7610118(arg1)
    print("OnSubFinish7610118")
end

function Quest76101:OnSubStart7610119(arg1)
    print("OnSubStart7610119")
end

function Quest76101:OnSubFinish7610119(arg1)
    print("OnSubFinish7610119")
end

function Quest76101:OnSubStart7610109(arg1)
    print("OnSubStart7610109")
    actorMgr:CreateActorWithPos("Q7610109Trigger", "Actor/Gadget/Q7610109Trigger", 70900002, 0, points._Q7610109TriggerPoint_.pos, points._Q7610109TriggerPoint_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610109(arg1)
    print("OnSubFinish7610109")
    this:QuestNarratorTask(datas.NarratorWithId_7610109, nil)
end

function Quest76101:OnSubStart7610110(arg1)
    print("OnSubStart7610110")
    actorMgr:CreateActorWithPos("Q7610110Trigger", "Actor/Gadget/Q7610110Trigger", 70900002, 0, points._Q7610110TriggerPoint_.pos, points._Q7610110TriggerPoint_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610110(arg1)
    print("OnSubFinish7610110")
end

function Quest76101:OnSubStart7610111(arg1)
    print("OnSubStart7610111")
end

function Quest76101:OnSubFinish7610111(arg1)
    print("OnSubFinish7610111")
end

function Quest76101:OnSubStart7610113(arg1)
    print("OnSubStart7610113")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc7181.id, 0, 7610113, 10, false)
end

function Quest76101:OnSubFinish7610113(arg1)
    print("OnSubFinish7610113")
    this:TransmitPlayerByData(arg1, 4, datas.ClientConfigVar_1, nil, nil, nil)
end

function Quest76101:OnSubStart7610112(arg1)
    print("OnSubStart7610112")
end

function Quest76101:OnSubFinish7610112(arg1)
    print("OnSubFinish7610112")
end

function Quest76101:OnSubStart7610107(arg1)
    print("OnSubStart7610107")
end

function Quest76101:OnSubFinish7610107(arg1)
    print("OnSubFinish7610107")
end

function Quest76101:OnSubStart7610120(arg1)
    print("OnSubStart7610120")
    this:CreateQuestNpc(arg1, npcs.Npc7180.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22320.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7648.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7610120Trigger", "Actor/Gadget/Q7610120Trigger", 70900002, 0, points._Q7610120TriggerPoint_.pos, points._Q7610120TriggerPoint_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610120(arg1)
    print("OnSubFinish7610120")
    this:QuestNarratorTask(datas.NarratorWithId_7610120, nil)
end

function Quest76101:OnSubStart7610121(arg1)
    print("OnSubStart7610121")
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7180.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22320.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7648.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7610121Trigger_N7180", "Actor/Gadget/Q7610121Trigger_N7180", 70900002, 0, points._Q7610121Trigger_N7180Point_.pos, points._Q7610121Trigger_N7180Point_.rot, true, false, 3)
end

function Quest76101:OnSubFinish7610121(arg1)
    print("OnSubFinish7610121")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc7183.id, 0, false, 0.5, nil)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc7181.id, 0, false, 0.5, nil)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc7180.id, 0, false, 0.5, nil)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc7184.id, 0, false, 0.5, nil)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc22320.id, 0, false, 0.5, nil)
    this:NotifyTo(npcs.Npc7648.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7610121Trigger_RemoveOrphanNpc", "Actor/Gadget/Q7610121Trigger_RemoveOrphanNpc", 70900002, 0, points._Q7610121Trigger_RemoveOrphanNpcPoint_.pos, points._Q7610121Trigger_RemoveOrphanNpcPoint_.rot, true, false, 3)
end

function Quest76101:OnSubStart7610122(arg1)
    print("OnSubStart7610122")
end

function Quest76101:OnSubFinish7610122(arg1)
    print("OnSubFinish7610122")
end

return Quest76101
