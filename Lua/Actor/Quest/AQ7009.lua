require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7009 = class("Quest7009", QuestActorProxy)
Quest7009.defaultAlias = "Quest7009"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7009:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["700901"] = self.OnSubStart700901,
        ["700920"] = self.OnSubStart700920,
        ["700902"] = self.OnSubStart700902,
        ["700903"] = self.OnSubStart700903,
        ["700904"] = self.OnSubStart700904,
        ["700905"] = self.OnSubStart700905,
        ["700906"] = self.OnSubStart700906,
        ["700907"] = self.OnSubStart700907,
        ["700922"] = self.OnSubStart700922,
        ["700908"] = self.OnSubStart700908,
        ["700921"] = self.OnSubStart700921,
        ["700909"] = self.OnSubStart700909,
        ["700925"] = self.OnSubStart700925,
        ["700910"] = self.OnSubStart700910,
        ["700923"] = self.OnSubStart700923,
        ["700926"] = self.OnSubStart700926,
        ["700911"] = self.OnSubStart700911,
        ["700912"] = self.OnSubStart700912,
        ["700919"] = self.OnSubStart700919,
        ["700913"] = self.OnSubStart700913,
        ["700916"] = self.OnSubStart700916,
        ["700914"] = self.OnSubStart700914,
        ["700915"] = self.OnSubStart700915,
        ["700918"] = self.OnSubStart700918,
        ["700924"] = self.OnSubStart700924,
        ["700917"] = self.OnSubStart700917
    }
end

function Quest7009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["700901"] = self.OnSubFinish700901,
        ["700920"] = self.OnSubFinish700920,
        ["700902"] = self.OnSubFinish700902,
        ["700903"] = self.OnSubFinish700903,
        ["700904"] = self.OnSubFinish700904,
        ["700905"] = self.OnSubFinish700905,
        ["700906"] = self.OnSubFinish700906,
        ["700907"] = self.OnSubFinish700907,
        ["700922"] = self.OnSubFinish700922,
        ["700908"] = self.OnSubFinish700908,
        ["700921"] = self.OnSubFinish700921,
        ["700909"] = self.OnSubFinish700909,
        ["700925"] = self.OnSubFinish700925,
        ["700910"] = self.OnSubFinish700910,
        ["700923"] = self.OnSubFinish700923,
        ["700926"] = self.OnSubFinish700926,
        ["700911"] = self.OnSubFinish700911,
        ["700912"] = self.OnSubFinish700912,
        ["700919"] = self.OnSubFinish700919,
        ["700913"] = self.OnSubFinish700913,
        ["700916"] = self.OnSubFinish700916,
        ["700914"] = self.OnSubFinish700914,
        ["700915"] = self.OnSubFinish700915,
        ["700918"] = self.OnSubFinish700918,
        ["700924"] = self.OnSubFinish700924,
        ["700917"] = self.OnSubFinish700917
    }
end

function Quest7009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["700904"] = self.OnSubFailed700904,
        ["700905"] = self.OnSubFailed700905,
        ["700907"] = self.OnSubFailed700907,
        ["700922"] = self.OnSubFailed700922,
        ["700908"] = self.OnSubFailed700908,
        ["700921"] = self.OnSubFailed700921,
        ["700909"] = self.OnSubFailed700909,
        ["700910"] = self.OnSubFailed700910,
        ["700926"] = self.OnSubFailed700926,
        ["700918"] = self.OnSubFailed700918,
        ["700924"] = self.OnSubFailed700924
    }
end

function Quest7009:Start()
    print("Start")
end

function Quest7009:OnDestroy()
    print("OnDestroy")
end

function Quest7009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7009:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q700915FinishTrigger", 7009)
    this:ActorDestroy("Q7009DungeonKaiche", 7009)
    this:ActorDestroy("Q700909Transmit", 7009)
    this:ActorDestroy("Q700913Transmit", 7009)
    this:ActorDestroy("Q700921Transmit", 7009)
    this:ActorDestroy("Q700924CsTrigger", 7009)
end

