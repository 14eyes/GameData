require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13030 = class("Quest13030", QuestActorProxy)
Quest13030.defaultAlias = "Quest13030"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest13030:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest13030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1303001"] = self.OnSubStart1303001,
        ["1303002"] = self.OnSubStart1303002,
        ["1303009"] = self.OnSubStart1303009,
        ["1303003"] = self.OnSubStart1303003,
        ["1303004"] = self.OnSubStart1303004,
        ["1303005"] = self.OnSubStart1303005,
        ["1303007"] = self.OnSubStart1303007,
        ["1303006"] = self.OnSubStart1303006
    }
end

function Quest13030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1303001"] = self.OnSubFinish1303001,
        ["1303002"] = self.OnSubFinish1303002,
        ["1303009"] = self.OnSubFinish1303009,
        ["1303003"] = self.OnSubFinish1303003,
        ["1303004"] = self.OnSubFinish1303004,
        ["1303005"] = self.OnSubFinish1303005,
        ["1303007"] = self.OnSubFinish1303007,
        ["1303006"] = self.OnSubFinish1303006
    }
end

function Quest13030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13030:Start()
    print("Start")
end

function Quest13030:OnDestroy()
    print("OnDestroy")
end

function Quest13030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13030:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13030:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest13030:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest13030:OnSubStart1303001(arg1)
    print("OnSubStart1303001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303001, 1, 15, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3035Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3036Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3037Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3066Data.alias, 1, true)
end

function Quest13030:OnSubFinish1303001(arg1)
    print("OnSubFinish1303001")
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
end

function Quest13030:OnSubStart1303002(arg1)
    print("OnSubStart1303002")
    this:CreateQuestNpc(arg1, npcs.Npc3035Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc3036Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3037Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3066Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q13030Trigger", "Actor/Gadget/Q13030Trigger", 70900002, 0, points.TPos_Q13030Trigger.pos, points.TPos_Q13030Trigger.rot, true, false, 3)
end

function Quest13030:OnSubFinish1303002(arg1)
    print("OnSubFinish1303002")
    this:ActorDestroy("Q13030Trigger")
    this:LightNotifyTo(npcs.Npc3036Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3037Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3066Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc3035Data.alias, 3)
end

function Quest13030:OnSubStart1303009(arg1)
    print("OnSubStart1303009")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303009, 1, 5, 1)
end

function Quest13030:OnSubFinish1303009(arg1)
    print("OnSubFinish1303009")
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
end

function Quest13030:OnSubStart1303003(arg1)
    print("OnSubStart1303003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303003, 1, 20, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30213Data.id, 3)
end

function Quest13030:OnSubFinish1303003(arg1)
    print("OnSubFinish1303003")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
end

function Quest13030:OnSubStart1303004(arg1)
    print("OnSubStart1303004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303004, 1, 5, 1)
end

function Quest13030:OnSubFinish1303004(arg1)
    print("OnSubFinish1303004")
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1035Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc30213Data.alias, 3)
end

function Quest13030:OnSubStart1303005(arg1)
    print("OnSubStart1303005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1056Data.id, 1303005, 1, 20, 1)
    this:NotifyTo(npcs.Npc4091Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1035Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest13030:OnSubFinish1303005(arg1)
    print("OnSubFinish1303005")
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(false)
    this:LightNotifyTo(npcs.Npc4091Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 3)
end

function Quest13030:OnSubStart1303007(arg1)
    print("OnSubStart1303007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303007, 1, 20, 1)
end

function Quest13030:OnSubFinish1303007(arg1)
    print("OnSubFinish1303007")
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
end

function Quest13030:OnSubStart1303006(arg1)
    print("OnSubStart1303006")
end

function Quest13030:OnSubFinish1303006(arg1)
    print("OnSubFinish1303006")
end

return Quest13030
