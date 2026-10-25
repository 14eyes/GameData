require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73159 = class("Quest73159", QuestActorProxy)
Quest73159.defaultAlias = "Quest73159"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73159:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73159:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7315901"] = self.OnSubStart7315901,
        ["7315902"] = self.OnSubStart7315902,
        ["7315905"] = self.OnSubStart7315905,
        ["7315903"] = self.OnSubStart7315903,
        ["7315904"] = self.OnSubStart7315904
    }
end

function Quest73159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7315901"] = self.OnSubFinish7315901,
        ["7315902"] = self.OnSubFinish7315902,
        ["7315905"] = self.OnSubFinish7315905,
        ["7315903"] = self.OnSubFinish7315903,
        ["7315904"] = self.OnSubFinish7315904
    }
end

function Quest73159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73159:Start()
    print("Start")
end

function Quest73159:OnDestroy()
    print("OnDestroy")
end

function Quest73159:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73159:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73159:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73159:OnSubStart7315901(arg1)
    print("OnSubStart7315901")
end

function Quest73159:OnSubFinish7315901(arg1)
    print("OnSubFinish7315901")
end

function Quest73159:OnSubStart7315902(arg1)
    print("OnSubStart7315902")
    self.CreateQuestNpc(self, arg1, npcs.Npc20659Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20659Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20659Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7315902_N20659").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73159:OnSubFinish7315902(arg1)
    print("OnSubFinish7315902")
end

function Quest73159:OnSubStart7315905(arg1)
    print("OnSubStart7315905")
    self:CreateQuestNpc(arg1, npcs.Npc20659Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20659Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20659Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73159:OnSubFinish7315905(arg1)
    print("OnSubFinish7315905")
end

function Quest73159:OnSubStart7315903(arg1)
    print("OnSubStart7315903")
    self:CreateQuestNpc(arg1, npcs.Npc20659Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20659Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73159:OnSubFinish7315903(arg1)
    print("OnSubFinish7315903")
end

function Quest73159:OnSubStart7315904(arg1)
    print("OnSubStart7315904")
    self:RequestInteraction(npcs.Npc20659Data.alias)
    self:GetQuestNpcActor(npcs.Npc20659Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73159:OnSubFinish7315904(arg1)
    print("OnSubFinish7315904")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20659Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73159
