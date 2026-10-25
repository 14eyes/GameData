require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19066 = class("Quest19066", QuestActorProxy)
Quest19066.defaultAlias = "Quest19066"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19066:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19066:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1906601"] = self.OnSubStart1906601,
        ["1906612"] = self.OnSubStart1906612,
        ["1906611"] = self.OnSubStart1906611,
        ["1906602"] = self.OnSubStart1906602,
        ["1906603"] = self.OnSubStart1906603,
        ["1906604"] = self.OnSubStart1906604,
        ["1906605"] = self.OnSubStart1906605,
        ["1906606"] = self.OnSubStart1906606,
        ["1906607"] = self.OnSubStart1906607,
        ["1906608"] = self.OnSubStart1906608,
        ["1906609"] = self.OnSubStart1906609,
        ["1906610"] = self.OnSubStart1906610
    }
end

function Quest19066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1906601"] = self.OnSubFinish1906601,
        ["1906612"] = self.OnSubFinish1906612,
        ["1906611"] = self.OnSubFinish1906611,
        ["1906602"] = self.OnSubFinish1906602,
        ["1906603"] = self.OnSubFinish1906603,
        ["1906604"] = self.OnSubFinish1906604,
        ["1906605"] = self.OnSubFinish1906605,
        ["1906606"] = self.OnSubFinish1906606,
        ["1906607"] = self.OnSubFinish1906607,
        ["1906608"] = self.OnSubFinish1906608,
        ["1906609"] = self.OnSubFinish1906609,
        ["1906610"] = self.OnSubFinish1906610
    }
end

function Quest19066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1906601"] = self.OnSubFailed1906601,
        ["1906612"] = self.OnSubFailed1906612,
        ["1906611"] = self.OnSubFailed1906611,
        ["1906602"] = self.OnSubFailed1906602,
        ["1906603"] = self.OnSubFailed1906603,
        ["1906604"] = self.OnSubFailed1906604,
        ["1906605"] = self.OnSubFailed1906605,
        ["1906606"] = self.OnSubFailed1906606,
        ["1906607"] = self.OnSubFailed1906607,
        ["1906608"] = self.OnSubFailed1906608,
        ["1906609"] = self.OnSubFailed1906609,
        ["1906610"] = self.OnSubFailed1906610
    }
end

function Quest19066:Start()
    print("Start")
end

function Quest19066:OnDestroy()
    print("OnDestroy")
end

function Quest19066:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19066:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19066:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearAll()
end

function Quest19066:ClearMidTalk()
    print("ClearMidTalk")
    self:DestroyQuestNpcActor(npcs.Npc1027DataMid.alias, 3)
end

function Quest19066:ClearAll()
    print("ClearAll")
    self:DestroyQuestNpcActor(npcs.Npc1027DataHE.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc11003DataHE.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19066Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19066TriggerOut_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19066TriggerOut2_.alias, 3, false)
end

function Quest19066:NarratorStartPaimon()
    print("NarratorStartPaimon")
    self:NarratorOnlyTaskByData(datas.NarratorStartPaimon)
end

function Quest19066:NarratorRockOn()
    print("NarratorRockOn")
    self:NarratorOnlyTaskByData(datas.NarratorRockOn)
end

function Quest19066:ClearStartTalk()
    print("ClearStartTalk")
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1027DataMid.alias, 3)
end

function Quest19066:OnSubStart1906601(arg1)
    print("OnSubStart1906601")
    self:CreateQuestNpc(arg1, npcs.Npc11003DataMid.id, 3)
    self:CallDelay(3, self.NarratorStartPaimon)
    self:SetNavigationByMainId(19066, true)
end

function Quest19066:OnSubFinish1906601(arg1)
    print("OnSubFinish1906601")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19066:OnSubFailed1906601(arg1)
    print("OnSubFailed1906601")
end

function Quest19066:OnSubStart1906612(arg1)
    print("OnSubStart1906612")
    actorMgr:CreateActorWithPos(datas.Q19066Trigger_.alias, datas.Q19066Trigger_.script, datas.Q19066Trigger_.id, 0, datas.Q19066Trigger_.point.pos, datas.Q19066Trigger_.point.rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q19066TriggerOut_.alias, datas.Q19066TriggerOut_.script, datas.Q19066TriggerOut_.id, 0, datas.Q19066TriggerOut_.point.pos, datas.Q19066TriggerOut_.point.rot, true, false, 3)
end

function Quest19066:OnSubFinish1906612(arg1)
    print("OnSubFinish1906612")
    self:ActionSafeCall(self.ClearStartTalk)
end

function Quest19066:OnSubFailed1906612(arg1)
    print("OnSubFailed1906612")
