require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40116 = class("Quest40116", QuestActorProxy)
Quest40116.defaultAlias = "Quest40116"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40116:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40116:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4011601"] = self.OnSubStart4011601,
        ["4011602"] = self.OnSubStart4011602,
        ["4011603"] = self.OnSubStart4011603,
        ["4011604"] = self.OnSubStart4011604,
        ["4011605"] = self.OnSubStart4011605,
        ["4011606"] = self.OnSubStart4011606,
        ["4011614"] = self.OnSubStart4011614,
        ["4011607"] = self.OnSubStart4011607,
        ["4011608"] = self.OnSubStart4011608,
        ["4011612"] = self.OnSubStart4011612,
        ["4011615"] = self.OnSubStart4011615,
        ["4011609"] = self.OnSubStart4011609,
        ["4011611"] = self.OnSubStart4011611,
        ["4011610"] = self.OnSubStart4011610,
        ["4011613"] = self.OnSubStart4011613
    }
end

function Quest40116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4011601"] = self.OnSubFinish4011601,
        ["4011602"] = self.OnSubFinish4011602,
        ["4011603"] = self.OnSubFinish4011603,
        ["4011604"] = self.OnSubFinish4011604,
        ["4011605"] = self.OnSubFinish4011605,
        ["4011606"] = self.OnSubFinish4011606,
        ["4011614"] = self.OnSubFinish4011614,
        ["4011607"] = self.OnSubFinish4011607,
        ["4011608"] = self.OnSubFinish4011608,
        ["4011612"] = self.OnSubFinish4011612,
        ["4011615"] = self.OnSubFinish4011615,
        ["4011609"] = self.OnSubFinish4011609,
        ["4011611"] = self.OnSubFinish4011611,
        ["4011610"] = self.OnSubFinish4011610,
        ["4011613"] = self.OnSubFinish4011613
    }
end

function Quest40116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4011614"] = self.OnSubFailed4011614, ["4011612"] = self.OnSubFailed4011612}
end

function Quest40116:Start()
    print("Start")
end

function Quest40116:OnDestroy()
    print("OnDestroy")
end

function Quest40116:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40116:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40116:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13252Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13246Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13253Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 10)
    actorMgr:DestroyEntityActor("Q4011603Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011603Kaiche", 10, false)
    actorMgr:DestroyEntityActor("Q4011605Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011607Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011612Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011614Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011615Finish", 10, false)
    this:ActorDestroy("Q4011611Talk")
    this:ActorDestroy("Q4011609Kaiche")
    this:ActorDestroy("Q4011602Talk")
    this:ActorDestroy("Q4011608Talk")
end

function Quest40116:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest40116:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40116:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40116:OnSubStart4011601(arg1)
    print("OnSubStart4011601")
end

function Quest40116:OnSubFinish4011601(arg1)
    print("OnSubFinish4011601")
end

function Quest40116:OnSubStart4011602(arg1)
    print("OnSubStart4011602")
    this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13253Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
    actorMgr:CreateActorWithPos("Q4011602Talk", "Actor/Gadget/Q4011602Talk", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011601_Q4011602_N13247").pos, sceneData:GetDummyPoint(10, "Q4011601_Q4011602_N13247").rot, true, false, 10)
end

function Quest40116:OnSubFinish4011602(arg1)
    print("OnSubFinish4011602")
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13253Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 10)
end

function Quest40116:OnSubStart4011603(arg1)
    print("OnSubStart4011603")
    actorMgr:CreateActorWithPos("Q4011603Finish", "Actor/Gadget/Q4011603Finish", 70900002, 0, {x = 247.731, y = 212.194, z = 48.727}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011603Kaiche", "Actor/Gadget/Q4011603Kaiche", 70900002, 0, points.TPos_Q4011603Kaiche.pos, points.TPos_Q4011603Kaiche.rot, true, false, 10)
end

function Quest40116:OnSubFinish4011603(arg1)
    print("OnSubFinish4011603")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40116:OnSubStart4011604(arg1)
    print("OnSubStart4011604")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc13247Data.id, 1, npcs.Npc13247Data.alias)
end

function Quest40116:OnSubFinish4011604(arg1)
    print("OnSubFinish4011604")
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
end

function Quest40116:OnSubStart4011605(arg1)
    print("OnSubStart4011605")
    this:CreateQuestNpc(arg1, npcs.Npc13252Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011605Finish", "Actor/Gadget/Q4011605Finish", 70900002, 0, points.TPos_Q4011605Finish.pos, points.TPos_Q4011605Finish.rot, true, false, 10)
end

function Quest40116:OnSubFinish4011605(arg1)
    print("OnSubFinish4011605")
end

function Quest40116:OnSubStart4011606(arg1)
    print("OnSubStart4011606")
    this:RequestInteraction(npcs.Npc13252Data.alias)
end

function Quest40116:OnSubFinish4011606(arg1)
    print("OnSubFinish4011606")
    this:SafeDestroyQuestNpc(npcs.Npc13252Data.alias, 10)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4011606Kaiche, nil, 40116)
    end)
