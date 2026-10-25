require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14026 = class("Quest14026", QuestActorProxy)
Quest14026.defaultAlias = "Quest14026"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14026:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402601"] = self.OnSubStart1402601,
        ["1402602"] = self.OnSubStart1402602,
        ["1402603"] = self.OnSubStart1402603,
        ["1402604"] = self.OnSubStart1402604,
        ["1402605"] = self.OnSubStart1402605,
        ["1402606"] = self.OnSubStart1402606,
        ["1402607"] = self.OnSubStart1402607,
        ["1402609"] = self.OnSubStart1402609,
        ["1402608"] = self.OnSubStart1402608
    }
end

function Quest14026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402601"] = self.OnSubFinish1402601,
        ["1402602"] = self.OnSubFinish1402602,
        ["1402603"] = self.OnSubFinish1402603,
        ["1402604"] = self.OnSubFinish1402604,
        ["1402605"] = self.OnSubFinish1402605,
        ["1402606"] = self.OnSubFinish1402606,
        ["1402607"] = self.OnSubFinish1402607,
        ["1402609"] = self.OnSubFinish1402609,
        ["1402608"] = self.OnSubFinish1402608
    }
end

function Quest14026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14026:Start()
    print("Start")
end

function Quest14026:OnDestroy()
    print("OnDestroy")
end

function Quest14026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14026:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14026:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14026:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14026:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest14026:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest14026:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14026:OnSubStart1402601(arg1)
    print("OnSubStart1402601")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1080Data.id, 1402601, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14026:OnSubFinish1402601(arg1)
    print("OnSubFinish1402601")
end

function Quest14026:OnSubStart1402602(arg1)
    print("OnSubStart1402602")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1080Data.id, 1402602, 0, 30, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14026:OnSubFinish1402602(arg1)
    print("OnSubFinish1402602")
    this:NPCDestroyImmediately(npcs.Npc1080Data.alias, 3)
    this:ActorDestroy("Q1402605N1080Trigger")
end

function Quest14026:OnSubStart1402603(arg1)
    print("OnSubStart1402603")
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q14026Trigger", "Actor/Gadget/Q14026Trigger", 70900002, 0, points.TPos_Q14026Trigger.pos, points.TPos_Q14026Trigger.rot, true, false, 3)
end

function Quest14026:OnSubFinish1402603(arg1)
    print("OnSubFinish1402603")
    this:ActorDestroy("Q14026Trigger")
end

function Quest14026:OnSubStart1402604(arg1)
    print("OnSubStart1402604")
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc14137Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc14137Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14107Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc14107Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14138Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc14138Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13965Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13965Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13963Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13883Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14026:OnSubFinish1402604(arg1)
    print("OnSubFinish1402604")
    this:NPCDestroyImmediately(npcs.Npc14137Data.alias, 20208)
    this:NPCDestroyImmediately(npcs.Npc14107Data.alias, 20208)
    this:NPCDestroyImmediately(npcs.Npc14138Data.alias, 20208)
    this:NPCDestroyImmediately(npcs.Npc13965Data.alias, 20208)
    this:NPCDestroyImmediately(npcs.Npc13963Data.alias, 20208)
    this:NPCDestroyImmediately(npcs.Npc13883Data.alias, 20208)
end

function Quest14026:OnSubStart1402605(arg1)
    print("OnSubStart1402605")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1080Data.id, 1402605, 0, 30, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14026:OnSubFinish1402605(arg1)
    print("OnSubFinish1402605")
    this:TransmitPlayerWithQuestIdByData(1402605, 1, datas.TransmitData)
end

function Quest14026:OnSubStart1402606(arg1)
    print("OnSubStart1402606")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1080Data.id, 1402606, 0, 30, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14026:OnSubFinish1402606(arg1)
    print("OnSubFinish1402606")
end

function Quest14026:OnSubStart1402607(arg1)
    print("OnSubStart1402607")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1080Data.id, 1402607, 0, 30, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14026:OnSubFinish1402607(arg1)
    print("OnSubFinish1402607")
    this:SafeDestroyQuestNpc(npcs.Npc1080Data.alias, 3)
end

function Quest14026:OnSubStart1402609(arg1)
    print("OnSubStart1402609")
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14026:OnSubFinish1402609(arg1)
    print("OnSubFinish1402609")
    this:QuestNarratorTask(datas.Narrator_1402601)
    this:LightNotifyTo(npcs.Npc5058Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5060Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5237Data.alias, 0, true)
end

function Quest14026:OnSubStart1402608(arg1)
    print("OnSubStart1402608")
    this:NpcCreateWithNpcTrigger(npcs.Npc1074Data.id, 1402608, 0, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
end

function Quest14026:OnSubFinish1402608(arg1)
    print("OnSubFinish1402608")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
end

return Quest14026
