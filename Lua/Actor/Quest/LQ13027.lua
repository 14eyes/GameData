require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13027 = class("Quest13027", QuestActorProxy)
Quest13027.defaultAlias = "Quest13027"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest13027:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest13027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1302701"] = self.OnSubStart1302701,
        ["1302717"] = self.OnSubStart1302717,
        ["1302702"] = self.OnSubStart1302702,
        ["1302703"] = self.OnSubStart1302703,
        ["1302720"] = self.OnSubStart1302720,
        ["1302721"] = self.OnSubStart1302721,
        ["1302704"] = self.OnSubStart1302704,
        ["1302718"] = self.OnSubStart1302718,
        ["1302705"] = self.OnSubStart1302705,
        ["1302719"] = self.OnSubStart1302719,
        ["1302706"] = self.OnSubStart1302706,
        ["1302707"] = self.OnSubStart1302707,
        ["1302722"] = self.OnSubStart1302722,
        ["1302708"] = self.OnSubStart1302708,
        ["1302709"] = self.OnSubStart1302709,
        ["1302710"] = self.OnSubStart1302710,
        ["1302711"] = self.OnSubStart1302711,
        ["1302712"] = self.OnSubStart1302712,
        ["1302713"] = self.OnSubStart1302713,
        ["1302714"] = self.OnSubStart1302714,
        ["1302715"] = self.OnSubStart1302715,
        ["1302716"] = self.OnSubStart1302716
    }
end

function Quest13027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1302701"] = self.OnSubFinish1302701,
        ["1302717"] = self.OnSubFinish1302717,
        ["1302702"] = self.OnSubFinish1302702,
        ["1302703"] = self.OnSubFinish1302703,
        ["1302720"] = self.OnSubFinish1302720,
        ["1302721"] = self.OnSubFinish1302721,
        ["1302704"] = self.OnSubFinish1302704,
        ["1302718"] = self.OnSubFinish1302718,
        ["1302705"] = self.OnSubFinish1302705,
        ["1302719"] = self.OnSubFinish1302719,
        ["1302706"] = self.OnSubFinish1302706,
        ["1302707"] = self.OnSubFinish1302707,
        ["1302722"] = self.OnSubFinish1302722,
        ["1302708"] = self.OnSubFinish1302708,
        ["1302709"] = self.OnSubFinish1302709,
        ["1302710"] = self.OnSubFinish1302710,
        ["1302711"] = self.OnSubFinish1302711,
        ["1302712"] = self.OnSubFinish1302712,
        ["1302713"] = self.OnSubFinish1302713,
        ["1302714"] = self.OnSubFinish1302714,
        ["1302715"] = self.OnSubFinish1302715,
        ["1302716"] = self.OnSubFinish1302716
    }
end

function Quest13027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1302719"] = self.OnSubFailed1302719,
        ["1302710"] = self.OnSubFailed1302710,
        ["1302711"] = self.OnSubFailed1302711,
        ["1302712"] = self.OnSubFailed1302712,
        ["1302713"] = self.OnSubFailed1302713,
        ["1302714"] = self.OnSubFailed1302714
    }
end

function Quest13027:Start()
    print("Start")
end

function Quest13027:OnDestroy()
    print("OnDestroy")
end

function Quest13027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13027:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13027:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest13027:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest13027:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest13027:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13027:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13027:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1.valueString == "DentroDragonStage2" then
        actor.ClearNarratorTask(actor)
        actor.CallDelay(actor, 4, function(arg1)
            actor:NarratorOnlyTaskByData(datas.NarratorWithIdBoss2, nil, 13027)
        end)
    else
        if arg1.valueString == "DentroDragonStage3" then
            actor.ClearNarratorTask(actor)
            actor.CallDelay(actor, 4, function(arg1)
                actor:NarratorOnlyTaskByData(datas.NarratorWithIdBoss3, nil, 13027)
            end)
        else
            if arg1.valueString == "DentroDragonStage1" then
                actor.ClearNarratorTask(actor)
                actor.CallDelay(actor, 6, function(arg1)
                    actor:NarratorOnlyTaskByData(datas.NarratorWithIdBoss1, nil, 13027)
                end)
            end
        end
    end
end

function Quest13027:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeLuaAccept")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 1302720)
    elseif arg1 == 2 then
        actor:FinishQuestID(false, 1302721)
    end
end

function Quest13027:OnSubStart1302701(arg1)
    print("OnSubStart1302701")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13166Data.id, 0)
    this:CreateQuestNpcWithTriggerBlack("Q1302701Trigger", 1302701, npcs.Npc1056Data.id, 0, 15, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13163Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13164Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13214Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13216Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13215Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13217Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13218Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13219Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13166Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
    end)
