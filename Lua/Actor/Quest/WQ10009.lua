require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10009 = class("Quest10009", QuestActorProxy)
Quest10009.defaultAlias = "Quest10009"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest10009:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest10009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1000901"] = self.OnSubStart1000901,
        ["1000902"] = self.OnSubStart1000902,
        ["1000903"] = self.OnSubStart1000903,
        ["1000905"] = self.OnSubStart1000905,
        ["1000908"] = self.OnSubStart1000908,
        ["1000907"] = self.OnSubStart1000907,
        ["1000904"] = self.OnSubStart1000904,
        ["1000909"] = self.OnSubStart1000909,
        ["1000906"] = self.OnSubStart1000906,
        ["1000910"] = self.OnSubStart1000910,
        ["1000911"] = self.OnSubStart1000911
    }
end

function Quest10009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1000901"] = self.OnSubFinish1000901,
        ["1000902"] = self.OnSubFinish1000902,
        ["1000903"] = self.OnSubFinish1000903,
        ["1000905"] = self.OnSubFinish1000905,
        ["1000908"] = self.OnSubFinish1000908,
        ["1000907"] = self.OnSubFinish1000907,
        ["1000904"] = self.OnSubFinish1000904,
        ["1000909"] = self.OnSubFinish1000909,
        ["1000906"] = self.OnSubFinish1000906,
        ["1000910"] = self.OnSubFinish1000910,
        ["1000911"] = self.OnSubFinish1000911
    }
end

function Quest10009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest10009:Start()
    print("Start")
end

function Quest10009:OnDestroy()
    print("OnDestroy")
end

function Quest10009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10009:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1000902Trigger")
    this:ActorDestroy("Q1000907Trigger")
    this:ActorDestroy("Q1000908Trigger")
    this:ActorDestroy("Q1000906Trigger")
end

function Quest10009:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1000901 then
        actorUtils.FinishQuestID(false, 1000907)
    end
end

function Quest10009:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest10009:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest10009:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest10009:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest10009:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest10009:OnSubStart1000901(arg1)
    print("OnSubStart1000901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1019.id, 0, 5, 1000901)
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
end

function Quest10009:OnSubFinish1000901(arg1)
    print("OnSubFinish1000901")
    this:SafeDestroyQuestNpc(npcs.Npc1019.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100099901, nil)
    end)
end

function Quest10009:OnSubStart1000902(arg1)
    print("OnSubStart1000902")
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1000902Trigger", "Actor/Gadget/Q1000902Trigger", 70900002, 0, points._Q1000902TriggerPoint_.pos, points._Q1000902TriggerPoint_.rot, true, false, 3)
end

function Quest10009:OnSubFinish1000902(arg1)
    print("OnSubFinish1000902")
end

function Quest10009:OnSubStart1000903(arg1)
    print("OnSubStart1000903")
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
end

function Quest10009:OnSubFinish1000903(arg1)
    print("OnSubFinish1000903")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100099902, nil)
    end)
end

function Quest10009:OnSubStart1000905(arg1)
    print("OnSubStart1000905")
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1543.alias, true, 1)
end

function Quest10009:OnSubFinish1000905(arg1)
    print("OnSubFinish1000905")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100099905, nil)
    end)
end

function Quest10009:OnSubStart1000908(arg1)
    print("OnSubStart1000908")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000908, 0, 10, 1, npcs.Npc1019.id)
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1543.alias, true, 1)
end

function Quest10009:OnSubFinish1000908(arg1)
    print("OnSubFinish1000908")
    this:LightNotifyTo(npcs.Npc1543.alias, 0, true)
end

function Quest10009:OnSubStart1000907(arg1)
    print("OnSubStart1000907")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1019.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
end

function Quest10009:OnSubFinish1000907(arg1)
    print("OnSubFinish1000907")
end

function Quest10009:OnSubStart1000904(arg1)
    print("OnSubStart1000904")
    this:NpcCreateWithNpcTrigger(npcs.Npc1019.id, 0, 30, 1000904)
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
end

function Quest10009:OnSubFinish1000904(arg1)
    print("OnSubFinish1000904")
    this:SafeDestroyQuestNpc(npcs.Npc1019.alias, 3)
end

function Quest10009:OnSubStart1000909(arg1)
    print("OnSubStart1000909")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000909, 0, 10, 1, npcs.Npc1019.id)
    this:DailyNpcSafeHideSelf(npcs.Npc1587.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1431.alias, true, 1)
end

function Quest10009:OnSubFinish1000909(arg1)
    print("OnSubFinish1000909")
    this:SafeDestroyQuestNpc(npcs.Npc1019.alias, 3)
    this:LightNotifyTo(npcs.Npc1587.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1431.alias, 0, true)
end

function Quest10009:OnSubStart1000906(arg1)
    print("OnSubStart1000906")
    actorMgr:CreateActorWithPos("Q1000906Trigger", "Actor/Gadget/Q1000906Trigger", 70900002, 0, points._Q1000906TriggerPoint_.pos, points._Q1000906TriggerPoint_.rot, true, false, 3)
end

function Quest10009:OnSubFinish1000906(arg1)
    print("OnSubFinish1000906")
end

function Quest10009:OnSubStart1000910(arg1)
    print("OnSubStart1000910")
end

function Quest10009:OnSubFinish1000910(arg1)
    print("OnSubFinish1000910")
end

function Quest10009:OnSubStart1000911(arg1)
    print("OnSubStart1000911")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000911, 0, 40, 1, npcs.Npc1019.id)
end

function Quest10009:OnSubFinish1000911(arg1)
    print("OnSubFinish1000911")
    this:SafeDestroyQuestNpc(npcs.Npc1019.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000043)
    end)
end

return Quest10009
