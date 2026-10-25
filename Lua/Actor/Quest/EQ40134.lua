require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40134 = class("Quest40134", QuestActorProxy)
Quest40134.defaultAlias = "Quest40134"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40134:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40134:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4013405"] = self.OnSubStart4013405,
        ["4013401"] = self.OnSubStart4013401,
        ["4013402"] = self.OnSubStart4013402,
        ["4013406"] = self.OnSubStart4013406,
        ["4013413"] = self.OnSubStart4013413,
        ["4013412"] = self.OnSubStart4013412,
        ["4013403"] = self.OnSubStart4013403,
        ["4013411"] = self.OnSubStart4013411,
        ["4013410"] = self.OnSubStart4013410,
        ["4013407"] = self.OnSubStart4013407,
        ["4013414"] = self.OnSubStart4013414,
        ["4013408"] = self.OnSubStart4013408,
        ["4013409"] = self.OnSubStart4013409,
        ["4013404"] = self.OnSubStart4013404
    }
end

function Quest40134:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4013405"] = self.OnSubFinish4013405,
        ["4013401"] = self.OnSubFinish4013401,
        ["4013402"] = self.OnSubFinish4013402,
        ["4013406"] = self.OnSubFinish4013406,
        ["4013413"] = self.OnSubFinish4013413,
        ["4013412"] = self.OnSubFinish4013412,
        ["4013403"] = self.OnSubFinish4013403,
        ["4013411"] = self.OnSubFinish4013411,
        ["4013410"] = self.OnSubFinish4013410,
        ["4013407"] = self.OnSubFinish4013407,
        ["4013414"] = self.OnSubFinish4013414,
        ["4013408"] = self.OnSubFinish4013408,
        ["4013409"] = self.OnSubFinish4013409,
        ["4013404"] = self.OnSubFinish4013404
    }
end

function Quest40134:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4013413"] = self.OnSubFailed4013413,
        ["4013412"] = self.OnSubFailed4013412,
        ["4013406"] = self.OnSubFailed4013406
    }
end

function Quest40134:Start()
    print("Start")
end

function Quest40134:OnDestroy()
    print("OnDestroy")
end

function Quest40134:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40134:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40134:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1025Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30447Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5104Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5105Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5111Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5112Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5113Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5114Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5106Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5118Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5119Data.alias, 0, true)
    this:DestroyNpcTrigger("Q4013401N1081Trigger")
    this:DestroyNpcTrigger("Q4013402N2604Trigger")
    this:DestroyNpcTrigger("Q4013403N1081Trigger")
    this:DestroyNpcTrigger("Q4013404N1081Trigger")
    this:DestroyNpcTrigger("Q4013407N1081Trigger")
    this:DestroyNpcTrigger("Q4013409N1081Trigger")
    this:DestroyNpcTrigger("Q4013410N1081Trigger")
    globalActor:ResumePaimonInProfilePage({3})
    this:UnCallDelayByQuest("4013403")
end

function Quest40134:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40134:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40134:OnSubStart4013405(arg1)
    print("OnSubStart4013405")
end

function Quest40134:OnSubFinish4013405(arg1)
    print("OnSubFinish4013405")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest40134:OnSubStart4013401(arg1)
    print("OnSubStart4013401")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1081Data.id, 4013401, 0, 10, 1)
    this:NotifyTo(npcs.Npc5104Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5105Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5111Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5112Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5113Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5114Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5106Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5118Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5119Data.alias, 1, true)
end

function Quest40134:OnSubFinish4013401(arg1)
    print("OnSubFinish4013401")
    this:TransmitPlayerWithDialogTextByQuestId(4013401, 1, datas.DialogsId, 10)
    this:ClearNarratorTask()
    this:DestroyQuestNpcActor(npcs.Npc1081Data.alias, 3)
end

