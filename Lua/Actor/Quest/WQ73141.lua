require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73141 = class("Quest73141", QuestActorProxy)
Quest73141.defaultAlias = "Quest73141"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73141:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73141:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7314101"] = self.OnSubStart7314101,
        ["7314102"] = self.OnSubStart7314102,
        ["7314103"] = self.OnSubStart7314103
    }
end

function Quest73141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7314101"] = self.OnSubFinish7314101,
        ["7314102"] = self.OnSubFinish7314102,
        ["7314103"] = self.OnSubFinish7314103
    }
end

function Quest73141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73141:Start()
    print("Start")
end

function Quest73141:OnDestroy()
    print("OnDestroy")
end

function Quest73141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73141:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73141:OnSubStart7314101(arg1)
    print("OnSubStart7314101")
end

function Quest73141:OnSubFinish7314101(arg1)
    print("OnSubFinish7314101")
end

function Quest73141:OnSubStart7314102(arg1)
    print("OnSubStart7314102")
    self:CreateQuestNpc(arg1, npcs.Npc20681Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20681Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73141:OnSubFinish7314102(arg1)
    print("OnSubFinish7314102")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73141:OnSubStart7314103(arg1)
    print("OnSubStart7314103")
    self:GetQuestNpcActor(npcs.Npc20681Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73141:OnSubFinish7314103(arg1)
    print("OnSubFinish7314103")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20681Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73141
