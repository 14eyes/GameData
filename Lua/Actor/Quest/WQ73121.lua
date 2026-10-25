require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73121 = class("Quest73121", QuestActorProxy)
Quest73121.defaultAlias = "Quest73121"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73121:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7312101"] = self.OnSubStart7312101,
        ["7312102"] = self.OnSubStart7312102,
        ["7312106"] = self.OnSubStart7312106,
        ["7312103"] = self.OnSubStart7312103,
        ["7312104"] = self.OnSubStart7312104,
        ["7312105"] = self.OnSubStart7312105
    }
end

function Quest73121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7312101"] = self.OnSubFinish7312101,
        ["7312102"] = self.OnSubFinish7312102,
        ["7312106"] = self.OnSubFinish7312106,
        ["7312103"] = self.OnSubFinish7312103,
        ["7312104"] = self.OnSubFinish7312104,
        ["7312105"] = self.OnSubFinish7312105
    }
end

function Quest73121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73121:Start()
    print("Start")
end

function Quest73121:OnDestroy()
    print("OnDestroy")
end

function Quest73121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73121:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73121:OnSubStart7312101(arg1)
    print("OnSubStart7312101")
end

function Quest73121:OnSubFinish7312101(arg1)
    print("OnSubFinish7312101")
end

function Quest73121:OnSubStart7312102(arg1)
    print("OnSubStart7312102")
    self.CreateQuestNpc(self, arg1, npcs.Npc20687Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20687Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20687Data.alias):CheckPlayerDistTask(6, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7312103_N20687").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73121:OnSubFinish7312102(arg1)
    print("OnSubFinish7312102")
end

function Quest73121:OnSubStart7312106(arg1)
    print("OnSubStart7312106")
    self:CreateQuestNpc(arg1, npcs.Npc20687Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20687Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20687Data.alias):CheckPlayerDistTask(6, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73121:OnSubFinish7312106(arg1)
    print("OnSubFinish7312106")
end

function Quest73121:OnSubStart7312103(arg1)
    print("OnSubStart7312103")
    self:CreateQuestNpc(arg1, npcs.Npc20687Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20687Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73121:OnSubFinish7312103(arg1)
    print("OnSubFinish7312103")
end

function Quest73121:OnSubStart7312104(arg1)
    print("OnSubStart7312104")
    self:GetQuestNpcActor(npcs.Npc20687Data.alias):DoFreeStyle(6030, true, nil, true, true, false, false)
end

function Quest73121:OnSubFinish7312104(arg1)
    print("OnSubFinish7312104")
end

function Quest73121:OnSubStart7312105(arg1)
    print("OnSubStart7312105")
    self:RequestInteraction(npcs.Npc20687Data.alias)
    self:GetQuestNpcActor(npcs.Npc20687Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73121:OnSubFinish7312105(arg1)
    print("OnSubFinish7312105")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20687Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73121
