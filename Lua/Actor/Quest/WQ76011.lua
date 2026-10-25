require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76011 = class("Quest76011", QuestActorProxy)
Quest76011.defaultAlias = "Quest76011"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76011:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7601112"] = self.OnSubStart7601112,
        ["7601101"] = self.OnSubStart7601101,
        ["7601102"] = self.OnSubStart7601102,
        ["7601103"] = self.OnSubStart7601103,
        ["7601104"] = self.OnSubStart7601104,
        ["7601105"] = self.OnSubStart7601105,
        ["7601106"] = self.OnSubStart7601106,
        ["7601118"] = self.OnSubStart7601118,
        ["7601107"] = self.OnSubStart7601107,
        ["7601108"] = self.OnSubStart7601108,
        ["7601117"] = self.OnSubStart7601117,
        ["7601110"] = self.OnSubStart7601110,
        ["7601109"] = self.OnSubStart7601109,
        ["7601113"] = self.OnSubStart7601113,
        ["7601114"] = self.OnSubStart7601114,
        ["7601115"] = self.OnSubStart7601115,
        ["7601116"] = self.OnSubStart7601116,
        ["7601111"] = self.OnSubStart7601111,
        ["7601119"] = self.OnSubStart7601119,
        ["7601120"] = self.OnSubStart7601120
    }
end

function Quest76011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7601112"] = self.OnSubFinish7601112,
        ["7601101"] = self.OnSubFinish7601101,
        ["7601102"] = self.OnSubFinish7601102,
        ["7601103"] = self.OnSubFinish7601103,
        ["7601104"] = self.OnSubFinish7601104,
        ["7601105"] = self.OnSubFinish7601105,
        ["7601106"] = self.OnSubFinish7601106,
        ["7601118"] = self.OnSubFinish7601118,
        ["7601107"] = self.OnSubFinish7601107,
        ["7601108"] = self.OnSubFinish7601108,
        ["7601117"] = self.OnSubFinish7601117,
        ["7601110"] = self.OnSubFinish7601110,
        ["7601109"] = self.OnSubFinish7601109,
        ["7601113"] = self.OnSubFinish7601113,
        ["7601114"] = self.OnSubFinish7601114,
        ["7601115"] = self.OnSubFinish7601115,
        ["7601116"] = self.OnSubFinish7601116,
        ["7601111"] = self.OnSubFinish7601111,
        ["7601119"] = self.OnSubFinish7601119,
        ["7601120"] = self.OnSubFinish7601120
    }
end

function Quest76011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76011:Start()
    print("Start")
end

function Quest76011:OnDestroy()
    print("OnDestroy")
end

function Quest76011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76011:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7601109Trigger")
    this:ActorDestroy("Q7601111Trigger")
    this:ActorDestroy("Q7601115Trigger")
end

function Quest76011:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76011:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest76011:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76011:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76011:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76011:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76011:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76011:OnSubStart7601112(arg1)
    print("OnSubStart7601112")
end

function Quest76011:OnSubFinish7601112(arg1)
    print("OnSubFinish7601112")
end

function Quest76011:OnSubStart7601101(arg1)
    print("OnSubStart7601101")
    this:CreateQuestNpc(arg1, npcs.Npc21842.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21842.alias, 76011):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7108.alias, true, 1)
    if this:GetQuestVar(7601101, 1) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7601101, nil)
        this:SetQuestVarByMainId(1, 1)
    end
end

function Quest76011:OnSubFinish7601101(arg1)
    print("OnSubFinish7601101")
    this:SetNavigationByMainId(76011, true)
end

function Quest76011:OnSubStart7601102(arg1)
    print("OnSubStart7601102")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21842.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7108.alias, true, 1)
    this:NpcCreateWithNpcTrigger(0, 0, 0, 0)
end

function Quest76011:OnSubFinish7601102(arg1)
    print("OnSubFinish7601102")
    this:SafeDestroyQuestNpc(npcs.Npc21842.alias, 3)
end

function Quest76011:OnSubStart7601103(arg1)
    print("OnSubStart7601103")
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7108.alias, true, 1)
    this:PlayCutsceneIndex(7601103, function(arg1)
        actorUtils.FinishQuestID(false, 7601103)
    end, nil, nil, false)
end

function Quest76011:OnSubFinish7601103(arg1)
    print("OnSubFinish7601103")
end

function Quest76011:OnSubStart7601104(arg1)
    print("OnSubStart7601104")
    this:NpcCreateWithNpcTrigger(npcs.Npc21842.id, 0, 30, 7601104)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7108.alias, true, 1)
end

function Quest76011:OnSubFinish7601104(arg1)
    print("OnSubFinish7601104")
    this:SafeDestroyQuestNpc(npcs.Npc21842.alias, 3)
end

