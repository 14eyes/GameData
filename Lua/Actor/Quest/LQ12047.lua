require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12047 = class("Quest12047", QuestActorProxy)
Quest12047.defaultAlias = "Quest12047"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest12047:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest12047:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1204701"] = self.OnSubStart1204701,
        ["1204702"] = self.OnSubStart1204702,
        ["1204716"] = self.OnSubStart1204716,
        ["1204720"] = self.OnSubStart1204720,
        ["1204703"] = self.OnSubStart1204703,
        ["1204722"] = self.OnSubStart1204722,
        ["1204704"] = self.OnSubStart1204704,
        ["1204705"] = self.OnSubStart1204705,
        ["1204706"] = self.OnSubStart1204706,
        ["1204715"] = self.OnSubStart1204715,
        ["1204707"] = self.OnSubStart1204707,
        ["1204708"] = self.OnSubStart1204708,
        ["1204709"] = self.OnSubStart1204709,
        ["1204710"] = self.OnSubStart1204710,
        ["1204718"] = self.OnSubStart1204718,
        ["1204723"] = self.OnSubStart1204723,
        ["1204721"] = self.OnSubStart1204721,
        ["1204711"] = self.OnSubStart1204711,
        ["1204712"] = self.OnSubStart1204712,
        ["1204719"] = self.OnSubStart1204719,
        ["1204713"] = self.OnSubStart1204713,
        ["1204714"] = self.OnSubStart1204714,
        ["1204717"] = self.OnSubStart1204717
    }
end

function Quest12047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1204701"] = self.OnSubFinish1204701,
        ["1204702"] = self.OnSubFinish1204702,
        ["1204716"] = self.OnSubFinish1204716,
        ["1204720"] = self.OnSubFinish1204720,
        ["1204703"] = self.OnSubFinish1204703,
        ["1204722"] = self.OnSubFinish1204722,
        ["1204704"] = self.OnSubFinish1204704,
        ["1204705"] = self.OnSubFinish1204705,
        ["1204706"] = self.OnSubFinish1204706,
        ["1204715"] = self.OnSubFinish1204715,
        ["1204707"] = self.OnSubFinish1204707,
        ["1204708"] = self.OnSubFinish1204708,
        ["1204709"] = self.OnSubFinish1204709,
        ["1204710"] = self.OnSubFinish1204710,
        ["1204718"] = self.OnSubFinish1204718,
        ["1204723"] = self.OnSubFinish1204723,
        ["1204721"] = self.OnSubFinish1204721,
        ["1204711"] = self.OnSubFinish1204711,
        ["1204712"] = self.OnSubFinish1204712,
        ["1204719"] = self.OnSubFinish1204719,
        ["1204713"] = self.OnSubFinish1204713,
        ["1204714"] = self.OnSubFinish1204714,
        ["1204717"] = self.OnSubFinish1204717
    }
end

function Quest12047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1204716"] = self.OnSubFailed1204716,
        ["1204703"] = self.OnSubFailed1204703,
        ["1204722"] = self.OnSubFailed1204722,
        ["1204704"] = self.OnSubFailed1204704,
        ["1204705"] = self.OnSubFailed1204705,
        ["1204706"] = self.OnSubFailed1204706,
        ["1204715"] = self.OnSubFailed1204715,
        ["1204707"] = self.OnSubFailed1204707,
        ["1204708"] = self.OnSubFailed1204708,
        ["1204709"] = self.OnSubFailed1204709,
        ["1204710"] = self.OnSubFailed1204710,
        ["1204718"] = self.OnSubFailed1204718,
        ["1204723"] = self.OnSubFailed1204723,
        ["1204711"] = self.OnSubFailed1204711,
        ["1204719"] = self.OnSubFailed1204719
    }
end

function Quest12047:Start()
    print("Start")
end

function Quest12047:OnDestroy()
    print("OnDestroy")
end

function Quest12047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12047:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12047:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q1204713Trigger")
    this:ActorDestroy("Q1204708Trigger")
    this:ActorDestroy("Q1204709Trigger")
    this:ActorDestroy("Q1204702Trigger")
    this:ActorDestroy("Q1204723Tigger")
end

