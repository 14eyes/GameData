require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76147 = class("Quest76147", QuestActorProxy)
Quest76147.defaultAlias = "Quest76147"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76147:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76147:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7614701"] = self.OnSubStart7614701,
        ["7614702"] = self.OnSubStart7614702,
        ["7614731"] = self.OnSubStart7614731,
        ["7614703"] = self.OnSubStart7614703,
        ["7614704"] = self.OnSubStart7614704,
        ["7614705"] = self.OnSubStart7614705,
        ["7614706"] = self.OnSubStart7614706,
        ["7614707"] = self.OnSubStart7614707,
        ["7614708"] = self.OnSubStart7614708,
        ["7614709"] = self.OnSubStart7614709,
        ["7614711"] = self.OnSubStart7614711,
        ["7614712"] = self.OnSubStart7614712,
        ["7614733"] = self.OnSubStart7614733,
        ["7614713"] = self.OnSubStart7614713,
        ["7614714"] = self.OnSubStart7614714,
        ["7614715"] = self.OnSubStart7614715,
        ["7614716"] = self.OnSubStart7614716,
        ["7614717"] = self.OnSubStart7614717,
        ["7614739"] = self.OnSubStart7614739,
        ["7614718"] = self.OnSubStart7614718,
        ["7614719"] = self.OnSubStart7614719,
        ["7614721"] = self.OnSubStart7614721,
        ["7614720"] = self.OnSubStart7614720,
        ["7614722"] = self.OnSubStart7614722,
        ["7614740"] = self.OnSubStart7614740,
        ["7614723"] = self.OnSubStart7614723,
        ["7614710"] = self.OnSubStart7614710,
        ["7614724"] = self.OnSubStart7614724,
        ["7614725"] = self.OnSubStart7614725,
        ["7614726"] = self.OnSubStart7614726,
        ["7614732"] = self.OnSubStart7614732,
        ["7614727"] = self.OnSubStart7614727,
        ["7614728"] = self.OnSubStart7614728,
        ["7614735"] = self.OnSubStart7614735,
        ["7614729"] = self.OnSubStart7614729,
        ["7614734"] = self.OnSubStart7614734,
        ["7614730"] = self.OnSubStart7614730,
        ["7614736"] = self.OnSubStart7614736,
        ["7614738"] = self.OnSubStart7614738,
        ["7614737"] = self.OnSubStart7614737
    }
end

function Quest76147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7614701"] = self.OnSubFinish7614701,
        ["7614702"] = self.OnSubFinish7614702,
        ["7614731"] = self.OnSubFinish7614731,
        ["7614703"] = self.OnSubFinish7614703,
        ["7614704"] = self.OnSubFinish7614704,
        ["7614705"] = self.OnSubFinish7614705,
        ["7614706"] = self.OnSubFinish7614706,
        ["7614707"] = self.OnSubFinish7614707,
        ["7614708"] = self.OnSubFinish7614708,
        ["7614709"] = self.OnSubFinish7614709,
        ["7614711"] = self.OnSubFinish7614711,
        ["7614712"] = self.OnSubFinish7614712,
        ["7614733"] = self.OnSubFinish7614733,
        ["7614713"] = self.OnSubFinish7614713,
        ["7614714"] = self.OnSubFinish7614714,
        ["7614715"] = self.OnSubFinish7614715,
        ["7614716"] = self.OnSubFinish7614716,
        ["7614717"] = self.OnSubFinish7614717,
        ["7614739"] = self.OnSubFinish7614739,
        ["7614718"] = self.OnSubFinish7614718,
        ["7614719"] = self.OnSubFinish7614719,
        ["7614721"] = self.OnSubFinish7614721,
        ["7614720"] = self.OnSubFinish7614720,
        ["7614722"] = self.OnSubFinish7614722,
        ["7614740"] = self.OnSubFinish7614740,
        ["7614723"] = self.OnSubFinish7614723,
        ["7614710"] = self.OnSubFinish7614710,
        ["7614724"] = self.OnSubFinish7614724,
        ["7614725"] = self.OnSubFinish7614725,
        ["7614726"] = self.OnSubFinish7614726,
        ["7614732"] = self.OnSubFinish7614732,
        ["7614727"] = self.OnSubFinish7614727,
        ["7614728"] = self.OnSubFinish7614728,
        ["7614735"] = self.OnSubFinish7614735,
        ["7614729"] = self.OnSubFinish7614729,
        ["7614734"] = self.OnSubFinish7614734,
        ["7614730"] = self.OnSubFinish7614730,
        ["7614736"] = self.OnSubFinish7614736,
        ["7614738"] = self.OnSubFinish7614738,
        ["7614737"] = self.OnSubFinish7614737
    }
