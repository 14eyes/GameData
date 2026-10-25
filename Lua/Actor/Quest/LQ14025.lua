require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14025 = class("Quest14025", QuestActorProxy)
Quest14025.defaultAlias = "Quest14025"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14025:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402501"] = self.OnSubStart1402501,
        ["1402502"] = self.OnSubStart1402502,
        ["1402503"] = self.OnSubStart1402503,
        ["1402504"] = self.OnSubStart1402504,
        ["1402505"] = self.OnSubStart1402505
    }
end

function Quest14025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402501"] = self.OnSubFinish1402501,
        ["1402502"] = self.OnSubFinish1402502,
        ["1402503"] = self.OnSubFinish1402503,
        ["1402504"] = self.OnSubFinish1402504,
        ["1402505"] = self.OnSubFinish1402505
    }
end

function Quest14025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14025:Start()
    print("Start")
end

function Quest14025:OnDestroy()
    print("OnDestroy")
end

function Quest14025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14025:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest14025:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14025:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14025:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14025:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14025:OnSubStart1402501(arg1)
    print("OnSubStart1402501")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1071Data.id, 1402501, 0, 10, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q14025Trigger", "Actor/Gadget/Q14025Trigger", 70900002, 0, points.TPos_Q14025Trigger.pos, points.TPos_Q14025Trigger.rot, true, false, 3)
end

function Quest14025:OnSubFinish1402501(arg1)
    print("OnSubFinish1402501")
    this:ActorDestroy("Q14025Trigger")
end

function Quest14025:OnSubStart1402502(arg1)
    print("OnSubStart1402502")
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1080Data.id, 1402502, 0, 6)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5142Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13883Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13883Data.alias):DisableInteeHeadCtrl(true)
    this:CreateSpeechBubbleTask(npcs.Npc13883Data.id, 140250701, 0, true, 10, 10, true, false)
end

function Quest14025:OnSubFinish1402502(arg1)
    print("OnSubFinish1402502")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1080Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13883Data.alias, 3)
    this:ClearSpeechBubbleTask()
end

function Quest14025:OnSubStart1402503(arg1)
    print("OnSubStart1402503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1080Data.id, 1402503, 0, 20, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5142Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14025:OnSubFinish1402503(arg1)
    print("OnSubFinish1402503")
    this:SafeDestroyQuestNpc(npcs.Npc1080Data.alias, 3)
end

function Quest14025:OnSubStart1402504(arg1)
    print("OnSubStart1402504")
    this:NpcCreateWithNpcTrigger(npcs.Npc1076Data.id, 1402504, 0, 30)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc5142Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14025:OnSubFinish1402504(arg1)
    print("OnSubFinish1402504")
end

function Quest14025:OnSubStart1402505(arg1)
    print("OnSubStart1402505")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1080Data.id, 1402505, 0, 20, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14025:OnSubFinish1402505(arg1)
    print("OnSubFinish1402505")
    this:SafeDestroyQuestNpc(npcs.Npc1080Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 1083)
    this:LightNotifyTo(npcs.Npc5058Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5060Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5237Data.alias, 0, true)
end

return Quest14025
