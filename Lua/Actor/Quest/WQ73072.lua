require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73072 = class("Quest73072", QuestActorProxy)
Quest73072.defaultAlias = "Quest73072"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73072:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73072:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307201"] = self.OnSubStart7307201,
        ["7307202"] = self.OnSubStart7307202,
        ["7307203"] = self.OnSubStart7307203
    }
end

function Quest73072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307201"] = self.OnSubFinish7307201,
        ["7307202"] = self.OnSubFinish7307202,
        ["7307203"] = self.OnSubFinish7307203
    }
end

function Quest73072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73072:Start()
    print("Start")
end

function Quest73072:OnDestroy()
    print("OnDestroy")
end

function Quest73072:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73072:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73072:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73072:OnSubStart7307201(arg1)
    print("OnSubStart7307201")
end

function Quest73072:OnSubFinish7307201(arg1)
    print("OnSubFinish7307201")
end

function Quest73072:OnSubStart7307202(arg1)
    print("OnSubStart7307202")
    self:CreateQuestNpc(arg1, npcs.Npc20668Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20668Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73072:OnSubFinish7307202(arg1)
    print("OnSubFinish7307202")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73072:OnSubStart7307203(arg1)
    print("OnSubStart7307203")
    self:GetQuestNpcActor(npcs.Npc20668Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73072:OnSubFinish7307203(arg1)
    print("OnSubFinish7307203")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20668Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73072