end

function Quest76147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7614718"] = self.OnSubFailed7614718,
        ["7614719"] = self.OnSubFailed7614719,
        ["7614721"] = self.OnSubFailed7614721,
        ["7614720"] = self.OnSubFailed7614720,
        ["7614722"] = self.OnSubFailed7614722,
        ["7614723"] = self.OnSubFailed7614723,
        ["7614710"] = self.OnSubFailed7614710,
        ["7614724"] = self.OnSubFailed7614724,
        ["7614725"] = self.OnSubFailed7614725,
        ["7614726"] = self.OnSubFailed7614726,
        ["7614732"] = self.OnSubFailed7614732,
        ["7614727"] = self.OnSubFailed7614727,
        ["7614728"] = self.OnSubFailed7614728,
        ["7614735"] = self.OnSubFailed7614735,
        ["7614729"] = self.OnSubFailed7614729,
        ["7614734"] = self.OnSubFailed7614734,
        ["7614730"] = self.OnSubFailed7614730
    }
end

function Quest76147:Start()
    print("Start")
end

function Quest76147:OnDestroy()
    print("OnDestroy")
end

function Quest76147:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76147:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76147:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76147:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7614701Trigger", nil)
    this:ActorDestroy("Q7614706Trigger", nil)
    this:ActorDestroy("Q7614709Trigger", nil)
    this:ActorDestroy("Q7614716Trigger", nil)
    this:ActorDestroy("Q7614718Trigger", nil)
    this:ActorDestroy("Q7614719Trigger", nil)
    this:ActorDestroy("Q7614724Trigger", nil)
    this:ActorDestroy("Q7614726Trigger", nil)
    this:ActorDestroy("Q7614725Trigger", nil)
    this:ActorDestroy("Q7614731Trigger", nil)
    this:ActorDestroy("Q7614712Trigger", nil)
end

function Quest76147:ActorDestroy(arg1, arg2)
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

