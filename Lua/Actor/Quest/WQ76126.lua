require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76126 = class("Quest76126", QuestActorProxy)
Quest76126.defaultAlias = "Quest76126"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76126:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76126:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7612601"] = self.OnSubStart7612601,
        ["7612602"] = self.OnSubStart7612602,
        ["7612603"] = self.OnSubStart7612603
    }
end

function Quest76126:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7612601"] = self.OnSubFinish7612601,
        ["7612602"] = self.OnSubFinish7612602,
        ["7612603"] = self.OnSubFinish7612603
    }
end

function Quest76126:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76126:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76126:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest76126:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76126:OnSubStart7612601(arg1)
    print("OnSubStart7612601")
    actorUtils.FinishQuestID(false, 7612601)
end

function Quest76126:OnSubFinish7612601(arg1)
    print("OnSubFinish7612601")
    this:QuestNarratorTask(datas.NarratorWithId_7613601, nil)
end

function Quest76126:OnSubStart7612602(arg1)
    print("OnSubStart7612602")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7046.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7046.alias, 76126):DoFreeStyle(4465, true, nil, true, true, false, false)
    end)
end

function Quest76126:OnSubFinish7612602(arg1)
    print("OnSubFinish7612602")
    this:SafeDestroyQuestNpc(npcs.Npc7046.alias, 3)
    this:ClearNarratorTask()
end

function Quest76126:OnSubStart7612603(arg1)
    print("OnSubStart7612603")
    this:ActionSafeCall(function(arg1_2)
        this:DailyNpcSafeHideSelf(npcs.Npc7059.alias, true, 1)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7046.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7046.alias, 76126):DoFreeStyle(1240, true, nil, true, true, false, false)
        this:NpcCreateWithNpcTrigger(npcs.Npc7058.id, 0, 10, 7612603)
        this:GetQuestNpcActor(npcs.Npc7058.alias, 76126):DoFreeStyle(1170, true, nil, true, true, false, false)
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
    end)
end

function Quest76126:OnSubFinish7612603(arg1)
    print("OnSubFinish7612603")
    this:LightNotifyTo(npcs.Npc7059.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc7046.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7058.alias, 3)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3607
    local n2 = 16
    local tbl = {}
    local n3 = 160004
    tbl[1] = 160003
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, true)
end

return Quest76126
