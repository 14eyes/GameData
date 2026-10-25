require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40057 = class("Quest40057", QuestActorProxy)
Quest40057.defaultAlias = "Quest40057"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40057:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40057:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4005701"] = self.OnSubStart4005701,
        ["4005702"] = self.OnSubStart4005702,
        ["4005703"] = self.OnSubStart4005703,
        ["4005704"] = self.OnSubStart4005704,
        ["4005705"] = self.OnSubStart4005705,
        ["4005706"] = self.OnSubStart4005706,
        ["4005707"] = self.OnSubStart4005707,
        ["4005708"] = self.OnSubStart4005708,
        ["4005709"] = self.OnSubStart4005709,
        ["4005710"] = self.OnSubStart4005710,
        ["4005711"] = self.OnSubStart4005711,
        ["4005712"] = self.OnSubStart4005712,
        ["4005713"] = self.OnSubStart4005713,
        ["4005714"] = self.OnSubStart4005714
    }
end

function Quest40057:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4005701"] = self.OnSubFinish4005701,
        ["4005702"] = self.OnSubFinish4005702,
        ["4005703"] = self.OnSubFinish4005703,
        ["4005704"] = self.OnSubFinish4005704,
        ["4005705"] = self.OnSubFinish4005705,
        ["4005706"] = self.OnSubFinish4005706,
        ["4005707"] = self.OnSubFinish4005707,
        ["4005708"] = self.OnSubFinish4005708,
        ["4005709"] = self.OnSubFinish4005709,
        ["4005710"] = self.OnSubFinish4005710,
        ["4005711"] = self.OnSubFinish4005711,
        ["4005712"] = self.OnSubFinish4005712,
        ["4005713"] = self.OnSubFinish4005713,
        ["4005714"] = self.OnSubFinish4005714
    }
end

function Quest40057:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40057:Start()
    print("Start")
end

function Quest40057:OnDestroy()
    print("OnDestroy")
end

function Quest40057:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40057:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40057:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc3190Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc12435Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc30150Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    actorMgr:DestroyEntityActor("Q4005702Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4005705Trigger", 1066, false)
    actorMgr:DestroyEntityActor("Q4005706Trigger", 1066, false)
    actorMgr:DestroyEntityActor("Q4005707Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005708Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005709Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005713Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005702Trigger2", 0, false)
end

function Quest40057:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40057:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40057:OnSubStart4005701(arg1)
    print("OnSubStart4005701")
end

function Quest40057:OnSubFinish4005701(arg1)
    print("OnSubFinish4005701")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4005701)
end

function Quest40057:OnSubStart4005702(arg1)
    print("OnSubStart4005702")
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q4005702Trigger", "Actor/Gadget/Q4005702Trigger", 70900002, 0, {x = -2527.837, y = 200.9523, z = -3648.181}, {x = 0, y = -40, z = 0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q4005702Trigger2", "Actor/Gadget/Q4005702Trigger2", 70900002, 0, {x = -2521.913, y = 202.0213, z = -3642.747}, {x = 0, y = -40, z = 0}, true, false)
end

function Quest40057:OnSubFinish4005702(arg1)
    print("OnSubFinish4005702")
end

function Quest40057:OnSubStart4005703(arg1)
    print("OnSubStart4005703")
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
end

function Quest40057:OnSubFinish4005703(arg1)
    print("OnSubFinish4005703")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:StopNarrator()
    self:ClearNarratorTask()
    self:ActorDestroy("Q4005702Trigger")
    self:ActorDestroy("Q4005702Trigger2")
end

function Quest40057:OnSubStart4005704(arg1)
    print("OnSubStart4005704")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest40057:OnSubFinish4005704(arg1)
    print("OnSubFinish4005704")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
end

function Quest40057:OnSubStart4005705(arg1)
    print("OnSubStart4005705")
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc30139Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc3000Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc3190Data.id, 6)
    actorMgr:CreateActorWithPos("Q4005705Trigger", "Actor/Gadget/Q4005705Trigger", 70900002, 0, sceneData:GetDummyPoint(1066, "Q4005605_guide").pos, sceneData:GetDummyPoint(1066, "Q4005605_guide").rot, true, false, 1066)
