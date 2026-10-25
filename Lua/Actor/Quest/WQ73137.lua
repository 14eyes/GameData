require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73137 = class("Quest73137", QuestActorProxy)
Quest73137.defaultAlias = "Quest73137"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73137:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73137:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313701"] = self.OnSubStart7313701,
        ["7313702"] = self.OnSubStart7313702,
        ["7313703"] = self.OnSubStart7313703
    }
end

function Quest73137:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313701"] = self.OnSubFinish7313701,
        ["7313702"] = self.OnSubFinish7313702,
        ["7313703"] = self.OnSubFinish7313703
    }
end

function Quest73137:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73137:Start()
    print("Start")
end

function Quest73137:OnDestroy()
    print("OnDestroy")
end

function Quest73137:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73137:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73137:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73137:OnSubStart7313701(arg1)
    print("OnSubStart7313701")
end

function Quest73137:OnSubFinish7313701(arg1)
    print("OnSubFinish7313701")
end

function Quest73137:OnSubStart7313702(arg1)
    print("OnSubStart7313702")
    self:CreateQuestNpc(arg1, npcs.Npc20677Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20677Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73137:OnSubFinish7313702(arg1)
    print("OnSubFinish7313702")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73137:OnSubStart7313703(arg1)
    print("OnSubStart7313703")
    self:GetQuestNpcActor(npcs.Npc20677Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73137:OnSubFinish7313703(arg1)
    print("OnSubFinish7313703")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20677Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73137
