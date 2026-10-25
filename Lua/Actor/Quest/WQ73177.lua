require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73177 = class("Quest73177", QuestActorProxy)
Quest73177.defaultAlias = "Quest73177"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73177:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73177:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317701"] = self.OnSubStart7317701,
        ["7317702"] = self.OnSubStart7317702,
        ["7317703"] = self.OnSubStart7317703
    }
end

function Quest73177:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317701"] = self.OnSubFinish7317701,
        ["7317702"] = self.OnSubFinish7317702,
        ["7317703"] = self.OnSubFinish7317703
    }
end

function Quest73177:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73177:Start()
    print("Start")
end

function Quest73177:OnDestroy()
    print("OnDestroy")
end

function Quest73177:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73177:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73177:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73177:OnSubStart7317701(arg1)
    print("OnSubStart7317701")
end

function Quest73177:OnSubFinish7317701(arg1)
    print("OnSubFinish7317701")
end

function Quest73177:OnSubStart7317702(arg1)
    print("OnSubStart7317702")
    self:CreateQuestNpc(arg1, npcs.Npc20804Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20804Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73177:OnSubFinish7317702(arg1)
    print("OnSubFinish7317702")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73177:OnSubStart7317703(arg1)
    print("OnSubStart7317703")
    self:GetQuestNpcActor(npcs.Npc20804Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73177:OnSubFinish7317703(arg1)
    print("OnSubFinish7317703")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20804Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73177