function Quest12047:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest12047:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest12047:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest12047:OnSubStart1204701(arg1)
    print("OnSubStart1204701")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204701, 0, 10, 1, npcs.Npc1097.id)
    this:CreateQuestNpc(arg1, npcs.Npc1034.id, 0, false, 0)
end

function Quest12047:OnSubFinish1204701(arg1)
    print("OnSubFinish1204701")
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
end

function Quest12047:OnSubStart1204702(arg1)
    print("OnSubStart1204702")
end

function Quest12047:OnSubFinish1204702(arg1)
    print("OnSubFinish1204702")
end

function Quest12047:OnSubStart1204716(arg1)
    print("OnSubStart1204716")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204716, 0, 20, 3, npcs.Npc1097.id)
end

function Quest12047:OnSubFinish1204716(arg1)
    print("OnSubFinish1204716")
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 20251)
end

function Quest12047:OnSubFailed1204716(arg1)
    print("OnSubFailed1204716")
    this:DestroyQuestNpcActor(npcs.Npc1097.alias, 20251)
    this:DestroyNpcTrigger("Q1204716N1097Trigger")
end

function Quest12047:OnSubStart1204720(arg1)
    print("OnSubStart1204720")
end

function Quest12047:OnSubFinish1204720(arg1)
    print("OnSubFinish1204720")
end

function Quest12047:OnSubStart1204703(arg1)
    print("OnSubStart1204703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204703, 0, 50, 2, npcs.Npc15036.id)
end

function Quest12047:OnSubFinish1204703(arg1)
    print("OnSubFinish1204703")
end

function Quest12047:OnSubFailed1204703(arg1)
    print("OnSubFailed1204703")
    this:DestroyQuestNpcActor(npcs.Npc15036.alias, 20251)
    this:DestroyNpcTrigger("Q1204703N15036Trigger")
end

function Quest12047:OnSubStart1204722(arg1)
    print("OnSubStart1204722")
end

function Quest12047:OnSubFinish1204722(arg1)
    print("OnSubFinish1204722")
end

function Quest12047:OnSubFailed1204722(arg1)
    print("OnSubFailed1204722")
    this:DestroyQuestNpcActor(npcs.Npc15036.alias, 20251)
end

function Quest12047:OnSubStart1204704(arg1)
    print("OnSubStart1204704")
    this:NpcCreateWithNpcTrigger(npcs.Npc15029.id, 0, 50, 1204704)
    this:CreateQuestNpc(arg1, npcs.Npc15036.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15036.alias, 12047):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest12047:OnSubFinish1204704(arg1)
    print("OnSubFinish1204704")
    this:SafeDestroyQuestNpc(npcs.Npc15036.alias, 20251)
end

function Quest12047:OnSubFailed1204704(arg1)
    print("OnSubFailed1204704")
    this:DestroyQuestNpcActor(npcs.Npc15036.alias, 20251)
    this:DestroyQuestNpcActor(npcs.Npc15029.alias, 20251)
    this:DestroyNpcTrigger("Q1204704N15029Trigger")
end

function Quest12047:OnSubStart1204705(arg1)
    print("OnSubStart1204705")
    this:CreateNpcWithCameraLookTrigger("tigger1204705talk", 1204705, npcs.Npc15029.id, 0, 10, 1204705, true)
end

function Quest12047:OnSubFinish1204705(arg1)
    print("OnSubFinish1204705")
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 20251)
end

function Quest12047:OnSubFailed1204705(arg1)
    print("OnSubFailed1204705")
    this:DestroyQuestNpcActor(npcs.Npc15029.alias, 20251)
    this:DestroyNpcTrigger("tigger1204705talk")
end

function Quest12047:OnSubStart1204706(arg1)
    print("OnSubStart1204706")
    this:CreateNpcWithCameraLookTrigger("tigger1204706talk", 1204706, npcs.Npc15029.id, 0, 15, 1204706, true)
end

function Quest12047:OnSubFinish1204706(arg1)
    print("OnSubFinish1204706")
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 20251)
end

function Quest12047:OnSubFailed1204706(arg1)
    print("OnSubFailed1204706")
    this:DestroyQuestNpcActor(npcs.Npc15029.alias, 20251)
    this:DestroyNpcTrigger("tigger1204706talk")
