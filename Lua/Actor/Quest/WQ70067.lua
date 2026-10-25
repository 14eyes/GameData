require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70067 = class("Quest70067", QuestActorProxy)
Quest70067.defaultAlias = "Quest70067"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70067:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70067:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7006701"] = self.OnSubStart7006701,
        ["7006702"] = self.OnSubStart7006702,
        ["7006724"] = self.OnSubStart7006724,
        ["7006703"] = self.OnSubStart7006703,
        ["7006704"] = self.OnSubStart7006704,
        ["7006706"] = self.OnSubStart7006706,
        ["7006707"] = self.OnSubStart7006707,
        ["7006730"] = self.OnSubStart7006730,
        ["7006731"] = self.OnSubStart7006731,
        ["7006732"] = self.OnSubStart7006732,
        ["7006733"] = self.OnSubStart7006733,
        ["7006734"] = self.OnSubStart7006734,
        ["7006725"] = self.OnSubStart7006725,
        ["7006727"] = self.OnSubStart7006727,
        ["7006735"] = self.OnSubStart7006735,
        ["7006736"] = self.OnSubStart7006736,
        ["7006729"] = self.OnSubStart7006729,
        ["7006737"] = self.OnSubStart7006737,
        ["7006739"] = self.OnSubStart7006739,
        ["7006716"] = self.OnSubStart7006716,
        ["7006717"] = self.OnSubStart7006717,
        ["7006718"] = self.OnSubStart7006718,
        ["7006719"] = self.OnSubStart7006719,
        ["7006720"] = self.OnSubStart7006720,
        ["7006722"] = self.OnSubStart7006722,
        ["7006728"] = self.OnSubStart7006728,
        ["7006721"] = self.OnSubStart7006721,
        ["7006738"] = self.OnSubStart7006738,
        ["7006705"] = self.OnSubStart7006705,
        ["7006723"] = self.OnSubStart7006723,
        ["7006708"] = self.OnSubStart7006708,
        ["7006709"] = self.OnSubStart7006709,
        ["7006711"] = self.OnSubStart7006711,
        ["7006710"] = self.OnSubStart7006710,
        ["7006713"] = self.OnSubStart7006713,
        ["7006712"] = self.OnSubStart7006712,
        ["7006714"] = self.OnSubStart7006714,
        ["7006715"] = self.OnSubStart7006715,
        ["7006726"] = self.OnSubStart7006726
    }
end

function Quest70067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7006701"] = self.OnSubFinish7006701,
        ["7006702"] = self.OnSubFinish7006702,
        ["7006724"] = self.OnSubFinish7006724,
        ["7006703"] = self.OnSubFinish7006703,
        ["7006704"] = self.OnSubFinish7006704,
        ["7006706"] = self.OnSubFinish7006706,
        ["7006707"] = self.OnSubFinish7006707,
        ["7006730"] = self.OnSubFinish7006730,
        ["7006731"] = self.OnSubFinish7006731,
        ["7006732"] = self.OnSubFinish7006732,
        ["7006733"] = self.OnSubFinish7006733,
        ["7006734"] = self.OnSubFinish7006734,
        ["7006725"] = self.OnSubFinish7006725,
        ["7006727"] = self.OnSubFinish7006727,
        ["7006735"] = self.OnSubFinish7006735,
        ["7006736"] = self.OnSubFinish7006736,
        ["7006729"] = self.OnSubFinish7006729,
        ["7006737"] = self.OnSubFinish7006737,
        ["7006739"] = self.OnSubFinish7006739,
        ["7006716"] = self.OnSubFinish7006716,
        ["7006717"] = self.OnSubFinish7006717,
        ["7006718"] = self.OnSubFinish7006718,
        ["7006719"] = self.OnSubFinish7006719,
        ["7006720"] = self.OnSubFinish7006720,
        ["7006722"] = self.OnSubFinish7006722,
        ["7006728"] = self.OnSubFinish7006728,
        ["7006721"] = self.OnSubFinish7006721,
        ["7006738"] = self.OnSubFinish7006738,
        ["7006705"] = self.OnSubFinish7006705,
        ["7006723"] = self.OnSubFinish7006723,
        ["7006708"] = self.OnSubFinish7006708,
        ["7006709"] = self.OnSubFinish7006709,
        ["7006711"] = self.OnSubFinish7006711,
        ["7006710"] = self.OnSubFinish7006710,
        ["7006713"] = self.OnSubFinish7006713,
        ["7006712"] = self.OnSubFinish7006712,
        ["7006714"] = self.OnSubFinish7006714,
        ["7006715"] = self.OnSubFinish7006715,
        ["7006726"] = self.OnSubFinish7006726
    }