end

function Quest13027:OnSubFinish1302701(arg1)
    print("OnSubFinish1302701")
    this:NpcDestroyWithBlackscreen(6, npcs.Npc1056Data.alias)
end

function Quest13027:OnSubStart1302717(arg1)
    print("OnSubStart1302717")
    this:GetQuestNpcActor(npcs.Npc13166Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest13027:OnSubFinish1302717(arg1)
    print("OnSubFinish1302717")
    this:NarratorOnlyTaskByData(datas.NarratorWithIdRockFound)
end

function Quest13027:OnSubStart1302702(arg1)
    print("OnSubStart1302702")
end

function Quest13027:OnSubFinish1302702(arg1)
    print("OnSubFinish1302702")
end

function Quest13027:OnSubStart1302703(arg1)
    print("OnSubStart1302703")
    this:NpcCreateWithNpcTrigger(npcs.Npc13166Data.id, 1302703, 0, 20)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13166Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
end

function Quest13027:OnSubFinish1302703(arg1)
    print("OnSubFinish1302703")
    this:NpcDestroyWithBlackscreen(6, npcs.Npc13166Data.alias)
end

function Quest13027:OnSubStart1302720(arg1)
    print("OnSubStart1302720")
end

function Quest13027:OnSubFinish1302720(arg1)
    print("OnSubFinish1302720")
end

function Quest13027:OnSubStart1302721(arg1)
    print("OnSubStart1302721")
end

function Quest13027:OnSubFinish1302721(arg1)
    print("OnSubFinish1302721")
end

function Quest13027:OnSubStart1302704(arg1)
    print("OnSubStart1302704")
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13027TriggerDustAdded", "Actor/Gadget/Q13027TriggerDustAdded", 70900002, 0, points.TPos_Q13027TriggerDustAdded.pos, points.TPos_Q13027TriggerDustAdded.rot, true, false, 3)
end

function Quest13027:OnSubFinish1302704(arg1)
    print("OnSubFinish1302704")
    this:NpcDestroy(npcs.Npc1056Data.alias, 3)
end

function Quest13027:OnSubStart1302718(arg1)
    print("OnSubStart1302718")
    actorMgr:CreateActorWithPos("Q13027TriggerDust2", "Actor/Gadget/Q13027TriggerDust2", 70900002, 0, points.TPos_Q13027TriggerDust2.pos, points.TPos_Q13027TriggerDust2.rot, true, false, 3)
end

function Quest13027:OnSubFinish1302718(arg1)
    print("OnSubFinish1302718")
    this:NarratorOnlyTaskByData(datas.NarratorWithIdDust2)
end

function Quest13027:OnSubStart1302705(arg1)
    print("OnSubStart1302705")
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:CreateQuestNpcWithTriggerBlack("Q1302705Trigger", 1302705, npcs.Npc1056Data.id, 0, 35, 2)
end

function Quest13027:OnSubFinish1302705(arg1)
    print("OnSubFinish1302705")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

function Quest13027:OnSubStart1302719(arg1)
    print("OnSubStart1302719")
end

function Quest13027:OnSubFinish1302719(arg1)
    print("OnSubFinish1302719")
end

function Quest13027:OnSubFailed1302719(arg1)
    print("OnSubFailed1302719")
    this:ActorDestroy("Q13027TriggerDust2")
    this:ActorDestroy("Q1302705Trigger")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest13027:OnSubStart1302706(arg1)
    print("OnSubStart1302706")
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest13027:OnSubFinish1302706(arg1)
    print("OnSubFinish1302706")
end

function Quest13027:OnSubStart1302707(arg1)
    print("OnSubStart1302707")
    this:CreateQuestNpcWithTriggerBlack("Q1302707Trigger", 1302707, npcs.Npc1056Data.id, 0, 35, 2)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest13027:OnSubFinish1302707(arg1)
    print("OnSubFinish1302707")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

function Quest13027:OnSubStart1302722(arg1)
    print("OnSubStart1302722")
    actorMgr:CreateActorWithPos("Q13027TriggerDungeonMissingAdd", "Actor/Gadget/Q13027TriggerDungeonMissingAdd", 70900002, 0, points.TPos_Q13027TriggerDungeonMissingAdd.pos, points.TPos_Q13027TriggerDungeonMissingAdd.rot, true, false, 3)
end

function Quest13027:OnSubFinish1302722(arg1)
    print("OnSubFinish1302722")
end

function Quest13027:OnSubStart1302708(arg1)
    print("OnSubStart1302708")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1056Data.id, 1302708, 0, 15, 2)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:ActorDestroy("Q13027TriggerDungeonTalk1")
    this:ActorDestroy("Q13027TriggerDungeonTalk2")
    this:ActorDestroy("Q1302712Trigger")
    this:ActorDestroy("Q1302714Trigger")
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest13027:OnSubFinish1302708(arg1)
    print("OnSubFinish1302708")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

