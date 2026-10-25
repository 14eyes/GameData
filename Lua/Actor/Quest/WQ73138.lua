require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73138 = class("Quest73138", QuestActorProxy)
Quest73138.defaultAlias = "Quest73138"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73138:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73138:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313801"] = self.OnSubStart7313801,
        ["7313802"] = self.OnSubStart7313802,
        ["7313803"] = self.OnSubStart7313803
    }
end

function Quest73138:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313801"] = self.OnSubFinish7313801,
        ["7313802"] = self.OnSubFinish7313802,
        ["7313803"] = self.OnSubFinish7313803
    }
end

function Quest73138:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73138:Start()
    print("Start")
end

function Quest73138:OnDestroy()
    print("OnDestroy")
end

function Quest73138:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73138:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73138:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73138:OnSubStart7313801(arg1)
    print("OnSubStart7313801")
end

function Quest73138:OnSubFinish7313801(arg1)
    print("OnSubFinish7313801")
end

function Quest73138:OnSubStart7313802(arg1)
    print("OnSubStart7313802")
    self:CreateQuestNpc(arg1, npcs.Npc20678Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20678Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73138:OnSubFinish7313802(arg1)
    print("OnSubFinish7313802")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73138:OnSubStart7313803(arg1)
    print("OnSubStart7313803")
    self:GetQuestNpcActor(npcs.Npc20678Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73138:OnSubFinish7313803(arg1)
    print("OnSubFinish7313803")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20678Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73138
