require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73181 = class("Quest73181", QuestActorProxy)
Quest73181.defaultAlias = "Quest73181"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73181:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73181:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318101"] = self.OnSubStart7318101,
        ["7318102"] = self.OnSubStart7318102,
        ["7318103"] = self.OnSubStart7318103
    }
end

function Quest73181:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318101"] = self.OnSubFinish7318101,
        ["7318102"] = self.OnSubFinish7318102,
        ["7318103"] = self.OnSubFinish7318103
    }
end

function Quest73181:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73181:Start()
    print("Start")
end

function Quest73181:OnDestroy()
    print("OnDestroy")
end

function Quest73181:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73181:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73181:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73181:OnSubStart7318101(arg1)
    print("OnSubStart7318101")
end

function Quest73181:OnSubFinish7318101(arg1)
    print("OnSubFinish7318101")
end

function Quest73181:OnSubStart7318102(arg1)
    print("OnSubStart7318102")
    self:CreateQuestNpc(arg1, npcs.Npc20808Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20808Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73181:OnSubFinish7318102(arg1)
    print("OnSubFinish7318102")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73181:OnSubStart7318103(arg1)
    print("OnSubStart7318103")
    self:GetQuestNpcActor(npcs.Npc20808Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73181:OnSubFinish7318103(arg1)
    print("OnSubFinish7318103")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20808Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73181
