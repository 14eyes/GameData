require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73130 = class("Quest73130", QuestActorProxy)
Quest73130.defaultAlias = "Quest73130"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73130:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73130:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313001"] = self.OnSubStart7313001,
        ["7313002"] = self.OnSubStart7313002,
        ["7313006"] = self.OnSubStart7313006,
        ["7313003"] = self.OnSubStart7313003,
        ["7313004"] = self.OnSubStart7313004,
        ["7313005"] = self.OnSubStart7313005
    }
end

function Quest73130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313001"] = self.OnSubFinish7313001,
        ["7313002"] = self.OnSubFinish7313002,
        ["7313006"] = self.OnSubFinish7313006,
        ["7313003"] = self.OnSubFinish7313003,
        ["7313004"] = self.OnSubFinish7313004,
        ["7313005"] = self.OnSubFinish7313005
    }
end

function Quest73130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73130:Start()
    print("Start")
end

function Quest73130:OnDestroy()
    print("OnDestroy")
end

function Quest73130:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73130:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73130:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73130:OnSubStart7313001(arg1)
    print("OnSubStart7313001")
end

function Quest73130:OnSubFinish7313001(arg1)
    print("OnSubFinish7313001")
end

function Quest73130:OnSubStart7313002(arg1)
    print("OnSubStart7313002")
    self.CreateQuestNpc(self, arg1, npcs.Npc20696Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20696Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20696Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7313003_N20696").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73130:OnSubFinish7313002(arg1)
    print("OnSubFinish7313002")
end

function Quest73130:OnSubStart7313006(arg1)
    print("OnSubStart7313006")
    self:CreateQuestNpc(arg1, npcs.Npc20696Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20696Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20696Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73130:OnSubFinish7313006(arg1)
    print("OnSubFinish7313006")
end

function Quest73130:OnSubStart7313003(arg1)
    print("OnSubStart7313003")
    self:CreateQuestNpc(arg1, npcs.Npc20696Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20696Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73130:OnSubFinish7313003(arg1)
    print("OnSubFinish7313003")
end

function Quest73130:OnSubStart7313004(arg1)
    print("OnSubStart7313004")
    self:GetQuestNpcActor(npcs.Npc20696Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73130:OnSubFinish7313004(arg1)
    print("OnSubFinish7313004")
end

function Quest73130:OnSubStart7313005(arg1)
    print("OnSubStart7313005")
    self:RequestInteraction(npcs.Npc20696Data.alias)
    self:GetQuestNpcActor(npcs.Npc20696Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73130:OnSubFinish7313005(arg1)
    print("OnSubFinish7313005")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20696Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73130
