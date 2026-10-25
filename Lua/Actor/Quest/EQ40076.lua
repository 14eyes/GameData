require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40076 = class("Quest40076", QuestActorProxy)
Quest40076.defaultAlias = "Quest40076"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40076:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40076:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007601"] = self.OnSubStart4007601,
        ["4007616"] = self.OnSubStart4007616,
        ["4007602"] = self.OnSubStart4007602,
        ["4007603"] = self.OnSubStart4007603,
        ["4007604"] = self.OnSubStart4007604,
        ["4007605"] = self.OnSubStart4007605,
        ["4007606"] = self.OnSubStart4007606,
        ["4007607"] = self.OnSubStart4007607,
        ["4007609"] = self.OnSubStart4007609,
        ["4007610"] = self.OnSubStart4007610,
        ["4007614"] = self.OnSubStart4007614,
        ["4007617"] = self.OnSubStart4007617,
        ["4007611"] = self.OnSubStart4007611,
        ["4007615"] = self.OnSubStart4007615,
        ["4007619"] = self.OnSubStart4007619,
        ["4007612"] = self.OnSubStart4007612,
        ["4007613"] = self.OnSubStart4007613,
        ["4007608"] = self.OnSubStart4007608,
        ["4007618"] = self.OnSubStart4007618
    }
end

function Quest40076:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007601"] = self.OnSubFinish4007601,
        ["4007616"] = self.OnSubFinish4007616,
        ["4007602"] = self.OnSubFinish4007602,
        ["4007603"] = self.OnSubFinish4007603,
        ["4007604"] = self.OnSubFinish4007604,
        ["4007605"] = self.OnSubFinish4007605,
        ["4007606"] = self.OnSubFinish4007606,
        ["4007607"] = self.OnSubFinish4007607,
        ["4007609"] = self.OnSubFinish4007609,
        ["4007610"] = self.OnSubFinish4007610,
        ["4007614"] = self.OnSubFinish4007614,
        ["4007617"] = self.OnSubFinish4007617,
        ["4007611"] = self.OnSubFinish4007611,
        ["4007615"] = self.OnSubFinish4007615,
        ["4007619"] = self.OnSubFinish4007619,
        ["4007612"] = self.OnSubFinish4007612,
        ["4007613"] = self.OnSubFinish4007613,
        ["4007608"] = self.OnSubFinish4007608,
        ["4007618"] = self.OnSubFinish4007618
    }
end

function Quest40076:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40076:Start()
    print("Start")
end

function Quest40076:OnDestroy()
    print("OnDestroy")
end

function Quest40076:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40076:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40076:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    actorMgr:DestroyEntityActor("Q4007611_SafeTrigger", 20136, false)
    actorMgr:DestroyEntityActor("Q4007615_Trigger", 20136, false)
    actorMgr:DestroyEntityActor("Q4007616_Trigger", 20134, false)
    actorMgr:DestroyEntityActor("Q4007617_Trigger", 20136, false)
    self:DisableMainPageWithConfig(false, "DisableTestDIMona")
end

function Quest40076:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40076:OnSubStart4007601(arg1)
    print("OnSubStart4007601")
end

function Quest40076:OnSubFinish4007601(arg1)
    print("OnSubFinish4007601")
end

function Quest40076:OnSubStart4007616(arg1)
    print("OnSubStart4007616")
    actorMgr:CreateActorWithPos("Q4007616_Trigger", "Actor/Gadget/Q4007616_Trigger", 70900002, 0, sceneData:GetDummyPoint(20134, "Q4007616_guide").pos, sceneData:GetDummyPoint(20134, "Q4007616_guide").rot, true, false, 20134)
end

function Quest40076:OnSubFinish4007616(arg1)
    print("OnSubFinish4007616")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20134)
end

function Quest40076:OnSubStart4007602(arg1)
    print("OnSubStart4007602")
end

function Quest40076:OnSubFinish4007602(arg1)
    print("OnSubFinish4007602")
end

function Quest40076:OnSubStart4007603(arg1)
    print("OnSubStart4007603")
end

function Quest40076:OnSubFinish4007603(arg1)
    print("OnSubFinish4007603")
    self:NarratorOnlyTaskByData(datas.Narrator_4007601, nil, 40076)
end

function Quest40076:OnSubStart4007604(arg1)
    print("OnSubStart4007604")
end

function Quest40076:OnSubFinish4007604(arg1)
    print("OnSubFinish4007604")
    self:NarratorOnlyTaskByData(datas.Narrator_4007602, nil, 40076)
end

function Quest40076:OnSubStart4007605(arg1)
    print("OnSubStart4007605")
