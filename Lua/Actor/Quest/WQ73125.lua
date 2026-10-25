require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73125 = class("Quest73125", QuestActorProxy)
Quest73125.defaultAlias = "Quest73125"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73125:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73125:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7312501"] = self.OnSubStart7312501,
        ["7312502"] = self.OnSubStart7312502,
        ["7312506"] = self.OnSubStart7312506,
        ["7312503"] = self.OnSubStart7312503,
        ["7312504"] = self.OnSubStart7312504,
        ["7312505"] = self.OnSubStart7312505
    }
end

function Quest73125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7312501"] = self.OnSubFinish7312501,
        ["7312502"] = self.OnSubFinish7312502,
        ["7312506"] = self.OnSubFinish7312506,
        ["7312503"] = self.OnSubFinish7312503,
        ["7312504"] = self.OnSubFinish7312504,
        ["7312505"] = self.OnSubFinish7312505
    }
end

function Quest73125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73125:Start()
    print("Start")
end

function Quest73125:OnDestroy()
    print("OnDestroy")
end

function Quest73125:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73125:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73125:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73125:OnSubStart7312501(arg1)
    print("OnSubStart7312501")
end

function Quest73125:OnSubFinish7312501(arg1)
    print("OnSubFinish7312501")
end

function Quest73125:OnSubStart7312502(arg1)
    print("OnSubStart7312502")
    self.CreateQuestNpc(self, arg1, npcs.Npc20691Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20691Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20691Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7312503_N20691").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73125:OnSubFinish7312502(arg1)
    print("OnSubFinish7312502")
end

function Quest73125:OnSubStart7312506(arg1)
    print("OnSubStart7312506")
    self:CreateQuestNpc(arg1, npcs.Npc20691Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20691Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20691Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73125:OnSubFinish7312506(arg1)
    print("OnSubFinish7312506")
end

function Quest73125:OnSubStart7312503(arg1)
    print("OnSubStart7312503")
    self:CreateQuestNpc(arg1, npcs.Npc20691Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20691Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73125:OnSubFinish7312503(arg1)
    print("OnSubFinish7312503")
end

function Quest73125:OnSubStart7312504(arg1)
    print("OnSubStart7312504")
    self:GetQuestNpcActor(npcs.Npc20691Data.alias):DoFreeStyle(6030, true, nil, true, true, false, false)
end

function Quest73125:OnSubFinish7312504(arg1)
    print("OnSubFinish7312504")
end

function Quest73125:OnSubStart7312505(arg1)
    print("OnSubStart7312505")
    self:RequestInteraction(npcs.Npc20691Data.alias)
    self:GetQuestNpcActor(npcs.Npc20691Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73125:OnSubFinish7312505(arg1)
    print("OnSubFinish7312505")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20691Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73125
