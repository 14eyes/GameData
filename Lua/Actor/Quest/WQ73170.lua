require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73170 = class("Quest73170", QuestActorProxy)
Quest73170.defaultAlias = "Quest73170"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73170:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73170:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317001"] = self.OnSubStart7317001,
        ["7317002"] = self.OnSubStart7317002,
        ["7317005"] = self.OnSubStart7317005,
        ["7317003"] = self.OnSubStart7317003,
        ["7317004"] = self.OnSubStart7317004
    }
end

function Quest73170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317001"] = self.OnSubFinish7317001,
        ["7317002"] = self.OnSubFinish7317002,
        ["7317005"] = self.OnSubFinish7317005,
        ["7317003"] = self.OnSubFinish7317003,
        ["7317004"] = self.OnSubFinish7317004
    }
end

function Quest73170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73170:Start()
    print("Start")
end

function Quest73170:OnDestroy()
    print("OnDestroy")
end

function Quest73170:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73170:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73170:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73170:OnSubStart7317001(arg1)
    print("OnSubStart7317001")
end

function Quest73170:OnSubFinish7317001(arg1)
    print("OnSubFinish7317001")
end

function Quest73170:OnSubStart7317002(arg1)
    print("OnSubStart7317002")
    self.CreateQuestNpc(self, arg1, npcs.Npc20708Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20708Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20708Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7317002_N20708").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73170:OnSubFinish7317002(arg1)
    print("OnSubFinish7317002")
end

function Quest73170:OnSubStart7317005(arg1)
    print("OnSubStart7317005")
    self:CreateQuestNpc(arg1, npcs.Npc20708Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20708Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20708Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73170:OnSubFinish7317005(arg1)
    print("OnSubFinish7317005")
end

function Quest73170:OnSubStart7317003(arg1)
    print("OnSubStart7317003")
    self:CreateQuestNpc(arg1, npcs.Npc20708Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20708Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73170:OnSubFinish7317003(arg1)
    print("OnSubFinish7317003")
end

function Quest73170:OnSubStart7317004(arg1)
    print("OnSubStart7317004")
    self:RequestInteraction(npcs.Npc20708Data.alias)
    self:GetQuestNpcActor(npcs.Npc20708Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73170:OnSubFinish7317004(arg1)
    print("OnSubFinish7317004")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20708Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73170