function Quest76147:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76147:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76147:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76147:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76147:OnSubStart7614701(arg1)
    print("OnSubStart7614701")
    actorMgr:CreateActorWithPos("Q7614701Trigger", "Actor/Gadget/Q7614701Trigger", 70900002, 0, points._Q7614701TriggerPoint_.pos, points._Q7614701TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614701(arg1)
    print("OnSubFinish7614701")
    this:EnterSceneLookCamera({x = -141.977, y = 106.976, z = 891.568}, 0, 3, true, false)
    this:QuestNarratorTask(datas.NarratorWithId_76146, nil)
    this:SetNavigationByMainId(76147, true)
end

function Quest76147:OnSubStart7614702(arg1)
    print("OnSubStart7614702")
    this:CreateQuestNpc(arg1, npcs.Npc22309.id, 0, false, 0)
end

function Quest76147:OnSubFinish7614702(arg1)
    print("OnSubFinish7614702")
end

function Quest76147:OnSubStart7614731(arg1)
    print("OnSubStart7614731")
    this:CreateQuestNpc(arg1, npcs.Npc22309.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7614731Trigger", "Actor/Gadget/Q7614731Trigger", 70900002, 0, points.Q7614731Trigger.pos, points.Q7614731Trigger.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614731(arg1)
    print("OnSubFinish7614731")
end

function Quest76147:OnSubStart7614703(arg1)
    print("OnSubStart7614703")
    this:CreateQuestNpc(arg1, npcs.Npc22309.id, 0, false, 0)
end

function Quest76147:OnSubFinish7614703(arg1)
    print("OnSubFinish7614703")
    this:QuestNarratorTask(datas.NarratorWithId_7614703, nil)
end

function Quest76147:OnSubStart7614704(arg1)
    print("OnSubStart7614704")
    this:CreateQuestNpc(arg1, npcs.Npc22309.id, 0, false, 0)
end

function Quest76147:OnSubFinish7614704(arg1)
    print("OnSubFinish7614704")
    this:SafeDestroyQuestNpc(npcs.Npc22309.alias, 103)
end

function Quest76147:OnSubStart7614705(arg1)
    print("OnSubStart7614705")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7614705, 0, 20, 0, npcs.Npc22299.id)
    this:CreateQuestNpc(arg1, npcs.Npc22300.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22301.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22272.id, 0, false, 0)
end

function Quest76147:OnSubFinish7614705(arg1)
    print("OnSubFinish7614705")
    this:NpcDestroyWithDither(103, npcs.Npc22299.alias)
    this:NpcDestroyWithDither(103, npcs.Npc22300.alias)
    this:NpcDestroyWithDither(103, npcs.Npc22301.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
end

function Quest76147:OnSubStart7614706(arg1)
    print("OnSubStart7614706")
    actorMgr:CreateActorWithPos("Q7614706Trigger", "Actor/Gadget/Q7614706Trigger", 70900002, 0, points.Q7614706Trigger.pos, points.Q7614706Trigger.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614706(arg1)
    print("OnSubFinish7614706")
    this:EnterSceneLookCamera({x = -154.652, y = 86.765, z = 1067.634}, 1, 3, true, false)
    this:QuestNarratorTask(datas.NarratorWithId_7614706, nil)
end

function Quest76147:OnSubStart7614707(arg1)
    print("OnSubStart7614707")
end

function Quest76147:OnSubFinish7614707(arg1)
    print("OnSubFinish7614707")
end

function Quest76147:OnSubStart7614708(arg1)
    print("OnSubStart7614708")
end

function Quest76147:OnSubFinish7614708(arg1)
    print("OnSubFinish7614708")
end

function Quest76147:OnSubStart7614709(arg1)
    print("OnSubStart7614709")
    actorMgr:CreateActorWithPos("Q7614709Trigger", "Actor/Gadget/Q7614709Trigger", 70900002, 0, points._Q7614709TriggerPoint_.pos, points._Q7614709TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614709(arg1)
    print("OnSubFinish7614709")
    this:QuestNarratorTask(datas.NarratorWithId_7614709, nil)
end

function Quest76147:OnSubStart7614711(arg1)
    print("OnSubStart7614711")
end

function Quest76147:OnSubFinish7614711(arg1)
    print("OnSubFinish7614711")
end

function Quest76147:OnSubStart7614712(arg1)
    print("OnSubStart7614712")
end

function Quest76147:OnSubFinish7614712(arg1)
    print("OnSubFinish7614712")
end

function Quest76147:OnSubStart7614733(arg1)
    print("OnSubStart7614733")
    actorMgr:CreateActorWithPos("Q7614712Trigger", "Actor/Gadget/Q7614712Trigger", 70900002, 0, points._Q7614712TriggerPoint_.pos, points._Q7614712TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614733(arg1)
    print("OnSubFinish7614733")
end

function Quest76147:OnSubStart7614713(arg1)
    print("OnSubStart7614713")
end

function Quest76147:OnSubFinish7614713(arg1)
    print("OnSubFinish7614713")
end

function Quest76147:OnSubStart7614714(arg1)
    print("OnSubStart7614714")
end

function Quest76147:OnSubFinish7614714(arg1)
    print("OnSubFinish7614714")
end

function Quest76147:OnSubStart7614715(arg1)
    print("OnSubStart7614715")
end

function Quest76147:OnSubFinish7614715(arg1)
    print("OnSubFinish7614715")
end

function Quest76147:OnSubStart7614716(arg1)
    print("OnSubStart7614716")
    actorMgr:CreateActorWithPos("Q7614716Trigger", "Actor/Gadget/Q7614716Trigger", 70900002, 0, points._Q7614716TriggerPoint_.pos, points._Q7614716TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614716(arg1)
    print("OnSubFinish7614716")
end

function Quest76147:OnSubStart7614717(arg1)
    print("OnSubStart7614717")
end

function Quest76147:OnSubFinish7614717(arg1)
    print("OnSubFinish7614717")
end

function Quest76147:OnSubStart7614739(arg1)
    print("OnSubStart7614739")
end

function Quest76147:OnSubFinish7614739(arg1)
    print("OnSubFinish7614739")
end

function Quest76147:OnSubStart7614718(arg1)
    print("OnSubStart7614718")
    actorMgr:CreateActorWithPos("Q7614718Trigger", "Actor/Gadget/Q7614718Trigger", 70900002, 0, points._Q7614718TriggerPoint_.pos, points._Q7614718TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614718(arg1)
    print("OnSubFinish7614718")
end

function Quest76147:OnSubFailed7614718(arg1)
    print("OnSubFailed7614718")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(1, 2)
    end)
end

function Quest76147:OnSubStart7614719(arg1)
    print("OnSubStart7614719")
    actorMgr:CreateActorWithPos("Q7614719Trigger", "Actor/Gadget/Q7614719Trigger", 70900002, 0, points._Q7614719TriggerPoint_.pos, points._Q7614719TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614719(arg1)
    print("OnSubFinish7614719")
end

function Quest76147:OnSubFailed7614719(arg1)
    print("OnSubFailed7614719")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(1, 2)
    end)
end

function Quest76147:OnSubStart7614721(arg1)
    print("OnSubStart7614721")
end

function Quest76147:OnSubFinish7614721(arg1)
    print("OnSubFinish7614721")
end

function Quest76147:OnSubFailed7614721(arg1)
    print("OnSubFailed7614721")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(1, 2)
    end)
end

function Quest76147:OnSubStart7614720(arg1)
    print("OnSubStart7614720")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7614720, 0, 15, 0, npcs.Npc22272.id)
end

function Quest76147:OnSubFinish7614720(arg1)
    print("OnSubFinish7614720")
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
end

function Quest76147:OnSubFailed7614720(arg1)
    print("OnSubFailed7614720")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(1, 2)
    end)
end

function Quest76147:OnSubStart7614722(arg1)
    print("OnSubStart7614722")
end

function Quest76147:OnSubFinish7614722(arg1)
    print("OnSubFinish7614722")
    this:QuestNarratorTask(datas.NarratorWithId_7614722, nil)
end

function Quest76147:OnSubFailed7614722(arg1)
    print("OnSubFailed7614722")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(1, 2)
    end)
end

function Quest76147:OnSubStart7614740(arg1)
    print("OnSubStart7614740")
end

function Quest76147:OnSubFinish7614740(arg1)
    print("OnSubFinish7614740")
end

function Quest76147:OnSubStart7614723(arg1)
    print("OnSubStart7614723")
end

function Quest76147:OnSubFinish7614723(arg1)
    print("OnSubFinish7614723")
end

function Quest76147:OnSubFailed7614723(arg1)
    print("OnSubFailed7614723")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614710(arg1)
    print("OnSubStart7614710")
end

function Quest76147:OnSubFinish7614710(arg1)
    print("OnSubFinish7614710")
    this:QuestNarratorTask(datas.NarratorWithId_7614710, nil)
end

function Quest76147:OnSubFailed7614710(arg1)
    print("OnSubFailed7614710")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614724(arg1)
    print("OnSubStart7614724")
    actorMgr:CreateActorWithPos("Q7614724Trigger", "Actor/Gadget/Q7614724Trigger", 70900002, 0, points._Q7614724TriggerPoint_.pos, points._Q7614724TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614724(arg1)
    print("OnSubFinish7614724")
    this:QuestNarratorTask(datas.NarratorWithId_7614724, nil)
    this:EnterSceneLookCamera({x = -202.873, y = 109.593, z = 1223.864}, 0, 3, false, false)
end

function Quest76147:OnSubFailed7614724(arg1)
    print("OnSubFailed7614724")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614725(arg1)
    print("OnSubStart7614725")
    this:CreateQuestNpc(arg1, npcs.Npc22272.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7614725Trigger", "Actor/Gadget/Q7614725Trigger", 70900002, 0, points._Q7614725TriggerPoint_.pos, points._Q7614725TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614725(arg1)
    print("OnSubFinish7614725")
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
end

function Quest76147:OnSubFailed7614725(arg1)
    print("OnSubFailed7614725")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614726(arg1)
    print("OnSubStart7614726")
    actorMgr:CreateActorWithPos("Q7614726Trigger", "Actor/Gadget/Q7614726Trigger", 70900002, 0, points._Q7614726TriggerPoint_.pos, points._Q7614726TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76147:OnSubFinish7614726(arg1)
    print("OnSubFinish7614726")
end

function Quest76147:OnSubFailed7614726(arg1)
    print("OnSubFailed7614726")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614732(arg1)
    print("OnSubStart7614732")
    this:CreateQuestNpc(arg1, npcs.Npc22272.id, 0, false, 0)
    this:CreateQuestNpcWithTriggerBlackEx("Q7614726Trigger", 7614732, 22272, 22272, 30, 0.5, 1, 0.5, 2)
end

function Quest76147:OnSubFinish7614732(arg1)
    print("OnSubFinish7614732")
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
end

function Quest76147:OnSubFailed7614732(arg1)
    print("OnSubFailed7614732")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614727(arg1)
    print("OnSubStart7614727")
end

function Quest76147:OnSubFinish7614727(arg1)
    print("OnSubFinish7614727")
end

function Quest76147:OnSubFailed7614727(arg1)
    print("OnSubFailed7614727")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614728(arg1)
    print("OnSubStart7614728")
end

function Quest76147:OnSubFinish7614728(arg1)
    print("OnSubFinish7614728")
end

function Quest76147:OnSubFailed7614728(arg1)
    print("OnSubFailed7614728")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614735(arg1)
    print("OnSubStart7614735")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7614735, 0, 30, 0.5, npcs.Npc22272.id)
end

function Quest76147:OnSubFinish7614735(arg1)
    print("OnSubFinish7614735")
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
    this:QuestNarratorTask(datas.NarratorWithId_7614729, nil)
    this:SetNavigationByMainId(76147, true)
end

function Quest76147:OnSubFailed7614735(arg1)
    print("OnSubFailed7614735")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614729(arg1)
    print("OnSubStart7614729")
end

function Quest76147:OnSubFinish7614729(arg1)
    print("OnSubFinish7614729")
end

function Quest76147:OnSubFailed7614729(arg1)
    print("OnSubFailed7614729")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614734(arg1)
    print("OnSubStart7614734")
    actorUtils.FinishQuestID(false, 7614734)
end

function Quest76147:OnSubFinish7614734(arg1)
    print("OnSubFinish7614734")
end

function Quest76147:OnSubFailed7614734(arg1)
    print("OnSubFailed7614734")
    this:RecycleAllRes()
end

function Quest76147:OnSubStart7614730(arg1)
    print("OnSubStart7614730")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7614730, 0, 30, 0.5, npcs.Npc22272.id)
end

function Quest76147:OnSubFinish7614730(arg1)
    print("OnSubFinish7614730")
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
end

function Quest76147:OnSubFailed7614730(arg1)
    print("OnSubFailed7614730")
    this:RecycleAllRes()
    this:CallDelayByQuest("", 1, function(arg1)
        this:SetQuestVarByMainId(2, 2)
    end)
end

function Quest76147:OnSubStart7614736(arg1)
    print("OnSubStart7614736")
    this:NpcCreateWithNpcTrigger(npcs.Npc22306.id, 0, 10, 7614736)
    this:CreateQuestNpc(arg1, npcs.Npc22299.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22300.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22301.id, 0, false, 0)
end

function Quest76147:OnSubFinish7614736(arg1)
    print("OnSubFinish7614736")
    this:SafeDestroyQuestNpc(npcs.Npc22306.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22299.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22300.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22301.alias, 103)
end

function Quest76147:OnSubStart7614738(arg1)
    print("OnSubStart7614738")
end

function Quest76147:OnSubFinish7614738(arg1)
    print("OnSubFinish7614738")
end

function Quest76147:OnSubStart7614737(arg1)
    print("OnSubStart7614737")
end

function Quest76147:OnSubFinish7614737(arg1)
    print("OnSubFinish7614737")
end

return Quest76147