function Quest7009:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest7009:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7009:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7009:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7009:OnSubStart700901(arg1)
    print("OnSubStart700901")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1333.id, 0, 700901, 45, true)
end

function Quest7009:OnSubFinish700901(arg1)
    print("OnSubFinish700901")
    this:NpcDestroyImmediately(1159, npcs.Npc1333.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataWithBlack, nil, nil, nil)
end

function Quest7009:OnSubStart700920(arg1)
    print("OnSubStart700920")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1332.id, 0, 700920, 10, true)
end

function Quest7009:OnSubFinish700920(arg1)
    print("OnSubFinish700920")
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
end

function Quest7009:OnSubStart700902(arg1)
    print("OnSubStart700902")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1332.id, 0, 700902, 40, true)
end

function Quest7009:OnSubFinish700902(arg1)
    print("OnSubFinish700902")
    this:NpcDestroyImmediately(1158, npcs.Npc1332.alias)
    this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2025, dungeonId = 1322, questId = 700902, questPointCfgId = 1}, datas.PlayerEnterDungeonData, nil, nil)
end

function Quest7009:OnSubStart700903(arg1)
    print("OnSubStart700903")
end

function Quest7009:OnSubFinish700903(arg1)
    print("OnSubFinish700903")
end

function Quest7009:OnSubStart700904(arg1)
    print("OnSubStart700904")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1332.id, 0, 700904, 30, true)
end

function Quest7009:OnSubFinish700904(arg1)
    print("OnSubFinish700904")
    this:NpcDestroyImmediately(20353, npcs.Npc1332.alias)
end

function Quest7009:OnSubFailed700904(arg1)
    print("OnSubFailed700904")
    this:RecycleAllRes()
end

function Quest7009:OnSubStart700905(arg1)
    print("OnSubStart700905")
end

function Quest7009:OnSubFinish700905(arg1)
    print("OnSubFinish700905")
end

function Quest7009:OnSubFailed700905(arg1)
    print("OnSubFailed700905")
    this:RecycleAllRes()
end

function Quest7009:OnSubStart700906(arg1)
    print("OnSubStart700906")
    this:LevelReadySafeCall(function(arg1)
        if sceneData.currSceneID == 20353 then
            this:PlayerEnterDungeonWithData(2031, 1333, 700906, 1, datas.PlayerEnterDungeonData, nil, nil)
        end
    end)
end

function Quest7009:OnSubFinish700906(arg1)
    print("OnSubFinish700906")
end

function Quest7009:OnSubStart700907(arg1)
    print("OnSubStart700907")
    this:DeployRangeStoryByQuest(110700902, 20363, {x = 694, y = 307, z = 360}, 600, 620)
end

function Quest7009:OnSubFinish700907(arg1)
    print("OnSubFinish700907")
end

function Quest7009:OnSubFailed700907(arg1)
    print("OnSubFailed700907")
    this:RecycleAllRes()
end

function Quest7009:OnSubStart700922(arg1)
    print("OnSubStart700922")
    this:DeployRangeStoryByQuest(110700902, 20363, {x = 694, y = 307, z = 360}, 600, 620)
    this:DeployRangeStoryByQuest(110700931, 20363, {x = 694, y = 307, z = 360}, 600, 620)
end

function Quest7009:OnSubFinish700922(arg1)
    print("OnSubFinish700922")
    this:CancelRangeStoryByQuest(110700902)
    this:CancelRangeStoryByQuest(110700931)
end

function Quest7009:OnSubFailed700922(arg1)
    print("OnSubFailed700922")
    this:RecycleAllRes()
    this:CancelRangeStoryByQuest(110700902)
    this:CancelRangeStoryByQuest(110700931)
end

function Quest7009:OnSubStart700908(arg1)
    print("OnSubStart700908")
    this:NpcCreateWithNpcTrigger(npcs.Npc17291.id, 0, 30, 700908)
end

function Quest7009:OnSubFinish700908(arg1)
    print("OnSubFinish700908")
    this:NpcDestroyImmediately(20363, npcs.Npc17291.alias)
end

function Quest7009:OnSubFailed700908(arg1)
    print("OnSubFailed700908")
    this:RecycleAllRes()
