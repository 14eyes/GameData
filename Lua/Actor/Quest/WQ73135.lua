require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73135 = class("Quest73135", QuestActorProxy)
Quest73135.defaultAlias = "Quest73135"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73135:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73135:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313501"] = self.OnSubStart7313501,
        ["7313502"] = self.OnSubStart7313502,
        ["7313503"] = self.OnSubStart7313503
    }
end

function Quest73135:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313501"] = self.OnSubFinish7313501,
        ["7313502"] = self.OnSubFinish7313502,
        ["7313503"] = self.OnSubFinish7313503
    }
end

function Quest73135:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73135:Start()
    print("Start")
end

function Quest73135:OnDestroy()
    print("OnDestroy")
end

function Quest73135:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73135:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73135:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73135:OnSubStart7313501(arg1)
    print("OnSubStart7313501")
end

function Quest73135:OnSubFinish7313501(arg1)
    print("OnSubFinish7313501")
end

function Quest73135:OnSubStart7313502(arg1)
    print("OnSubStart7313502")
    self:CreateQuestNpc(arg1, npcs.Npc20675Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20675Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73135:OnSubFinish7313502(arg1)
    print("OnSubFinish7313502")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73135:OnSubStart7313503(arg1)
    print("OnSubStart7313503")
    self:GetQuestNpcActor(npcs.Npc20675Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73135:OnSubFinish7313503(arg1)
    print("OnSubFinish7313503")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20675Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73135
