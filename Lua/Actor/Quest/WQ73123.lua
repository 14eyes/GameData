require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73123 = class("Quest73123", QuestActorProxy)
Quest73123.defaultAlias = "Quest73123"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73123:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73123:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7312301"] = self.OnSubStart7312301,
        ["7312302"] = self.OnSubStart7312302,
        ["7312306"] = self.OnSubStart7312306,
        ["7312303"] = self.OnSubStart7312303,
        ["7312304"] = self.OnSubStart7312304,
        ["7312305"] = self.OnSubStart7312305
    }
end

function Quest73123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7312301"] = self.OnSubFinish7312301,
        ["7312302"] = self.OnSubFinish7312302,
        ["7312306"] = self.OnSubFinish7312306,
        ["7312303"] = self.OnSubFinish7312303,
        ["7312304"] = self.OnSubFinish7312304,
        ["7312305"] = self.OnSubFinish7312305
    }
end

function Quest73123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73123:Start()
    print("Start")
end

function Quest73123:OnDestroy()
    print("OnDestroy")
end

function Quest73123:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73123:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73123:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73123:OnSubStart7312301(arg1)
    print("OnSubStart7312301")
end

function Quest73123:OnSubFinish7312301(arg1)
    print("OnSubFinish7312301")
end

function Quest73123:OnSubStart7312302(arg1)
    print("OnSubStart7312302")
    self.CreateQuestNpc(self, arg1, npcs.Npc20689Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20689Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20689Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "QQ7312303_N20689").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73123:OnSubFinish7312302(arg1)
    print("OnSubFinish7312302")
end

function Quest73123:OnSubStart7312306(arg1)
    print("OnSubStart7312306")
    self:CreateQuestNpc(arg1, npcs.Npc20689Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20689Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20689Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73123:OnSubFinish7312306(arg1)
    print("OnSubFinish7312306")
end

function Quest73123:OnSubStart7312303(arg1)
    print("OnSubStart7312303")
    self:CreateQuestNpc(arg1, npcs.Npc20689Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20689Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73123:OnSubFinish7312303(arg1)
    print("OnSubFinish7312303")
end

function Quest73123:OnSubStart7312304(arg1)
    print("OnSubStart7312304")
    self:GetQuestNpcActor(npcs.Npc20689Data.alias):DoFreeStyle(6040, true, nil, true, true, false, false)
end

function Quest73123:OnSubFinish7312304(arg1)
    print("OnSubFinish7312304")
end

function Quest73123:OnSubStart7312305(arg1)
    print("OnSubStart7312305")
    self:RequestInteraction(npcs.Npc20689Data.alias)
    self:GetQuestNpcActor(npcs.Npc20689Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73123:OnSubFinish7312305(arg1)
    print("OnSubFinish7312305")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20689Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73123