function Quest13027:OnSubStart1302709(arg1)
    print("OnSubStart1302709")
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(850, 1180, true, nil, 0)
    end)
end

function Quest13027:OnSubFinish1302709(arg1)
    print("OnSubFinish1302709")
end

function Quest13027:OnSubStart1302710(arg1)
    print("OnSubStart1302710")
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13027TriggerDungeonTalk1", "Actor/Gadget/Q13027TriggerDungeonTalk1", 70900002, 0, points.TPos_Q13027TriggerDungeonTalk1.pos, points.TPos_Q13027TriggerDungeonTalk1.rot, true, false, 20185)
    this:ActorDestroy("Q1302714Trigger")
end

function Quest13027:OnSubFinish1302710(arg1)
    print("OnSubFinish1302710")
    this:NpcDestroyWithBlackscreen(20185, npcs.Npc1056Data.alias)
end

function Quest13027:OnSubFailed1302710(arg1)
    print("OnSubFailed1302710")
end

function Quest13027:OnSubStart1302711(arg1)
    print("OnSubStart1302711")
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13027TriggerDungeonTalk2", "Actor/Gadget/Q13027TriggerDungeonTalk2", 70900002, 0, {x = 93.91, y = 10.271, z = 94.891}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20185)
    this:ActionSafeCall(function(arg1)
        arg1:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
    end)
end

function Quest13027:OnSubFinish1302711(arg1)
    print("OnSubFinish1302711")
end

function Quest13027:OnSubFailed1302711(arg1)
    print("OnSubFailed1302711")
    self:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest13027:OnSubStart1302712(arg1)
    print("OnSubStart1302712")
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:CreateQuestNpcWithTriggerBlack("Q1302712Trigger", 1302712, npcs.Npc1056Data.id, 0, 8, 2)
    self:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
end

function Quest13027:OnSubFinish1302712(arg1)
    print("OnSubFinish1302712")
    this:NpcDestroyWithBlackscreen(20185, npcs.Npc1056Data.alias)
    this:ActionSafeCall(function(arg1)
        arg1:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    end)
end

function Quest13027:OnSubFailed1302712(arg1)
    print("OnSubFailed1302712")
    self:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest13027:OnSubStart1302713(arg1)
    print("OnSubStart1302713")
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest13027:OnSubFinish1302713(arg1)
    print("OnSubFinish1302713")
end

function Quest13027:OnSubFailed1302713(arg1)
    print("OnSubFailed1302713")
    this:StopNarrator()
    this:ClearNarratorTask()
    this:CallDelay(6, function(arg1)
        this:StopNarrator()
        this:ClearNarratorTask()
    end)
end

function Quest13027:OnSubStart1302714(arg1)
    print("OnSubStart1302714")
    this:CreateQuestNpcWithTriggerBlack("Q1302714Trigger", 1302714, npcs.Npc1056Data.id, 0, 25, 2)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest13027:OnSubFinish1302714(arg1)
    print("OnSubFinish1302714")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 2)
    end)

    this:NpcDestroyWithBlackscreen(20185, npcs.Npc1056Data.alias)
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest13027:OnSubFailed1302714(arg1)
    print("OnSubFailed1302714")
end

function Quest13027:OnSubStart1302715(arg1)
    print("OnSubStart1302715")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1056Data.id, 1302715, 0, 20, 2)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest13027:OnSubFinish1302715(arg1)
    print("OnSubFinish1302715")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

function Quest13027:OnSubStart1302716(arg1)
    print("OnSubStart1302716")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13163Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13164Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest13027:OnSubFinish1302716(arg1)
    print("OnSubFinish1302716")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13163Data.alias)
    this:NpcDestroy(npcs.Npc13164Data.alias, 3)
    this:NpcDestroy(npcs.Npc13214Data.alias, 3)
    this:NpcDestroy(npcs.Npc13216Data.alias, 3)
    this:NpcDestroy(npcs.Npc13215Data.alias, 3)
    this:NpcDestroy(npcs.Npc13217Data.alias, 3)
    this:NpcDestroy(npcs.Npc13218Data.alias, 3)
    this:NpcDestroy(npcs.Npc13219Data.alias, 3)
end

return Quest13027
