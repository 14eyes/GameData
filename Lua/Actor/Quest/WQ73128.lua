require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73128 = class("Quest73128", QuestActorProxy)
Quest73128.defaultAlias = "Quest73128"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73128:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73128:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7312801"] = self.OnSubStart7312801,
        ["7312802"] = self.OnSubStart7312802,
        ["7312806"] = self.OnSubStart7312806,
        ["7312803"] = self.OnSubStart7312803,
        ["7312804"] = self.OnSubStart7312804,
        ["7312805"] = self.OnSubStart7312805
    }
end

function Quest73128:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7312801"] = self.OnSubFinish7312801,
        ["7312802"] = self.OnSubFinish7312802,
        ["7312806"] = self.OnSubFinish7312806,
        ["7312803"] = self.OnSubFinish7312803,
        ["7312804"] = self.OnSubFinish7312804,
        ["7312805"] = self.OnSubFinish7312805
    }
end

function Quest73128:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73128:Start()
    print("Start")
end

function Quest73128:OnDestroy()
    print("OnDestroy")
end

function Quest73128:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73128:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73128:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73128:OnSubStart7312801(arg1)
    print("OnSubStart7312801")
end

function Quest73128:OnSubFinish7312801(arg1)
    print("OnSubFinish7312801")
end

function Quest73128:OnSubStart7312802(arg1)
    print("OnSubStart7312802")
    self.CreateQuestNpc(self, arg1, npcs.Npc20694Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20694Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20694Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7312803_N20694").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73128:OnSubFinish7312802(arg1)
    print("OnSubFinish7312802")
end

function Quest73128:OnSubStart7312806(arg1)
    print("OnSubStart7312806")
    self:CreateQuestNpc(arg1, npcs.Npc20694Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20694Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20694Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73128:OnSubFinish7312806(arg1)
    print("OnSubFinish7312806")
end

function Quest73128:OnSubStart7312803(arg1)
    print("OnSubStart7312803")
    self:CreateQuestNpc(arg1, npcs.Npc20694Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20694Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73128:OnSubFinish7312803(arg1)
    print("OnSubFinish7312803")
end

function Quest73128:OnSubStart7312804(arg1)
    print("OnSubStart7312804")
    self:GetQuestNpcActor(npcs.Npc20694Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73128:OnSubFinish7312804(arg1)
    print("OnSubFinish7312804")
end

function Quest73128:OnSubStart7312805(arg1)
    print("OnSubStart7312805")
    self:RequestInteraction(npcs.Npc20694Data.alias)
    self:GetQuestNpcActor(npcs.Npc20694Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73128:OnSubFinish7312805(arg1)
    print("OnSubFinish7312805")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20694Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73128