end

function Quest19066:OnSubStart1906611(arg1)
    print("OnSubStart1906611")
end

function Quest19066:OnSubFinish1906611(arg1)
    print("OnSubFinish1906611")
end

function Quest19066:OnSubFailed1906611(arg1)
    print("OnSubFailed1906611")
end

function Quest19066:OnSubStart1906602(arg1)
    print("OnSubStart1906602")
end

function Quest19066:OnSubFinish1906602(arg1)
    print("OnSubFinish1906602")
end

function Quest19066:OnSubFailed1906602(arg1)
    print("OnSubFailed1906602")
end

function Quest19066:OnSubStart1906603(arg1)
    print("OnSubStart1906603")
end

function Quest19066:OnSubFinish1906603(arg1)
    print("OnSubFinish1906603")
end

function Quest19066:OnSubFailed1906603(arg1)
    print("OnSubFailed1906603")
end

function Quest19066:OnSubStart1906604(arg1)
    print("OnSubStart1906604")
end

function Quest19066:OnSubFinish1906604(arg1)
    print("OnSubFinish1906604")
    self:CallDelay(2.5, function(arg1)
        arg1.TransmitPlayerWithTextByQuestId(arg1, 1906604, 1, {"QUEST_Message_Q1906604"}, 5.5, function()
            arg1:NarratorRockOn()
            arg1:EnterSceneLookCamera({x = 1664.29, y = 232.71, z = -1178.94}, 0, 2, false, false)
        end)

        arg1.PlayEffect(arg1, "Eff_Censer_Empty_SoundNoelCoop1", sceneData:GetDummyPoint(3, "Q19066Minecraft2").pos)
    end)
end

function Quest19066:OnSubFailed1906604(arg1)
    print("OnSubFailed1906604")
end

function Quest19066:OnSubStart1906605(arg1)
    print("OnSubStart1906605")
    self:SetNavigationByMainId(19066, true)
end

function Quest19066:OnSubFinish1906605(arg1)
    print("OnSubFinish1906605")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19066:OnSubFailed1906605(arg1)
    print("OnSubFailed1906605")
end

function Quest19066:OnSubStart1906606(arg1)
    print("OnSubStart1906606")
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906601)
    actorMgr:CreateActorWithPos(datas.Q19066TriggerOut2_.alias, datas.Q19066TriggerOut2_.script, datas.Q19066TriggerOut2_.id, 0, datas.Q19066TriggerOut2_.point.pos, datas.Q19066TriggerOut2_.point.rot, true, false, 3)
end

function Quest19066:OnSubFinish1906606(arg1)
    print("OnSubFinish1906606")
    self:ActionSafeCall(self.ClearMidTalk)
end

function Quest19066:OnSubFailed1906606(arg1)
    print("OnSubFailed1906606")
end

function Quest19066:OnSubStart1906607(arg1)
    print("OnSubStart1906607")
end

function Quest19066:OnSubFinish1906607(arg1)
    print("OnSubFinish1906607")
end

function Quest19066:OnSubFailed1906607(arg1)
    print("OnSubFailed1906607")
end

function Quest19066:OnSubStart1906608(arg1)
    print("OnSubStart1906608")
end

function Quest19066:OnSubFinish1906608(arg1)
    print("OnSubFinish1906608")
end

function Quest19066:OnSubFailed1906608(arg1)
    print("OnSubFailed1906608")
end

function Quest19066:OnSubStart1906609(arg1)
    print("OnSubStart1906609")
end

function Quest19066:OnSubFinish1906609(arg1)
    print("OnSubFinish1906609")
end

function Quest19066:OnSubFailed1906609(arg1)
    print("OnSubFailed1906609")
end

function Quest19066:OnSubStart1906610(arg1)
    print("OnSubStart1906610")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1027DataHE.alias, npcs.Npc11003DataHE.alias})
    self.CallDelay(self, 0.5, function()
        self:TransmitPlayerByQuestId(1906610, 1, nil, function()
            self:RequestCoopInteractionFromSubStartPoint(103401, 1906602)
            self:CreateQuestNpc(arg1, npcs.Npc1027DataHE.id, 2)
            self:CreateQuestNpc(arg1, npcs.Npc11003DataHE.id, 4)
            self:RequestInteraction(npcs.Npc1027DataHE.alias)
        end, questNpcCreateTask)
    end)
end

function Quest19066:OnSubFinish1906610(arg1)
    print("OnSubFinish1906610")
    self:ActionSafeCall(self.ClearAll)
end

function Quest19066:OnSubFailed1906610(arg1)
    print("OnSubFailed1906610")
end

return Quest19066
