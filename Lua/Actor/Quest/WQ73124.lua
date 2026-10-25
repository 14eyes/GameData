require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73124 = class("Quest73124", QuestActorProxy)
Quest73124.defaultAlias = "Quest73124"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73124:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73124:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7312401"] = self.OnSubStart7312401,
        ["7312402"] = self.OnSubStart7312402,
        ["7312406"] = self.OnSubStart7312406,
        ["7312403"] = self.OnSubStart7312403,
        ["7312404"] = self.OnSubStart7312404,
        ["7312405"] = self.OnSubStart7312405
    }
end

function Quest73124:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7312401"] = self.OnSubFinish7312401,
        ["7312402"] = self.OnSubFinish7312402,
        ["7312406"] = self.OnSubFinish7312406,
        ["7312403"] = self.OnSubFinish7312403,
        ["7312404"] = self.OnSubFinish7312404,
        ["7312405"] = self.OnSubFinish7312405
    }
end

function Quest73124:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73124:Start()
    print("Start")
end

function Quest73124:OnDestroy()
    print("OnDestroy")
end

function Quest73124:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73124:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73124:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73124:OnSubStart7312401(arg1)
    print("OnSubStart7312401")
end

function Quest73124:OnSubFinish7312401(arg1)
    print("OnSubFinish7312401")
end

function Quest73124:OnSubStart7312402(arg1)
    print("OnSubStart7312402")
    self.CreateQuestNpc(self, arg1, npcs.Npc20690Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20690Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20690Data.alias):CheckPlayerDistTask(15, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7312403_N20690").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73124:OnSubFinish7312402(arg1)
    print("OnSubFinish7312402")
end

function Quest73124:OnSubStart7312406(arg1)
    print("OnSubStart7312406")
    self:CreateQuestNpc(arg1, npcs.Npc20690Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20690Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20690Data.alias):CheckPlayerDistTask(15, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73124:OnSubFinish7312406(arg1)
    print("OnSubFinish7312406")
end

function Quest73124:OnSubStart7312403(arg1)
    print("OnSubStart7312403")
    self:CreateQuestNpc(arg1, npcs.Npc20690Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20690Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73124:OnSubFinish7312403(arg1)
    print("OnSubFinish7312403")
end

function Quest73124:OnSubStart7312404(arg1)
    print("OnSubStart7312404")
    self:GetQuestNpcActor(npcs.Npc20690Data.alias):DoFreeStyle(6030, true, nil, true, true, false, false)
end

function Quest73124:OnSubFinish7312404(arg1)
    print("OnSubFinish7312404")
end

function Quest73124:OnSubStart7312405(arg1)
    print("OnSubStart7312405")
    self:RequestInteraction(npcs.Npc20690Data.alias)
    self:GetQuestNpcActor(npcs.Npc20690Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73124:OnSubFinish7312405(arg1)
    print("OnSubFinish7312405")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20690Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73124