end

function Quest12047:OnSubStart1204715(arg1)
    print("OnSubStart1204715")
    this:CreateNpcWithCameraLookTrigger("tigger1204715talk", 1204715, npcs.Npc15029.id, 0, 10, 1204715, true)
end

function Quest12047:OnSubFinish1204715(arg1)
    print("OnSubFinish1204715")
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 20251)
end

function Quest12047:OnSubFailed1204715(arg1)
    print("OnSubFailed1204715")
    this:DestroyQuestNpcActor(npcs.Npc15029.alias, 20251)
    this:DestroyNpcTrigger("tigger1204715talk")
end

function Quest12047:OnSubStart1204707(arg1)
    print("OnSubStart1204707")
    this:CreateQuestNpc(arg1, npcs.Npc15115.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15040.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204707, 0, 20, 1, npcs.Npc15029.id)
end

function Quest12047:OnSubFinish1204707(arg1)
    print("OnSubFinish1204707")
    this:SafeDestroyQuestNpc(npcs.Npc15115.alias, 20251)
    this:SafeDestroyQuestNpc(npcs.Npc15040.alias, 20251)
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 20251)
end

function Quest12047:OnSubFailed1204707(arg1)
    print("OnSubFailed1204707")
    this:DestroyQuestNpcActor(npcs.Npc15115.alias, 20251)
    this:DestroyQuestNpcActor(npcs.Npc15040.alias, 20251)
    this:DestroyQuestNpcActor(npcs.Npc15029.alias, 20251)
    this:DestroyNpcTrigger("Q1204707N15029Trigger")
end

function Quest12047:OnSubStart1204708(arg1)
    print("OnSubStart1204708")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20251 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData01, nil, nil, nil)
            end
        end)

        this:NpcCreateWithNpcTriggerAndBlackscreen(1204708, 0, 7, 2, npcs.Npc1097.id)
    end)
end

function Quest12047:OnSubFinish1204708(arg1)
    print("OnSubFinish1204708")
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 20251)
end

function Quest12047:OnSubFailed1204708(arg1)
    print("OnSubFailed1204708")
    this:DestroyQuestNpcActor(npcs.Npc1097.alias, 3)
    this:DestroyNpcTrigger("Q1204708N1097Trigger")
end

function Quest12047:OnSubStart1204709(arg1)
    print("OnSubStart1204709")
    this:CreateQuestNpc(arg1, npcs.Npc15019.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15250.id, 0, false, 0)
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 20251 then
                actorMgr:CreateActorWithPos("Q1204709Trigger", "Actor/Gadget/Q1204709Trigger", 70900002, 0, points._Q1204709TriggerPoint_.pos, points._Q1204709TriggerPoint_.rot, true, false, 20251)
            end
        end)
    end)
end

function Quest12047:OnSubFinish1204709(arg1)
    print("OnSubFinish1204709")
    this:SafeDestroyQuestNpc(npcs.Npc15019.alias, 20251)
    this:SafeDestroyQuestNpc(npcs.Npc15250.alias, 20251)
    this:ActorDestroy("Q1204709Trigger")
end

function Quest12047:OnSubFailed1204709(arg1)
    print("OnSubFailed1204709")
    this:DestroyQuestNpcActor(npcs.Npc15019.alias, 20251)
    this:ActorDestroy("Q1204709Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15250.alias, 20251)
end

function Quest12047:OnSubStart1204710(arg1)
    print("OnSubStart1204710")
    this:CreateQuestNpc(arg1, npcs.Npc15020.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15251.id, 0, false, 0)
end

function Quest12047:OnSubFinish1204710(arg1)
    print("OnSubFinish1204710")
    this:SafeDestroyQuestNpc(npcs.Npc15020.alias, 20251)
    this:SafeDestroyQuestNpc(npcs.Npc15251.alias, 20251)
end

function Quest12047:OnSubFailed1204710(arg1)
    print("OnSubFailed1204710")
    this:DestroyQuestNpcActor(npcs.Npc15020.alias, 20251)
    this:DestroyQuestNpcActor(npcs.Npc15251.alias, 20251)
end

function Quest12047:OnSubStart1204718(arg1)
    print("OnSubStart1204718")
    this:NpcCreateWithNpcTrigger(npcs.Npc15029.id, 0, 6, 1204718)
end

function Quest12047:OnSubFinish1204718(arg1)
    print("OnSubFinish1204718")
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 20251)
end