end

function Quest7009:OnSubStart700921(arg1)
    print("OnSubStart700921")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17291.id, 0, 700921, 30, true)
    actorMgr:CreateActorWithPos("Q700921Transmit", "Actor/Gadget/Q700921Transmit", 70900002, 0, points._Q700921TransmitPoint_.pos, points._Q700921TransmitPoint_.rot, true, false, 20363, nil, 0, 7009)
end

function Quest7009:OnSubFinish700921(arg1)
    print("OnSubFinish700921")
    this:NpcDestroyImmediately(20363, npcs.Npc17291.alias)
    this:ActorDestroy("Q700921Transmit", 7009)
end

function Quest7009:OnSubFailed700921(arg1)
    print("OnSubFailed700921")
    this:RecycleAllRes()
    this:RecycleAllRes()
end

function Quest7009:OnSubStart700909(arg1)
    print("OnSubStart700909")
end

function Quest7009:OnSubFinish700909(arg1)
    print("OnSubFinish700909")
    this:ActorDestroy("Q7009DungeonKaiche", 7009)
end

function Quest7009:OnSubFailed700909(arg1)
    print("OnSubFailed700909")
    this:RecycleAllRes()
    this:RecycleAllRes()
end

function Quest7009:OnSubStart700925(arg1)
    print("OnSubStart700925")
    this:NpcCreateWithNpcTrigger(npcs.Npc17256.id, 0, 8, 700925)
end

function Quest7009:OnSubFinish700925(arg1)
    print("OnSubFinish700925")
    this:NpcDestroyImmediately(20363, npcs.Npc17256.alias)
end

function Quest7009:OnSubStart700910(arg1)
    print("OnSubStart700910")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17291.id, 0, 700910, 15, true)
    actorMgr:CreateActorWithPos("Q700909Transmit", "Actor/Gadget/Q700909Transmit", 70900002, 0, points._Q700909TransmitPoint_.pos, points._Q700909TransmitPoint_.rot, true, false, 20363, nil, 0, 7009)
end

function Quest7009:OnSubFinish700910(arg1)
    print("OnSubFinish700910")
    this:NpcDestroyImmediately(20363, npcs.Npc17291.alias)
    this:ActorDestroy("Q700909Transmit", 7009)
end

function Quest7009:OnSubFailed700910(arg1)
    print("OnSubFailed700910")
    this:RecycleAllRes()
end

function Quest7009:OnSubStart700923(arg1)
    print("OnSubStart700923")
    this:DeployRangeStoryByQuest(110700940, 20363, {x = 466, y = 196, z = 591}, 200, 300)
    actorMgr:CreateActorWithPos("Q7009DungeonKaiche", "Actor/Gadget/Q7009DungeonKaiche", 70900002, 0, points._Q7009DungeonKaichePoint_.pos, points._Q7009DungeonKaichePoint_.rot, true, false, 20363, nil, 0, 7009)
end

function Quest7009:OnSubFinish700923(arg1)
    print("OnSubFinish700923")
    this:ActorDestroy("Q7009DungeonKaiche", 7009)
end

function Quest7009:OnSubStart700926(arg1)
    print("OnSubStart700926")
    this:DeployRangeStoryByQuest(110700940, 20363, {x = 466, y = 196, z = 591}, 200, 300)
end

function Quest7009:OnSubFinish700926(arg1)
    print("OnSubFinish700926")
end

function Quest7009:OnSubFailed700926(arg1)
    print("OnSubFailed700926")
    this:RecycleAllRes()
    this:CancelRangeStoryByQuest(110700940)
end

function Quest7009:OnSubStart700911(arg1)
    print("OnSubStart700911")
    this:NpcCreateWithNpcTrigger(npcs.Npc17286.id, 0, 45, 700911)
    this:DeployRangeStoryByQuest(110700940, 20363, {x = 466, y = 196, z = 591}, 200, 300)
end

function Quest7009:OnSubFinish700911(arg1)
    print("OnSubFinish700911")
    this:NpcDestroyImmediately(20363, npcs.Npc17286.alias)
    this:CancelRangeStoryByQuest(110700940)