function Quest76011:OnSubStart7601105(arg1)
    print("OnSubStart7601105")
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7108.alias, true, 1)
end

function Quest76011:OnSubFinish7601105(arg1)
    print("OnSubFinish7601105")
    this:LightNotifyTo(npcs.Npc7108.alias, 0, true)
end

function Quest76011:OnSubStart7601106(arg1)
    print("OnSubStart7601106")
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601106(arg1)
    print("OnSubFinish7601106")
end

function Quest76011:OnSubStart7601118(arg1)
    print("OnSubStart7601118")
    this:NpcCreateWithNpcTrigger(npcs.Npc21842.id, 0, 30, 7601118)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601118(arg1)
    print("OnSubFinish7601118")
    this:SafeDestroyQuestNpc(npcs.Npc21842.alias, 3)
end

function Quest76011:OnSubStart7601107(arg1)
    print("OnSubStart7601107")
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601107(arg1)
    print("OnSubFinish7601107")
end

function Quest76011:OnSubStart7601108(arg1)
    print("OnSubStart7601108")
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
    this:PlayCutsceneIndex(7601108, function(arg1)
        actorUtils.FinishQuestID(false, 7601108)
    end, nil, nil, false)
end

function Quest76011:OnSubFinish7601108(arg1)
    print("OnSubFinish7601108")
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
end

function Quest76011:OnSubStart7601117(arg1)
    print("OnSubStart7601117")
    this:NpcCreateWithNpcTrigger(npcs.Npc21842.id, 0, 30, 7601117)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601117(arg1)
    print("OnSubFinish7601117")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21842.alias)
end

function Quest76011:OnSubStart7601110(arg1)
    print("OnSubStart7601110")
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601110(arg1)
    print("OnSubFinish7601110")
end

function Quest76011:OnSubStart7601109(arg1)
    print("OnSubStart7601109")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21842.id, 0, 7601109, 30, true)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
    actorMgr:CreateActorWithPos("Q7601109Trigger", "Actor/Gadget/Q7601109Trigger", 70900002, 0, points._Q7601109TriggerPoint_.pos, points._Q7601109TriggerPoint_.rot, true, false, 3)
end

function Quest76011:OnSubFinish7601109(arg1)
    print("OnSubFinish7601109")
    this:SafeDestroyQuestNpc(npcs.Npc21842.alias, 3)
end

function Quest76011:OnSubStart7601113(arg1)
    print("OnSubStart7601113")
    this:CreateQuestNpc(arg1, npcs.Npc22188.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601113(arg1)
    print("OnSubFinish7601113")
    this:SafeDestroyQuestNpc(npcs.Npc22188.alias, 3)
end

function Quest76011:OnSubStart7601114(arg1)
    print("OnSubStart7601114")
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601114(arg1)
    print("OnSubFinish7601114")
end

function Quest76011:OnSubStart7601115(arg1)
    print("OnSubStart7601115")
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
    actorMgr:CreateActorWithPos("Q7601115Trigger", "Actor/Gadget/Q7601115Trigger", 70900002, 0, points._Q7601115TriggerPoint_.pos, points._Q7601115TriggerPoint_.rot, true, false, 3)
end

function Quest76011:OnSubFinish7601115(arg1)
    print("OnSubFinish7601115")
end

function Quest76011:OnSubStart7601116(arg1)
    print("OnSubStart7601116")
    this:CreateQuestNpc(arg1, npcs.Npc22161.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601116(arg1)
    print("OnSubFinish7601116")
    this:SafeDestroyQuestNpc(npcs.Npc22161.alias, 3)
end

function Quest76011:OnSubStart7601111(arg1)
    print("OnSubStart7601111")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601111, 0, 10, 1, npcs.Npc21842.id)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
    actorMgr:CreateActorWithPos("Q7601111Trigger", "Actor/Gadget/Q7601111Trigger", 70900002, 0, points._Q7601111TriggerPoint_.pos, points._Q7601111TriggerPoint_.rot, true, false, 3)
end

function Quest76011:OnSubFinish7601111(arg1)
    print("OnSubFinish7601111")
    this:SafeDestroyQuestNpc(npcs.Npc21842.alias, 3)
end

function Quest76011:OnSubStart7601119(arg1)
    print("OnSubStart7601119")
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601119(arg1)
    print("OnSubFinish7601119")
end

function Quest76011:OnSubStart7601120(arg1)
    print("OnSubStart7601120")
    this:NpcCreateWithNpcTrigger(npcs.Npc21842.id, 0, 30, 7601120)
    this:DailyNpcSafeHideSelf(npcs.Npc7109.alias, true, 1)
end

function Quest76011:OnSubFinish7601120(arg1)
    print("OnSubFinish7601120")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21842.alias)
    this:LightNotifyTo(npcs.Npc7109.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7109.alias, 0, true)
end

return Quest76011