function Quest40134:OnSubStart4013402(arg1)
    print("OnSubStart4013402")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc2604Data.id, 4013402, 0, 30, 1, true)
    end)

    this:NotifyTo(npcs.Npc5104Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5105Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5111Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5112Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5113Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5114Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5106Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5118Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5119Data.alias, 1, true)
end

function Quest40134:OnSubFinish4013402(arg1)
    print("OnSubFinish4013402")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 3)
end

function Quest40134:OnSubStart4013406(arg1)
    print("OnSubStart4013406")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc30447Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc30447Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1082Data.id, 0)
        globalActor:DisablePaimonInProfilePage({3})
    end)
end

function Quest40134:OnSubFinish4013406(arg1)
    print("OnSubFinish4013406")
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30447Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:ClearNarratorTask()
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest40134:OnSubFailed4013406(arg1)
    print("OnSubFailed4013406")
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30447Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:ClearNarratorTask()
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest40134:OnSubStart4013413(arg1)
    print("OnSubStart4013413")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1025Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1025Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest40134:OnSubFinish4013413(arg1)
    print("OnSubFinish4013413")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1025Data.alias, 3)
end

function Quest40134:OnSubFailed4013413(arg1)
    print("OnSubFailed4013413")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1025Data.alias, 3)
end

function Quest40134:OnSubStart4013412(arg1)
    print("OnSubStart4013412")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1026Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1026Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest40134:OnSubFinish4013412(arg1)
    print("OnSubFinish4013412")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026Data.alias, 3)
end

function Quest40134:OnSubFailed4013412(arg1)
    print("OnSubFailed4013412")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026Data.alias, 3)
end

function Quest40134:OnSubStart4013403(arg1)
    print("OnSubStart4013403")
    this:CallDelayByQuest("4013403", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1081Data.id, 4013403, 0, 30, 1)
    end)

    this:NotifyTo(npcs.Npc5104Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5105Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5111Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5112Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5113Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5114Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5106Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5118Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5119Data.alias, 1, true)
end

function Quest40134:OnSubFinish4013403(arg1)
    print("OnSubFinish4013403")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5104Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5105Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5111Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5112Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5113Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5114Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5106Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5118Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5119Data.alias, 0, true)
end

function Quest40134:OnSubStart4013411(arg1)
    print("OnSubStart4013411")
end

function Quest40134:OnSubFinish4013411(arg1)
    print("OnSubFinish4013411")
end

function Quest40134:OnSubStart4013410(arg1)
    print("OnSubStart4013410")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1081Data.id, 4013410, 0, 7, 1)
end

function Quest40134:OnSubFinish4013410(arg1)
    print("OnSubFinish4013410")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

function Quest40134:OnSubStart4013407(arg1)
    print("OnSubStart4013407")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1081Data.id, 4013407, 0, 5, 1)
end

function Quest40134:OnSubFinish4013407(arg1)
    print("OnSubFinish4013407")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

function Quest40134:OnSubStart4013414(arg1)
    print("OnSubStart4013414")
    actorUtils.EnterFilmfestSniperDungeon(99)
end

function Quest40134:OnSubFinish4013414(arg1)
    print("OnSubFinish4013414")
end

function Quest40134:OnSubStart4013408(arg1)
    print("OnSubStart4013408")
end

function Quest40134:OnSubFinish4013408(arg1)
    print("OnSubFinish4013408")
    this:TransmitPlayerWithDialogTextByQuestId(4013408, 1, datas.DialogsId_01, 0.5)
end

function Quest40134:OnSubStart4013409(arg1)
    print("OnSubStart4013409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1081Data.id, 4013409, 0, 30, 1)
end

function Quest40134:OnSubFinish4013409(arg1)
    print("OnSubFinish4013409")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

function Quest40134:OnSubStart4013404(arg1)
    print("OnSubStart4013404")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1081Data.id, 4013404, 0, 15, 1)
end

function Quest40134:OnSubFinish4013404(arg1)
    print("OnSubFinish4013404")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

return Quest40134