end

function Quest7009:OnSubStart700912(arg1)
    print("OnSubStart700912")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1333.id, 0, 700912, 30, true)
end

function Quest7009:OnSubFinish700912(arg1)
    print("OnSubFinish700912")
    this:NpcDestroyImmediately(20363, npcs.Npc1333.alias)
end

function Quest7009:OnSubStart700919(arg1)
    print("OnSubStart700919")
    this:CreateQuestNpc(arg1, npcs.Npc1330.id, 0, false, 0)
end

function Quest7009:OnSubFinish700919(arg1)
    print("OnSubFinish700919")
    this:NpcDestroyImmediately(20363, npcs.Npc1330.alias)
end

function Quest7009:OnSubStart700913(arg1)
    print("OnSubStart700913")
    actorMgr:CreateActorWithPos("Q700913Transmit", "Actor/Gadget/Q700913Transmit", 70900002, 0, points._Q700913TransmitPoint_.pos, points._Q700913TransmitPoint_.rot, true, false, 20363, nil, 0, 7009)
end

function Quest7009:OnSubFinish700913(arg1)
    print("OnSubFinish700913")
    this:ActorDestroy("Q700913Transmit", 7009)
end

function Quest7009:OnSubStart700916(arg1)
    print("OnSubStart700916")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1332.id, 0, 700916, 10, true)
end

function Quest7009:OnSubFinish700916(arg1)
    print("OnSubFinish700916")
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
    this:TransmitPlayerWithQuestIdByData(700916, 1, datas.TransmitDataWithBlack, nil, nil, nil)
end

function Quest7009:OnSubStart700914(arg1)
    print("OnSubStart700914")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc16641.id, 0, 700914, 15, true)
end

function Quest7009:OnSubFinish700914(arg1)
    print("OnSubFinish700914")
    this:NpcDestroyImmediately(3, npcs.Npc16641.alias)
    this:TransmitPlayerByData(arg1, 1, datas.NoBlackDataNormal, nil, nil, nil)
end

function Quest7009:OnSubStart700915(arg1)
    print("OnSubStart700915")
    actorMgr:CreateActorWithPos("Q700915FinishTrigger", "Actor/Gadget/Q700915FinishTrigger", 70900002, 0, points._Q700915FinishTriggerPoint_.pos, points._Q700915FinishTriggerPoint_.rot, true, false, 3, nil, 0, 7009)
end

function Quest7009:OnSubFinish700915(arg1)
    print("OnSubFinish700915")
    this:QuestNarratorTask(datas.Q7009LastKaiche01, nil)
end

function Quest7009:OnSubStart700918(arg1)
    print("OnSubStart700918")
    this:DeployStoryByQuest(110700901)
end

function Quest7009:OnSubFinish700918(arg1)
    print("OnSubFinish700918")
end

function Quest7009:OnSubFailed700918(arg1)
    print("OnSubFailed700918")
    this:RecycleAllRes()
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest7009:OnSubStart700924(arg1)
    print("OnSubStart700924")
    this:DeployStoryByQuest(110700901)
    actorMgr:CreateActorWithPos("Q700924CsTrigger", "Actor/Gadget/Q700924CsTrigger", 70900002, 0, points._Q700924CsTriggerPoint_.pos, points._Q700924CsTriggerPoint_.rot, true, false, 3, nil, 0, 7009)
end

function Quest7009:OnSubFinish700924(arg1)
    print("OnSubFinish700924")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataWithBlack, nil, nil, nil)
    this:CancelStoryByQuest(110700901)
    this:ActorDestroy("Q700924CsTrigger", 7009)
end

function Quest7009:OnSubFailed700924(arg1)
    print("OnSubFailed700924")
    this:RecycleAllRes()
end

function Quest7009:OnSubStart700917(arg1)
    print("OnSubStart700917")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17289.id, 0, 700917, 30, true)
end

function Quest7009:OnSubFinish700917(arg1)
    print("OnSubFinish700917")
    this:NpcDestroyImmediately(3, npcs.Npc17289.alias)
end

return Quest7009