end

function Quest40076:OnSubFinish4007605(arg1)
    print("OnSubFinish4007605")
end

function Quest40076:OnSubStart4007606(arg1)
    print("OnSubStart4007606")
end

function Quest40076:OnSubFinish4007606(arg1)
    print("OnSubFinish4007606")
    self:NarratorOnlyTaskByData(datas.Narrator_4007603, nil, 40076)
end

function Quest40076:OnSubStart4007607(arg1)
    print("OnSubStart4007607")
end

function Quest40076:OnSubFinish4007607(arg1)
    print("OnSubFinish4007607")
end

function Quest40076:OnSubStart4007609(arg1)
    print("OnSubStart4007609")
    self:CreateQuestNpcWithTriggerBlack("Q4007609_Trigger", 4007609, npcs.Npc10095Data.id, 1, 40, 1)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(false, "DisableTestDIMona")
    end)
end

function Quest40076:OnSubFinish4007609(arg1)
    print("OnSubFinish4007609")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20134)
end

function Quest40076:OnSubStart4007610(arg1)
    print("OnSubStart4007610")
end

function Quest40076:OnSubFinish4007610(arg1)
    print("OnSubFinish4007610")
    self:NarratorOnlyTaskByData(datas.Narrator_4007604, nil, 40076)
end

function Quest40076:OnSubStart4007614(arg1)
    print("OnSubStart4007614")
    globalActor:PlayerEnterDungeonPoint(31, 1140, 4007614, 1)
end

function Quest40076:OnSubFinish4007614(arg1)
    print("OnSubFinish4007614")
end

function Quest40076:OnSubStart4007617(arg1)
    print("OnSubStart4007617")
    actorMgr:CreateActorWithPos("Q4007617_Trigger", "Actor/Gadget/Q4007617_Trigger", 70900002, 0, sceneData:GetDummyPoint(20136, "Q4007610_transmit").pos, sceneData:GetDummyPoint(20136, "Q4007610_transmit").rot, true, false, 20136)
end

function Quest40076:OnSubFinish4007617(arg1)
    print("OnSubFinish4007617")
end

function Quest40076:OnSubStart4007611(arg1)
    print("OnSubStart4007611")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestDIMona")
    end)

    actorMgr:CreateActorWithPos("Q4007611_SafeTrigger", "Actor/Gadget/Q4007611_SafeTrigger", 70900002, 0, {x = 294.717, y = 9.08, z = 630.452}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20136)
end

function Quest40076:OnSubFinish4007611(arg1)
    print("OnSubFinish4007611")
    if actorMgr:GetActor("Q4007611_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4007611_SafeTrigger")
    end
end

function Quest40076:OnSubStart4007615(arg1)
    print("OnSubStart4007615")
    actorMgr:CreateActorWithPos("Q4007615_Trigger", "Actor/Gadget/Q4007615_Trigger", 70900002, 0, sceneData:GetDummyPoint(20136, "Q4007615_guide").pos, sceneData:GetDummyPoint(20136, "Q4007615_guide").rot, true, false, 20136)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestDIMona")
    end)
end

function Quest40076:OnSubFinish4007615(arg1)
    print("OnSubFinish4007615")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20136)
end

function Quest40076:OnSubStart4007619(arg1)
    print("OnSubStart4007619")
end

function Quest40076:OnSubFinish4007619(arg1)
    print("OnSubFinish4007619")
end

function Quest40076:OnSubStart4007612(arg1)
    print("OnSubStart4007612")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestDIMona")
    end)
end

function Quest40076:OnSubFinish4007612(arg1)
    print("OnSubFinish4007612")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
    self:DisableMainPageWithConfig(false, "DisableTestDIMona")
end

function Quest40076:OnSubStart4007613(arg1)
    print("OnSubStart4007613")
    self:CreateQuestNpcWithTriggerBlack("Q4007613_Trigger", 4007613, npcs.Npc10095Data.id, 1, 10, 1)
end

function Quest40076:OnSubFinish4007613(arg1)
    print("OnSubFinish4007613")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:CallDelay(5, function(arg1)
        actorUtils.ShowContext("SummerTimeV2StagePage", 4)
    end)
end

function Quest40076:OnSubStart4007608(arg1)
    print("OnSubStart4007608")
end

function Quest40076:OnSubFinish4007608(arg1)
    print("OnSubFinish4007608")
end

function Quest40076:OnSubStart4007618(arg1)
    print("OnSubStart4007618")
end

function Quest40076:OnSubFinish4007618(arg1)
    print("OnSubFinish4007618")
end

return Quest40076
