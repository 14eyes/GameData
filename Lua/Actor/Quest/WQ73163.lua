require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73163 = class("Quest73163", QuestActorProxy)
Quest73163.defaultAlias = "Quest73163"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73163:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73163:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316301"] = self.OnSubStart7316301,
        ["7316302"] = self.OnSubStart7316302,
        ["7316305"] = self.OnSubStart7316305,
        ["7316303"] = self.OnSubStart7316303,
        ["7316304"] = self.OnSubStart7316304
    }
end

function Quest73163:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316301"] = self.OnSubFinish7316301,
        ["7316302"] = self.OnSubFinish7316302,
        ["7316305"] = self.OnSubFinish7316305,
        ["7316303"] = self.OnSubFinish7316303,
        ["7316304"] = self.OnSubFinish7316304
    }
end

function Quest73163:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73163:Start()
    print("Start")
end

function Quest73163:OnDestroy()
    print("OnDestroy")
end

function Quest73163:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73163:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73163:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73163:OnSubStart7316301(arg1)
    print("OnSubStart7316301")
end

function Quest73163:OnSubFinish7316301(arg1)
    print("OnSubFinish7316301")
end

function Quest73163:OnSubStart7316302(arg1)
    print("OnSubStart7316302")
    self.CreateQuestNpc(self, arg1, npcs.Npc20701Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20701Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20701Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316302_N20701").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73163:OnSubFinish7316302(arg1)
    print("OnSubFinish7316302")
end

function Quest73163:OnSubStart7316305(arg1)
    print("OnSubStart7316305")
    self:CreateQuestNpc(arg1, npcs.Npc20701Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20701Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20701Data.alias):CheckPlayerDistTask(8, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73163:OnSubFinish7316305(arg1)
    print("OnSubFinish7316305")
end

function Quest73163:OnSubStart7316303(arg1)
    print("OnSubStart7316303")
    self:CreateQuestNpc(arg1, npcs.Npc20701Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20701Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73163:OnSubFinish7316303(arg1)
    print("OnSubFinish7316303")
end

function Quest73163:OnSubStart7316304(arg1)
    print("OnSubStart7316304")
    self:RequestInteraction(npcs.Npc20701Data.alias)
    self:GetQuestNpcActor(npcs.Npc20701Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73163:OnSubFinish7316304(arg1)
    print("OnSubFinish7316304")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20701Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73163
