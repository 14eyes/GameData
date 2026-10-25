require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23028 = class("Quest23028", QuestActorProxy)
Quest23028.defaultAlias = "Quest23028"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest23028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest23028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302801"] = self.OnSubStart2302801,
        ["2302802"] = self.OnSubStart2302802,
        ["2302805"] = self.OnSubStart2302805,
        ["2302806"] = self.OnSubStart2302806,
        ["2302803"] = self.OnSubStart2302803,
        ["2302804"] = self.OnSubStart2302804
    }
end

function Quest23028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302801"] = self.OnSubFinish2302801,
        ["2302802"] = self.OnSubFinish2302802,
        ["2302805"] = self.OnSubFinish2302805,
        ["2302806"] = self.OnSubFinish2302806,
        ["2302803"] = self.OnSubFinish2302803,
        ["2302804"] = self.OnSubFinish2302804
    }
end

function Quest23028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23028:Start()
    print("Start")
end

function Quest23028:OnDestroy()
    print("OnDestroy")
end

function Quest23028:OnMainFinished(arg1)
    print("OnMainFinished")
    self:LightNotifyTo(npcs.Npc4178Data.alias, 0, true)
end

function Quest23028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23028:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4178Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12691Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12692Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12693Data.alias, 3)
    local actor = actorMgr:GetActor("23028")
    actor:UnSpawn(gadgets.Gadget71700389Data.alias)
    actor:UnSpawn(gadgets.Gadget71700399Data.alias)
    actorMgr:DestroyEntityActor("Q2302802Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2302803Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2302804NPCTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q2302806NPCTrigger", 3, false)
    self:LightNotifyTo(npcs.Npc4178Data.alias, 0, true)
end

function Quest23028:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest23028:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23028:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest23028:FuncNA02()
    print("FuncNA02")
    self:NarratorOnlyTask(datas.NarratorTable02, nil, "")
end

function Quest23028:FuncNA06()
    print("FuncNA06")
    self:NarratorOnlyTask(datas.NarratorTable06, nil, "")
end

function Quest23028:OnSubStart2302801(arg1)
    print("OnSubStart2302801")
    self:CreateQuestNpc(arg1, npcs.Npc4178Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4178Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:UnSpawn(gadgets.Gadget71700399Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700399Data.id, 1, 0)
end

function Quest23028:OnSubFinish2302801(arg1)
    print("OnSubFinish2302801")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc4178Data.alias, 3)
        arg1:NotifyTo(npcs.Npc4178Data.alias, 1, true)
        arg1:UnSpawn(gadgets.Gadget71700399Data.alias)
    end, nil, nil, "", false, true)
end

function Quest23028:OnSubStart2302802(arg1)
    print("OnSubStart2302802")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12691Data.id, 2)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12691Data.alias)
    questNpcActor:DoFreeStyle(5030, true, nil, true, true, false, false)
    questNpcActor:NpcRunAwayTask(datas.RunAwayRoutePointsData, 5, 1, 1, function(arg1)
        actorMgr:GetActor("23028"):CreateSpeechBubbleTask(npcs.Npc12691Data.id, 230285001, 3, false, 0, 0)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12692Data.id, 3)
    local v = self:GetQuestNpcActor(npcs.Npc12692Data.alias)
    v:DoFreeStyle(5010, true, nil, true, true, false, false)
    v:NpcRunAwayTask(datas.RunAwayRoutePointsData, 5, 1, 1, function(arg1)
        actorMgr:GetActor("23028"):CreateSpeechBubbleTask(npcs.Npc12692Data.id, 230285002, 3, false, 0, 0)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12693Data.id, 4)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12693Data.alias)
    questNpcActor2:DoFreeStyle(5010, true, nil, true, true, false, false)
    questNpcActor2:NpcRunAwayTask(datas.RunAwayRoutePointsData, 5, 1, 1, function(arg1)
        actorMgr:GetActor("23028"):CreateSpeechBubbleTask(npcs.Npc12693Data.id, 230285001, 3, false, 0, 0)
    end)

    actorMgr:CreateActorWithPos("Q2302802Trigger", "Actor/Gadget/Q2302802Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302802_guide").pos, sceneData:GetDummyPoint(3, "Q2302802_guide").rot, true, false, 3)
end

function Quest23028:OnSubFinish2302802(arg1)
    print("OnSubFinish2302802")
end

function Quest23028:OnSubStart2302805(arg1)
    print("OnSubStart2302805")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
    self:UnSpawn(gadgets.Gadget71700389Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700389Data.id, 1, 0)
end

function Quest23028:OnSubFinish2302805(arg1)
    print("OnSubFinish2302805")
    self:UnSpawn(gadgets.Gadget71700389Data.alias)
end

function Quest23028:OnSubStart2302806(arg1)
    print("OnSubStart2302806")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("Q2302806NPCTrigger", 2302806, 4178, 1, 18, 1)
end

function Quest23028:OnSubFinish2302806(arg1)
    print("OnSubFinish2302806")
    self:ClearSpeechBubbleTask()
    self:GetQuestNpcActor(npcs.Npc12691Data.alias):ClearNpcRunAwayTask()
    self:GetQuestNpcActor(npcs.Npc12692Data.alias):ClearNpcRunAwayTask()
    self:GetQuestNpcActor(npcs.Npc12693Data.alias):ClearNpcRunAwayTask()
    self:SafeDestroyQuestNpc(npcs.Npc4178Data.alias, 3)
    self:NpcDestroyWithDither(npcs.Npc12691Data.alias, 3)
    self:NpcDestroyWithDither(npcs.Npc12692Data.alias, 3)
    self:NpcDestroyWithDither(npcs.Npc12693Data.alias, 3)
end

function Quest23028:OnSubStart2302803(arg1)
    print("OnSubStart2302803")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12901Data.id, 2)
    actorMgr:CreateActorWithPos("Q2302803Trigger", "Actor/Gadget/Q2302803Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302803_N4014").pos, sceneData:GetDummyPoint(3, "Q2302803_N4014").rot, true, false, 3)
end

function Quest23028:OnSubFinish2302803(arg1)
    print("OnSubFinish2302803")
end

function Quest23028:OnSubStart2302804(arg1)
    print("OnSubStart2302804")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
    self:CreateQuestNpcWithTrigger("Q2302804NPCTrigger", 2302804, 12901, 2, 6)
end

function Quest23028:OnSubFinish2302804(arg1)
    print("OnSubFinish2302804")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4178Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc12901Data.alias, 3)
end

return Quest23028
