require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73082 = class("Quest73082", QuestActorProxy)
Quest73082.defaultAlias = "Quest73082"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73082:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73082:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7308201"] = self.OnSubStart7308201,
        ["7308204"] = self.OnSubStart7308204,
        ["7308205"] = self.OnSubStart7308205,
        ["7308202"] = self.OnSubStart7308202,
        ["7308203"] = self.OnSubStart7308203
    }
end

function Quest73082:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7308201"] = self.OnSubFinish7308201,
        ["7308204"] = self.OnSubFinish7308204,
        ["7308205"] = self.OnSubFinish7308205,
        ["7308202"] = self.OnSubFinish7308202,
        ["7308203"] = self.OnSubFinish7308203
    }
end

function Quest73082:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73082:Start()
    print("Start")
end

function Quest73082:OnDestroy()
    print("OnDestroy")
end

function Quest73082:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73082:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73082:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73082:OnSubStart7308201(arg1)
    print("OnSubStart7308201")
end

function Quest73082:OnSubFinish7308201(arg1)
    print("OnSubFinish7308201")
end

function Quest73082:OnSubStart7308204(arg1)
    print("OnSubStart7308204")
    self.CreateQuestNpc(self, arg1, npcs.Npc20671Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20671Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20671Data.alias):CheckPlayerDistTask(15, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7308202_N20671").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73082:OnSubFinish7308204(arg1)
    print("OnSubFinish7308204")
end

function Quest73082:OnSubStart7308205(arg1)
    print("OnSubStart7308205")
    self:CreateQuestNpc(arg1, npcs.Npc20671Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20671Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20671Data.alias):CheckPlayerDistTask(15, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73082:OnSubFinish7308205(arg1)
    print("OnSubFinish7308205")
end

function Quest73082:OnSubStart7308202(arg1)
    print("OnSubStart7308202")
    self:CreateQuestNpc(arg1, npcs.Npc20671Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20671Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73082:OnSubFinish7308202(arg1)
    print("OnSubFinish7308202")
end

function Quest73082:OnSubStart7308203(arg1)
    print("OnSubStart7308203")
    self:RequestInteraction(npcs.Npc20671Data.alias)
    self:GetQuestNpcActor(npcs.Npc20671Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73082:OnSubFinish7308203(arg1)
    print("OnSubFinish7308203")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20671Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73082