end

function Quest40116:OnSubStart4011614(arg1)
    print("OnSubStart4011614")
    actorMgr:CreateActorWithPos("Q4011614Finish", "Actor/Gadget/Q4011614Finish", 70900002, 0, points.TPos_Q4011614Finish.pos, points.TPos_Q4011614Finish.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011607Finish", "Actor/Gadget/Q4011607Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011608_N13252").pos, sceneData:GetDummyPoint(10, "Q4011608_N13252").rot, true, false, 10)
end

function Quest40116:OnSubFinish4011614(arg1)
    print("OnSubFinish4011614")
    this:ActorDestroy("Q4011614Finish")
end

function Quest40116:OnSubFailed4011614(arg1)
    print("OnSubFailed4011614")
    this:ActorDestroy("Q4011614Finish")
end

function Quest40116:OnSubStart4011607(arg1)
    print("OnSubStart4011607")
    actorMgr:CreateActorWithPos("Q4011607Finish", "Actor/Gadget/Q4011607Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011608_N13252").pos, sceneData:GetDummyPoint(10, "Q4011608_N13252").rot, true, false, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13252Data.id, 0)
end

function Quest40116:OnSubFinish4011607(arg1)
    print("OnSubFinish4011607")
end

function Quest40116:OnSubStart4011608(arg1)
    print("OnSubStart4011608")
    actorMgr:CreateActorWithPos("Q4011608Talk", "Actor/Gadget/Q4011608Talk", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011608_N13252").pos, sceneData:GetDummyPoint(10, "Q4011608_N13252").rot, true, false, 10)
end

function Quest40116:OnSubFinish4011608(arg1)
    print("OnSubFinish4011608")
end

function Quest40116:OnSubStart4011612(arg1)
    print("OnSubStart4011612")
    actorMgr:CreateActorWithPos("Q4011612Finish", "Actor/Gadget/Q4011612Finish", 70900002, 0, points.TPos_Q4011612Finish.pos, points.TPos_Q4011612Finish.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011615Finish", "Actor/Gadget/Q4011615Finish", 70900002, 0, points.TPos_Q4011615Finish.pos, points.TPos_Q4011615Finish.rot, true, false, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13246Data.id, 0)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13252Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest40116:OnSubFinish4011612(arg1)
    print("OnSubFinish4011612")
    this:ActorDestroy("Q4011612Finish")
end

function Quest40116:OnSubFailed4011612(arg1)
    print("OnSubFailed4011612")
    this:ActorDestroy("Q4011612Finish")
end

function Quest40116:OnSubStart4011615(arg1)
    print("OnSubStart4011615")
    actorMgr:CreateActorWithPos("Q4011615Finish", "Actor/Gadget/Q4011615Finish", 70900002, 0, points.TPos_Q4011615Finish.pos, points.TPos_Q4011615Finish.rot, true, false, 10)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13252Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40116:OnSubFinish4011615(arg1)
    print("OnSubFinish4011615")
end

function Quest40116:OnSubStart4011609(arg1)
    print("OnSubStart4011609")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13252Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4011609Kaiche", "Actor/Gadget/Q4011609Kaiche", 70900002, 0, {x = 419.086, y = 402.732, z = -207.54}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40116:OnSubFinish4011609(arg1)
    print("OnSubFinish4011609")
    this:SafeDestroyQuestNpc(npcs.Npc13246Data.alias, 10)
    this:TransmitPlayerById(arg1, 1)
    this:ActorDestroy("Q4011609Kaiche")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40116:OnSubStart4011611(arg1)
    print("OnSubStart4011611")
    actorMgr:CreateActorWithPos("Q4011611Talk", "Actor/Gadget/Q4011611Talk", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011608_N13252").pos, sceneData:GetDummyPoint(10, "Q4011608_N13252").rot, true, false, 10)
end

function Quest40116:OnSubFinish4011611(arg1)
    print("OnSubFinish4011611")
    this:SafeDestroyQuestNpc(npcs.Npc13252Data.alias, 10)
end

function Quest40116:OnSubStart4011610(arg1)
    print("OnSubStart4011610")
end

function Quest40116:OnSubFinish4011610(arg1)
    print("OnSubFinish4011610")
end

function Quest40116:OnSubStart4011613(arg1)
    print("OnSubStart4011613")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13252Data.id, 4011613, 1, 30, 1)
end

function Quest40116:OnSubFinish4011613(arg1)
    print("OnSubFinish4011613")
    this:SafeDestroyQuestNpc(npcs.Npc13252Data.alias, 10)
end

return Quest40116
