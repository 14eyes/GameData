require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73143 = class("Quest73143", QuestActorProxy)
Quest73143.defaultAlias = "Quest73143"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73143:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73143:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7314301"] = self.OnSubStart7314301,
        ["7314302"] = self.OnSubStart7314302,
        ["7314303"] = self.OnSubStart7314303
    }
end

function Quest73143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7314301"] = self.OnSubFinish7314301,
        ["7314302"] = self.OnSubFinish7314302,
        ["7314303"] = self.OnSubFinish7314303
    }
end

function Quest73143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73143:Start()
    print("Start")
end

function Quest73143:OnDestroy()
    print("OnDestroy")
end

function Quest73143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73143:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73143:OnSubStart7314301(arg1)
    print("OnSubStart7314301")
end

function Quest73143:OnSubFinish7314301(arg1)
    print("OnSubFinish7314301")
end

function Quest73143:OnSubStart7314302(arg1)
    print("OnSubStart7314302")
    self:CreateQuestNpc(arg1, npcs.Npc20683Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20683Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73143:OnSubFinish7314302(arg1)
    print("OnSubFinish7314302")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73143:OnSubStart7314303(arg1)
    print("OnSubStart7314303")
    self:GetQuestNpcActor(npcs.Npc20683Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73143:OnSubFinish7314303(arg1)
    print("OnSubFinish7314303")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20683Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73143
