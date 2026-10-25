require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76138 = class("Quest76138", QuestActorProxy)
Quest76138.defaultAlias = "Quest76138"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76138:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76138:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7613803"] = self.OnSubStart7613803,
        ["7613801"] = self.OnSubStart7613801,
        ["7613802"] = self.OnSubStart7613802
    }
end

function Quest76138:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7613803"] = self.OnSubFinish7613803,
        ["7613801"] = self.OnSubFinish7613801,
        ["7613802"] = self.OnSubFinish7613802
    }
end

function Quest76138:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76138:Start()
    print("Start")
end

function Quest76138:OnDestroy()
    print("OnDestroy")
end

function Quest76138:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76138:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76138:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76138:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76138:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76138:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76138:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest76138:OnMainPaused(arg1)
    this:ClearNarratorTask()
    this:BanCrowdNpc(0, 16, {160003, 160004}, false, true)
end

function Quest76138:OnSubStart7613803(arg1)
    print("OnSubStart7613803")
    actorUtils.FinishQuestID(false, 7613803)
end

function Quest76138:OnSubFinish7613803(arg1)
    print("OnSubFinish7613803")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_99, nil, nil)
end

function Quest76138:OnSubStart7613801(arg1)
    print("OnSubStart7613801")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7046.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7046.alias, 76138):DoFreeStyle(4465, true, nil, true, true, false, false)
    end)
end

function Quest76138:OnSubFinish7613801(arg1)
    print("OnSubFinish7613801")
    this:SafeDestroyQuestNpc(npcs.Npc7046.alias, 3)
    this:ClearNarratorTask()
end

function Quest76138:OnSubStart7613802(arg1)
    print("OnSubStart7613802")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7046.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7046.alias, 76138):DoFreeStyle(1240, true, nil, true, true, false, false)
        this:NpcCreateWithNpcTrigger(npcs.Npc7058.id, 0, 10, 7613802)
        this:GetQuestNpcActor(npcs.Npc7058.alias, 76138):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:DailyNpcSafeHideSelf(npcs.Npc7059.alias, true, 1)
        local v = this
        local v2 = v
        local banCrowdNpc = v.BanCrowdNpc
        local n = 3607
        local n2 = 16
        local tbl = {}
        local n3 = 160004
        tbl[1] = 160003
        tbl[2] = n3
        banCrowdNpc(v2, n, n2, tbl, true, true)
        this:BanCrowdNpc(3607, 16, {160003, 160004}, true, true)
    end)
end

function Quest76138:OnSubFinish7613802(arg1)
    print("OnSubFinish7613802")
    this:SafeDestroyQuestNpc(npcs.Npc7046.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7058.alias, 3)
    this:LightNotifyTo(npcs.Npc7059.alias, 0, true)
    this:BanCrowdNpc(3607, 16, {160003, 160004}, false, true)
end

return Quest76138
