require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73079 = class("Quest73079", QuestActorProxy)
Quest73079.defaultAlias = "Quest73079"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73079:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73079:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307901"] = self.OnSubStart7307901,
        ["7307902"] = self.OnSubStart7307902,
        ["7307903"] = self.OnSubStart7307903
    }
end

function Quest73079:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307901"] = self.OnSubFinish7307901,
        ["7307902"] = self.OnSubFinish7307902,
        ["7307903"] = self.OnSubFinish7307903
    }
end

function Quest73079:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73079:Start()
    print("Start")
end

function Quest73079:OnDestroy()
    print("OnDestroy")
end

function Quest73079:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73079:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73079:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73079:OnSubStart7307901(arg1)
    print("OnSubStart7307901")
end

function Quest73079:OnSubFinish7307901(arg1)
    print("OnSubFinish7307901")
end

function Quest73079:OnSubStart7307902(arg1)
    print("OnSubStart7307902")
    self:CreateQuestNpc(arg1, npcs.Npc20670Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20670Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73079:OnSubFinish7307902(arg1)
    print("OnSubFinish7307902")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73079:OnSubStart7307903(arg1)
    print("OnSubStart7307903")
    self:GetQuestNpcActor(npcs.Npc20670Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73079:OnSubFinish7307903(arg1)
    print("OnSubFinish7307903")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20670Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73079
