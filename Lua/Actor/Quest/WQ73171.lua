require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73171 = class("Quest73171", QuestActorProxy)
Quest73171.defaultAlias = "Quest73171"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73171:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73171:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317101"] = self.OnSubStart7317101,
        ["7317102"] = self.OnSubStart7317102,
        ["7317105"] = self.OnSubStart7317105,
        ["7317103"] = self.OnSubStart7317103,
        ["7317104"] = self.OnSubStart7317104
    }
end

function Quest73171:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317101"] = self.OnSubFinish7317101,
        ["7317102"] = self.OnSubFinish7317102,
        ["7317105"] = self.OnSubFinish7317105,
        ["7317103"] = self.OnSubFinish7317103,
        ["7317104"] = self.OnSubFinish7317104
    }
end

function Quest73171:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73171:Start()
    print("Start")
end

function Quest73171:OnDestroy()
    print("OnDestroy")
end

function Quest73171:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73171:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73171:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73171:OnSubStart7317101(arg1)
    print("OnSubStart7317101")
end

function Quest73171:OnSubFinish7317101(arg1)
    print("OnSubFinish7317101")
end

function Quest73171:OnSubStart7317102(arg1)
    print("OnSubStart7317102")
    self.CreateQuestNpc(self, arg1, npcs.Npc20709Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20709Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20709Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7317102_N20709").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73171:OnSubFinish7317102(arg1)
    print("OnSubFinish7317102")
end

function Quest73171:OnSubStart7317105(arg1)
    print("OnSubStart7317105")
    self:CreateQuestNpc(arg1, npcs.Npc20709Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20709Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20709Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73171:OnSubFinish7317105(arg1)
    print("OnSubFinish7317105")
end

function Quest73171:OnSubStart7317103(arg1)
    print("OnSubStart7317103")
    self:CreateQuestNpc(arg1, npcs.Npc20709Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20709Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73171:OnSubFinish7317103(arg1)
    print("OnSubFinish7317103")
end

function Quest73171:OnSubStart7317104(arg1)
    print("OnSubStart7317104")
    self:RequestInteraction(npcs.Npc20709Data.alias)
    self:GetQuestNpcActor(npcs.Npc20709Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73171:OnSubFinish7317104(arg1)
    print("OnSubFinish7317104")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20709Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73171