function Quest12047:OnSubFailed1204718(arg1)
    print("OnSubFailed1204718")
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 20251)
    this:DestroyNpcTrigger("Q1204718N15029Trigger")
end

function Quest12047:OnSubStart1204723(arg1)
    print("OnSubStart1204723")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20251 then
                this:TransmitPlayerByData(arg1, 3, datas.TransmitData01, nil, nil, nil)
            end
        end)

        actorMgr:CreateActorWithPos("Q1204723Tigger", "Actor/Gadget/Q1204723Tigger", 70900002, 0, points._Q1204723TiggerPoint_.pos, points._Q1204723TiggerPoint_.rot, true, false, 20251)
    end)
end

function Quest12047:OnSubFinish1204723(arg1)
    print("OnSubFinish1204723")
    this:ActorDestroy("Q1204723Tigger")
end

function Quest12047:OnSubFailed1204723(arg1)
    print("OnSubFailed1204723")
    this:ActorDestroy("Q1204723Tigger")
end

function Quest12047:OnSubStart1204721(arg1)
    print("OnSubStart1204721")
end

function Quest12047:OnSubFinish1204721(arg1)
    print("OnSubFinish1204721")
end

function Quest12047:OnSubStart1204711(arg1)
    print("OnSubStart1204711")
    this:NpcCreateWithNpcTrigger(npcs.Npc15029.id, 0, 50, 1204711)
end

function Quest12047:OnSubFinish1204711(arg1)
    print("OnSubFinish1204711")
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 20251)
end

function Quest12047:OnSubFailed1204711(arg1)
    print("OnSubFailed1204711")
    this:DestroyQuestNpcActor(npcs.Npc15029.alias, 20251)
    this:DestroyNpcTrigger("Q1204711N15029Trigger")
end

function Quest12047:OnSubStart1204712(arg1)
    print("OnSubStart1204712")
end

function Quest12047:OnSubFinish1204712(arg1)
    print("OnSubFinish1204712")
end

function Quest12047:OnSubStart1204719(arg1)
    print("OnSubStart1204719")
    this:NpcCreateWithNpcTrigger(npcs.Npc15029.id, 0, 50, 1204719)
end

function Quest12047:OnSubFinish1204719(arg1)
    print("OnSubFinish1204719")
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 20251)
    this:TransmitPlayerByData(arg1, 4, datas.TransmitData01, nil, nil, nil)
end

function Quest12047:OnSubFailed1204719(arg1)
    print("OnSubFailed1204719")
    this:DestroyQuestNpcActor(npcs.Npc15029.script, 20251)
    this:DestroyNpcTrigger("Q1204719N15029Trigger")
end

function Quest12047:OnSubStart1204713(arg1)
    print("OnSubStart1204713")
    actorMgr:CreateActorWithPos("Q1204713Trigger", "Actor/Gadget/Q1204713Trigger", 70900002, 0, points._Q1204713TriggerPoint_.pos, points._Q1204713TriggerPoint_.rot, true, false, 3)
end

function Quest12047:OnSubFinish1204713(arg1)
    print("OnSubFinish1204713")
end

function Quest12047:OnSubStart1204714(arg1)
    print("OnSubStart1204714")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204714, 0, 40, 1, npcs.Npc1097.id)
end

function Quest12047:OnSubFinish1204714(arg1)
    print("OnSubFinish1204714")
end

function Quest12047:OnSubStart1204717(arg1)
    print("OnSubStart1204717")
    this:CreateQuestNpc(arg1, npcs.Npc15248.id, 0, false, 0)
    this:LevelReadySafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1097.alias, 12047):SitOnChair(8069, true)
        this:GetQuestNpcActor(npcs.Npc1097.alias, 12047):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1097.alias, 12047):LookAt({x = -2573.206, y = 297.458, z = -4202.393})
    end)
end

function Quest12047:OnSubFinish1204717(arg1)
    print("OnSubFinish1204717")
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15248.alias, 3)
end

return Quest12047
