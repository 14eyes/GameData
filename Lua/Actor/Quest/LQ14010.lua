require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14010 = class("Quest14010", QuestActorProxy)
Quest14010.defaultAlias = "Quest14010"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14010:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1401001"] = self.OnSubStart1401001,
        ["1401002"] = self.OnSubStart1401002,
        ["1401003"] = self.OnSubStart1401003,
        ["1401004"] = self.OnSubStart1401004,
        ["1401005"] = self.OnSubStart1401005
    }
end

function Quest14010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1401001"] = self.OnSubFinish1401001,
        ["1401002"] = self.OnSubFinish1401002,
        ["1401003"] = self.OnSubFinish1401003,
        ["1401004"] = self.OnSubFinish1401004,
        ["1401005"] = self.OnSubFinish1401005
    }
end

function Quest14010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14010:Start()
    print("Start")
end

function Quest14010:OnDestroy()
    print("OnDestroy")
end

function Quest14010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14010:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14010:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14010:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14010:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest14010:OnSubStart1401001(arg1)
    print("OnSubStart1401001")
    this:NpcCreateWithNpcTrigger(npcs.Npc5031Data.id, 1401001, 0, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc5034Data.alias, 1, true)
end

function Quest14010:OnSubFinish1401001(arg1)
    print("OnSubFinish1401001")
end

function Quest14010:OnSubStart1401002(arg1)
    print("OnSubStart1401002")
    this:CreateQuestNpc(arg1, npcs.Npc5031Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13578Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13577Data.id, 1401002, 0, 4, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5034Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5031Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14010:OnSubFinish1401002(arg1)
    print("OnSubFinish1401002")
    this:GetQuestNpcActor(npcs.Npc5031Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 3)
end

function Quest14010:OnSubStart1401003(arg1)
    print("OnSubStart1401003")
    this:CreateQuestNpc(arg1, npcs.Npc5031Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc13578Data.id, 1401003, 0, 11)
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13579Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13579Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5034Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1401003Trigger", "Actor/Gadget/Q1401003Trigger", 70900002, 0, points.TPos_Q1401003Trigger.pos, points.TPos_Q1401003Trigger.rot, true, false, 3)
end

function Quest14010:OnSubFinish1401003(arg1)
    print("OnSubFinish1401003")
    this:LightNotifyTo(npcs.Npc5034Data.alias, 0, true)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5031Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13578Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13579Data.alias, 3)
end

function Quest14010:OnSubStart1401004(arg1)
    print("OnSubStart1401004")
    actorMgr:CreateActorWithPos("Q1401004Trigger", "Actor/Gadget/Q1401004Trigger", 70900002, 0, points.TPos_Q1401004Trigger.pos, points.TPos_Q1401004Trigger.rot, true, false, 3)
end

function Quest14010:OnSubFinish1401004(arg1)
    print("OnSubFinish1401004")
end

function Quest14010:OnSubStart1401005(arg1)
    print("OnSubStart1401005")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13578Data.id, 1401005, 0, 8, 1, true)
end

function Quest14010:OnSubFinish1401005(arg1)
    print("OnSubFinish1401005")
    this:SafeDestroyQuestNpc(npcs.Npc13578Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13579Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13697Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13698Data.alias, 1087)
end

return Quest14010