end

function Quest70067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7006718"] = self.OnSubFailed7006718,
        ["7006719"] = self.OnSubFailed7006719,
        ["7006720"] = self.OnSubFailed7006720,
        ["7006722"] = self.OnSubFailed7006722,
        ["7006738"] = self.OnSubFailed7006738
    }
end

function Quest70067:Start()
    print("Start")
end

function Quest70067:OnDestroy()
    print("OnDestroy")
end

function Quest70067:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70067:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70067:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70067:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7006701Trigger", nil)
    this:ActorDestroy("Q7006702Trigger", nil)
    this:ActorDestroy("Q7006716Trigger", nil)
    this:ActorDestroy("Q7006718Trigger", nil)
    this:ActorDestroy("Q7006718Trigger_1", 70067)
    this:ActorDestroy("Q7006717Trigger", 70067)
    this:ActorDestroy("Q7006719Trigger", nil)
    this:ActorDestroy("Q7006722Trigger", 70067)
    this:ActorDestroy("Q7006724Trigger", nil)
    this:ActorDestroy("Q7006712Trigger", 70067)
    this:ActorDestroy("Q7006728Trigger", nil)
    this:ActorDestroy("Q7007601Trigger", 70076)
    this:ActorDestroy("Q7006804Trigger", nil)
    this:ActorDestroy("Q7007602Trigger", 70076)
    this:ActorDestroy("Q7006737Trigger", 70067)
end

function Quest70067:ActorDestroy(arg1, arg2)
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

function Quest70067:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70067:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest70067:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70067:OnSubStart7006701(arg1)
    print("OnSubStart7006701")
    actorMgr:CreateActorWithPos("Q7006701Trigger", "Actor/Gadget/Q7006701Trigger", 70900002, 0, points._Q7006701TriggerPoint_.pos, points._Q7006701TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70067:OnSubFinish7006701(arg1)
    print("OnSubFinish7006701")
    this:SetNavigationByMainId(70067, true)
end

function Quest70067:OnSubStart7006702(arg1)
    print("OnSubStart7006702")
    actorMgr:CreateActorWithPos("Q7006702Trigger", "Actor/Gadget/Q7006702Trigger", 70900002, 0, points._Q7006702TriggerPoint_.pos, points._Q7006702TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70067:OnSubFinish7006702(arg1)
    print("OnSubFinish7006702")
end

function Quest70067:OnSubStart7006724(arg1)
    print("OnSubStart7006724")
end

function Quest70067:OnSubFinish7006724(arg1)
    print("OnSubFinish7006724")
end

function Quest70067:OnSubStart7006703(arg1)
    print("OnSubStart7006703")
    this:CreateQuestNpc(arg1, npcs.Npc22294.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22294.alias, 70067):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest70067:OnSubFinish7006703(arg1)
    print("OnSubFinish7006703")
end

function Quest70067:OnSubStart7006704(arg1)
    print("OnSubStart7006704")
    this:CreateQuestNpc(arg1, npcs.Npc22294.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22294.alias, 70067):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest70067:OnSubFinish7006704(arg1)
    print("OnSubFinish7006704")
end

function Quest70067:OnSubStart7006706(arg1)
    print("OnSubStart7006706")
end

function Quest70067:OnSubFinish7006706(arg1)
    print("OnSubFinish7006706")
end

function Quest70067:OnSubStart7006707(arg1)
    print("OnSubStart7006707")
    this:TransmitPlayerByQuestId(7006707, 3, nil, nil, nil)
    this:NpcCreateWithNpcTrigger(npcs.Npc22294.id, 0, 35, 7006707)
end

function Quest70067:OnSubFinish7006707(arg1)
    print("OnSubFinish7006707")
    this:NpcDestroyWithDither(103, npcs.Npc22294.alias)
end

function Quest70067:OnSubStart7006730(arg1)
    print("OnSubStart7006730")
end

function Quest70067:OnSubFinish7006730(arg1)
    print("OnSubFinish7006730")
end

function Quest70067:OnSubStart7006731(arg1)
    print("OnSubStart7006731")
    this:CreateQuestNpc(arg1, npcs.Npc22295.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22295.alias, 70067):DoFreeStyle(4290, true, nil, true, true, false, false)
end

function Quest70067:OnSubFinish7006731(arg1)
    print("OnSubFinish7006731")
    this:TransmitPlayerByQuestId(7006731, 9, nil, nil, nil)
end

function Quest70067:OnSubStart7006732(arg1)
    print("OnSubStart7006732")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc22295.id, 0, 10, 7006732)
    end)