end

function Quest40057:OnSubFinish4005705(arg1)
    print("OnSubFinish4005705")
end

function Quest40057:OnSubStart4005706(arg1)
    print("OnSubStart4005706")
    actorMgr:CreateActorWithPos("Q4005706Trigger", "Actor/Gadget/Q4005706Trigger", 70900002, 0, {x = 2.297951, y = 5.524047, z = 8.921134}, {x = 0, y = 0, z = 0}, true, false, 1066)
end

function Quest40057:OnSubFinish4005706(arg1)
    print("OnSubFinish4005706")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc12435Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc30150Data.alias, 1066)
end

function Quest40057:OnSubStart4005707(arg1)
    print("OnSubStart4005707")
    actorMgr:CreateActorWithPos("Q4005707Trigger", "Actor/Gadget/Q4005707Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005707_OutSideWuYouTing").pos, sceneData:GetDummyPoint(3, "Q4005707_OutSideWuYouTing").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc3000Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc3190Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc30139Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40057:OnSubFinish4005707(arg1)
    print("OnSubFinish4005707")
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc3190Data.alias, 1066)
    self:GetQuestNpcActor(npcs.Npc3000Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc3190Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc30139Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40057:OnSubStart4005708(arg1)
    print("OnSubStart4005708")
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc1013Data.alias):HideSelf()
    actorMgr:CreateActorWithPos("Q4005708Trigger", "Actor/Gadget/Q4005708Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005708_N1013").pos, sceneData:GetDummyPoint(3, "Q4005708_N1013").rot, true, false, 3)
end

function Quest40057:OnSubFinish4005708(arg1)
    print("OnSubFinish4005708")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
end

function Quest40057:OnSubStart4005709(arg1)
    print("OnSubStart4005709")
    actorMgr:CreateActorWithPos("Q4005709Trigger", "Actor/Gadget/Q4005709Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005709_BesideWater").pos, sceneData:GetDummyPoint(3, "Q4005709_BesideWater").rot, true, false, 3)
end

function Quest40057:OnSubFinish4005709(arg1)
    print("OnSubFinish4005709")
end

function Quest40057:OnSubStart4005710(arg1)
    print("OnSubStart4005710")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1013Data.id, 4, npcs.Npc1013Data.alias)
end

function Quest40057:OnSubFinish4005710(arg1)
    print("OnSubFinish4005710")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
end

function Quest40057:OnSubStart4005711(arg1)
    print("OnSubStart4005711")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(400571101, function(arg1)
            actorUtils.FinishQuestID(false, 4005711)
        end, nil, nil, false)
    end)
end

function Quest40057:OnSubFinish4005711(arg1)
    print("OnSubFinish4005711")
end

function Quest40057:OnSubStart4005712(arg1)
    print("OnSubStart4005712")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    actorUtils.FinishQuestID(false, 4005712)
end

function Quest40057:OnSubFinish4005712(arg1)
    print("OnSubFinish4005712")
    self:TransmitPlayerWithTextById(arg1, 4005712, datas.TransmitPlayerTextmapId4005712, 1)
end

function Quest40057:OnSubStart4005713(arg1)
    print("OnSubStart4005713")
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 4)
    actorMgr:CreateActorWithPos("Q4005713Trigger", "Actor/Gadget/Q4005713Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005403_guide_WuGeXianGuangChang").pos, sceneData:GetDummyPoint(3, "Q4005403_guide_WuGeXianGuangChang").rot, true, false, 3)
end

function Quest40057:OnSubFinish4005713(arg1)
    print("OnSubFinish4005713")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
end

function Quest40057:OnSubStart4005714(arg1)
    print("OnSubStart4005714")
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40057:OnSubFinish4005714(arg1)
    print("OnSubFinish4005714")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:CallDelay(5, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("IrodoriMainPage", 4005714)
        end)
    end)

    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DisableInteeHeadCtrl(false)
end

return Quest40057
