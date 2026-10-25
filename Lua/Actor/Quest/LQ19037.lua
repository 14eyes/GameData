require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19037 = class("Quest19037", QuestActorProxy)
Quest19037.defaultAlias = "Quest19037"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19037:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1903701"] = self.OnSubStart1903701,
        ["1903702"] = self.OnSubStart1903702,
        ["1903703"] = self.OnSubStart1903703,
        ["1903704"] = self.OnSubStart1903704
    }
end

function Quest19037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1903701"] = self.OnSubFinish1903701,
        ["1903702"] = self.OnSubFinish1903702,
        ["1903703"] = self.OnSubFinish1903703,
        ["1903704"] = self.OnSubFinish1903704
    }
end

function Quest19037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19037:Start()
    print("Start")
end

function Quest19037:OnDestroy()
    print("OnDestroy")
end

function Quest19037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19037:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12319Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12320Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1626Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2444Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1626Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2444Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19037Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19037Trigger1", 3, false)
    self:ClearSpeechBubbleTask()
end

function Quest19037:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19037:OnSubStart1903701(arg1)
    print("OnSubStart1903701")
end

function Quest19037:OnSubFinish1903701(arg1)
    print("OnSubFinish1903701")
end

function Quest19037:OnSubStart1903702(arg1)
    print("OnSubStart1903702")
    self:CreateQuestNpc(arg1, npcs.Npc12319Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc12320Data.id)
    self:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id)
    self:GetQuestNpcActor(npcs.Coop_YunjinData.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1626Data.id)
    self:GetQuestNpcActor(npcs.Npc1626Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc2444Data.id)
    self:GetQuestNpcActor(npcs.Npc2444Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(106401, 1903701)
    actorMgr:CreateActorWithPos("Q19037Trigger1", "Actor/Gadget/Q19037Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1903701_C1903701_N509").pos, sceneData:GetDummyPoint(3, "Q1903701_C1903701_N509").rot, true, false, 3)
    self:CreateSpeechBubbleTask(npcs.Npc12319Data.id, 190375101, 6, true, 7, 10, true)
    self:CreateSpeechBubbleTask(npcs.Npc12320Data.id, 190375102, 6, true, 8, 9, true)
    self:GetQuestNpcActor(npcs.Npc12319Data.alias):DoFreeStyle(1090, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12320Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest19037:OnSubFinish1903702(arg1)
    print("OnSubFinish1903702")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
end

function Quest19037:OnSubStart1903703(arg1)
    print("OnSubStart1903703")
    self:CreateQuestNpc(arg1, npcs.Npc12319Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12320Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2444Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19037Trigger", "Actor/Gadget/Q19037Trigger", 70900002, 0, {x = -569.3351, y = 232.8158, z = 316.4415}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest19037:OnSubFinish1903703(arg1)
    print("OnSubFinish1903703")
    self:RequestCoopInteractionFromSubStartPoint(106401, 1903702)
    self:RequestInteraction(npcs.Npc12319Data.alias)
end

function Quest19037:OnSubStart1903704(arg1)
    print("OnSubStart1903704")
    self:LightNotifyTo(npcs.Npc1626Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2444Data.alias, 0, true)
end

function Quest19037:OnSubFinish1903704(arg1)
    print("OnSubFinish1903704")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12319Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12320Data.alias, 3)
end

return Quest19037