end

function Quest70067:OnSubFinish7006732(arg1)
    print("OnSubFinish7006732")
end

function Quest70067:OnSubStart7006733(arg1)
    print("OnSubStart7006733")
    this:CreateQuestNpc(arg1, npcs.Npc22295.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7006804Trigger", "Actor/Gadget/Q7006804Trigger", 70900002, 0, points._Q7006804TriggerPoint_.pos, points._Q7006804TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    this:GetQuestNpcActor(npcs.Npc22295.alias, 70067):RunToTask({x = 846.748, y = 192.56, z = 354.575}, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7006804, nil)
        this:GetQuestNpcActor(npcs.Npc22295.alias, 70067):RunToTask({x = 837.731, y = 192.165, z = 355.713}, nil, nil, nil)
    end, nil, nil)
end

function Quest70067:OnSubFinish7006733(arg1)
    print("OnSubFinish7006733")
    this:SafeDestroyQuestNpc(npcs.Npc22295.alias, 103)
    this:ActorDestroy("Q7006804Trigger", nil)
end

function Quest70067:OnSubStart7006734(arg1)
    print("OnSubStart7006734")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7006734, 0, 15, 1, npcs.Npc22498.id)
end

function Quest70067:OnSubFinish7006734(arg1)
    print("OnSubFinish7006734")
    this:SafeDestroyQuestNpc(npcs.Npc22498.alias, 103)
end

function Quest70067:OnSubStart7006725(arg1)
    print("OnSubStart7006725")
end

function Quest70067:OnSubFinish7006725(arg1)
    print("OnSubFinish7006725")
    this:SetNavigationByMainId(70067, true)
end

