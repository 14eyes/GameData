require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73118 = class("Quest73118", QuestActorProxy)
Quest73118.defaultAlias = "Quest73118"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73118:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73118:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7311801"] = self.OnSubStart7311801,
        ["7311802"] = self.OnSubStart7311802,
        ["7311806"] = self.OnSubStart7311806,
        ["7311803"] = self.OnSubStart7311803,
        ["7311804"] = self.OnSubStart7311804,
        ["7311805"] = self.OnSubStart7311805
    }
end

function Quest73118:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7311801"] = self.OnSubFinish7311801,
        ["7311802"] = self.OnSubFinish7311802,
        ["7311806"] = self.OnSubFinish7311806,
        ["7311803"] = self.OnSubFinish7311803,
        ["7311804"] = self.OnSubFinish7311804,
        ["7311805"] = self.OnSubFinish7311805
    }
end

function Quest73118:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73118:Start()
    print("Start")
end

function Quest73118:OnDestroy()
    print("OnDestroy")
end

function Quest73118:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73118:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73118:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73118:OnSubStart7311801(arg1)
    print("OnSubStart7311801")
end

function Quest73118:OnSubFinish7311801(arg1)
    print("OnSubFinish7311801")
end

function Quest73118:OnSubStart7311802(arg1)
    print("OnSubStart7311802")
    self.CreateQuestNpc(self, arg1, npcs.Npc20685Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20685Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20685Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7311803_N20685").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73118:OnSubFinish7311802(arg1)
    print("OnSubFinish7311802")
end

function Quest73118:OnSubStart7311806(arg1)
    print("OnSubStart7311806")
    self:CreateQuestNpc(arg1, npcs.Npc20685Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20685Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20685Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73118:OnSubFinish7311806(arg1)
    print("OnSubFinish7311806")
end

function Quest73118:OnSubStart7311803(arg1)
    print("OnSubStart7311803")
    self:CreateQuestNpc(arg1, npcs.Npc20685Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20685Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73118:OnSubFinish7311803(arg1)
    print("OnSubFinish7311803")
end

function Quest73118:OnSubStart7311804(arg1)
    print("OnSubStart7311804")
    self:GetQuestNpcActor(npcs.Npc20685Data.alias):DoFreeStyle(6040, true, nil, true, true, false, false)
end

function Quest73118:OnSubFinish7311804(arg1)
    print("OnSubFinish7311804")
end

function Quest73118:OnSubStart7311805(arg1)
    print("OnSubStart7311805")
    self:RequestInteraction(npcs.Npc20685Data.alias)
    self:GetQuestNpcActor(npcs.Npc20685Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73118:OnSubFinish7311805(arg1)
    print("OnSubFinish7311805")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20685Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73118