function Quest70067:OnSubStart7006727(arg1)
    print("OnSubStart7006727")
    this:CreateQuestNpc(arg1, npcs.Npc22296.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22296.alias, 70067):DoFreeStyle(4190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7006712Trigger", "Actor/Gadget/Q7006712Trigger", 70900002, 0, points._Q7006712TriggerPoint_.pos, points._Q7006712TriggerPoint_.rot, true, false, 103, nil, 0, 70067)
end

function Quest70067:OnSubFinish7006727(arg1)
    print("OnSubFinish7006727")
    this:TransmitPlayerByQuestId(7006727, 4, nil, nil, nil)
end

function Quest70067:OnSubStart7006735(arg1)
    print("OnSubStart7006735")
    this:CreateQuestNpc(arg1, npcs.Npc22296.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22296.alias, 70067):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest70067:OnSubFinish7006735(arg1)
    print("OnSubFinish7006735")
    this:SafeDestroyQuestNpc(npcs.Npc22296.alias, 103)
end

function Quest70067:OnSubStart7006736(arg1)
    print("OnSubStart7006736")
    this:TransmitPlayerByQuestId(7006736, 7, nil, nil, nil)
    this:NpcCreateWithNpcTrigger(npcs.Npc22296.id, 0, 10, 7006736)
end

function Quest70067:OnSubFinish7006736(arg1)
    print("OnSubFinish7006736")
    this:NpcDestroyWithDither(103, npcs.Npc22296.alias)
    this:SetNavigationByMainId(70067, true)
end

function Quest70067:OnSubStart7006729(arg1)
    print("OnSubStart7006729")
    actorMgr:CreateActorWithPos("Q7007601Trigger", "Actor/Gadget/Q7007601Trigger", 70900002, 0, points._Q7007601TriggerPoint_.pos, points._Q7007601TriggerPoint_.rot, true, false, 103, nil, 0, 70076)
end

function Quest70067:OnSubFinish7006729(arg1)
    print("OnSubFinish7006729")
end

function Quest70067:OnSubStart7006737(arg1)
    print("OnSubStart7006737")
    actorMgr:CreateActorWithPos("Q7006737Trigger", "Actor/Gadget/Q7006737Trigger", 70900002, 0, points._Q7006737TriggerPoint_.pos, points._Q7006737TriggerPoint_.rot, true, false, 103, nil, 0, 70067)
end

function Quest70067:OnSubFinish7006737(arg1)
    print("OnSubFinish7006737")
    this:SetNavigationByMainId(70067, true)
end

function Quest70067:OnSubStart7006739(arg1)
    print("OnSubStart7006739")
end

function Quest70067:OnSubFinish7006739(arg1)
    print("OnSubFinish7006739")
end

function Quest70067:OnSubStart7006716(arg1)
    print("OnSubStart7006716")
    actorMgr:CreateActorWithPos("Q7006716Trigger", "Actor/Gadget/Q7006716Trigger", 70900002, 0, points._Q7006716TriggerPoint_.pos, points._Q7006716TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    actorUtils.SetMainPageFeatureDisable(70067, "MiniMap", false)
end

function Quest70067:OnSubFinish7006716(arg1)
    print("OnSubFinish7006716")
end

function Quest70067:OnSubStart7006717(arg1)
    print("OnSubStart7006717")
    this:PlayCutsceneIndex(7006717, function(arg1)
        this:PlayerEnterDungeonWithData(22, 1330, 7006717, 1, datas.TransmitData7006717, nil, nil)
        actorMgr:CreateActorWithPos("Q7006717Trigger", "Actor/Gadget/Q7006717Trigger", 70900002, 0, points._Q7006717TriggerPoint_.pos, points._Q7006717TriggerPoint_.rot, true, false, 103, nil, 0, 70067)
    end, nil, nil, false)
end

function Quest70067:OnSubFinish7006717(arg1)
    print("OnSubFinish7006717")
    this:ActorDestroy("Q7006717Trigger", 70067)
end

function Quest70067:OnSubStart7006718(arg1)
    print("OnSubStart7006718")
    actorMgr:CreateActorWithPos("Q7006718Trigger", "Actor/Gadget/Q7006718Trigger", 70900002, 0, points._Q7006718TriggerPoint_.pos, points._Q7006718TriggerPoint_.rot, true, false, 20361, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7006718Trigger_1", "Actor/Gadget/Q7006718Trigger_1", 70900002, 0, points._Q7006718Trigger_1Point_.pos, points._Q7006718Trigger_1Point_.rot, true, false, 20361, nil, 0, 70067)
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.SetMainPageFeatureDisable(70067, "MiniMap", false)
        actorUtils.SetMainPageFeatureDisable(70067, "MiniMap", true)
    end)
end

function Quest70067:OnSubFinish7006718(arg1)
    print("OnSubFinish7006718")
    this:ActorDestroy("Q7006718Trigger", nil)
end

function Quest70067:OnSubFailed7006718(arg1)
    print("OnSubFailed7006718")
    this:RecycleAllRes()
end

function Quest70067:OnSubStart7006719(arg1)
    print("OnSubStart7006719")
    this:TransmitPlayerByQuestId(7006719, 8, nil, nil, nil)
    actorMgr:CreateActorWithPos("Q7006719Trigger", "Actor/Gadget/Q7006719Trigger", 70900002, 0, points._Q7006719TriggerPoint_.pos, points._Q7006719TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    actorUtils.SetMainPageFeatureDisable(70067, "MiniMap", true)
end

function Quest70067:OnSubFinish7006719(arg1)
    print("OnSubFinish7006719")
end

function Quest70067:OnSubFailed7006719(arg1)
    print("OnSubFailed7006719")
    this:RecycleAllRes()
end

function Quest70067:OnSubStart7006720(arg1)
    print("OnSubStart7006720")
end

function Quest70067:OnSubFinish7006720(arg1)
    print("OnSubFinish7006720")
    actorUtils.SetMainPageFeatureDisable(70067, "MiniMap", false)
end

function Quest70067:OnSubFailed7006720(arg1)
    print("OnSubFailed7006720")
    this:RecycleAllRes()
end

function Quest70067:OnSubStart7006722(arg1)
    print("OnSubStart7006722")
    actorMgr:CreateActorWithPos("Q7006722Trigger", "Actor/Gadget/Q7006722Trigger", 70900002, 0, points._Q7006722TriggerPoint_.pos, points._Q7006722TriggerPoint_.rot, true, false, 20361, nil, 0, 70067)
end

function Quest70067:OnSubFinish7006722(arg1)
    print("OnSubFinish7006722")
end

function Quest70067:OnSubFailed7006722(arg1)
    print("OnSubFailed7006722")
    this:RecycleAllRes()
end

function Quest70067:OnSubStart7006728(arg1)
    print("OnSubStart7006728")
    this:NpcCreateWithNpcTrigger(npcs.Npc22272.id, 0, 10, 7006728)
    this:CreateQuestNpc(arg1, npcs.Npc22294.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22295.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22296.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7006728Trigger", "Actor/Gadget/Q7006728Trigger", 70900002, 0, points._Q7006728TriggerPoint_.pos, points._Q7006728TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:TransmitPlayerByQuestId(7006728, 2, nil, nil, nil)
end

function Quest70067:OnSubFinish7006728(arg1)
    print("OnSubFinish7006728")
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22294.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22295.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22296.alias, 103)
end

function Quest70067:OnSubStart7006721(arg1)
    print("OnSubStart7006721")
    this:NpcCreateWithNpcTrigger(npcs.Npc22306.id, 0, 20, 7006721)
    this:GetQuestNpcActor(npcs.Npc22306.alias, 70067):RunToTask({x = 710.585, y = 175.653, z = 423.775}, nil, nil, nil)
end

function Quest70067:OnSubFinish7006721(arg1)
    print("OnSubFinish7006721")
    this:SafeDestroyQuestNpc(npcs.Npc22306.alias, 103)
end

function Quest70067:OnSubStart7006738(arg1)
    print("OnSubStart7006738")
end

function Quest70067:OnSubFinish7006738(arg1)
    print("OnSubFinish7006738")
end

function Quest70067:OnSubFailed7006738(arg1)
    print("OnSubFailed7006738")
    this:ActionSafeCall(function(arg1)
        this:TransmitPlayerByQuestId(7006738, 2, function(arg1)
            this:RecycleAllRes()
        end, nil, nil)
    end)
end

function Quest70067:OnSubStart7006705(arg1)
    print("OnSubStart7006705")
end

function Quest70067:OnSubFinish7006705(arg1)
    print("OnSubFinish7006705")
end

function Quest70067:OnSubStart7006723(arg1)
    print("OnSubStart7006723")
    this:TransmitPlayerByQuestId(7006723, 6, nil, nil, nil)
end

function Quest70067:OnSubFinish7006723(arg1)
    print("OnSubFinish7006723")
end

function Quest70067:OnSubStart7006708(arg1)
    print("OnSubStart7006708")
end

function Quest70067:OnSubFinish7006708(arg1)
    print("OnSubFinish7006708")
end

function Quest70067:OnSubStart7006709(arg1)
    print("OnSubStart7006709")
end

function Quest70067:OnSubFinish7006709(arg1)
    print("OnSubFinish7006709")
end

function Quest70067:OnSubStart7006711(arg1)
    print("OnSubStart7006711")
end

function Quest70067:OnSubFinish7006711(arg1)
    print("OnSubFinish7006711")
end

function Quest70067:OnSubStart7006710(arg1)
    print("OnSubStart7006710")
end

function Quest70067:OnSubFinish7006710(arg1)
    print("OnSubFinish7006710")
end

function Quest70067:OnSubStart7006713(arg1)
    print("OnSubStart7006713")
end

function Quest70067:OnSubFinish7006713(arg1)
    print("OnSubFinish7006713")
end

function Quest70067:OnSubStart7006712(arg1)
    print("OnSubStart7006712")
end

function Quest70067:OnSubFinish7006712(arg1)
    print("OnSubFinish7006712")
end

function Quest70067:OnSubStart7006714(arg1)
    print("OnSubStart7006714")
end

function Quest70067:OnSubFinish7006714(arg1)
    print("OnSubFinish7006714")
end

function Quest70067:OnSubStart7006715(arg1)
    print("OnSubStart7006715")
end

function Quest70067:OnSubFinish7006715(arg1)
    print("OnSubFinish7006715")
end

function Quest70067:OnSubStart7006726(arg1)
    print("OnSubStart7006726")
    actorUtils.FinishQuestID(false, 7006726)
end

function Quest70067:OnSubFinish7006726(arg1)
    print("OnSubFinish7006726")
end

return Quest70067
