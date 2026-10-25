require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73142 = class("Quest73142", QuestActorProxy)
Quest73142.defaultAlias = "Quest73142"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73142:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73142:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7314201"] = self.OnSubStart7314201,
        ["7314202"] = self.OnSubStart7314202,
        ["7314203"] = self.OnSubStart7314203
    }
end

function Quest73142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7314201"] = self.OnSubFinish7314201,
        ["7314202"] = self.OnSubFinish7314202,
        ["7314203"] = self.OnSubFinish7314203
    }
end

function Quest73142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73142:Start()
    print("Start")
end

function Quest73142:OnDestroy()
    print("OnDestroy")
end

function Quest73142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73142:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73142:OnSubStart7314201(arg1)
    print("OnSubStart7314201")
end

function Quest73142:OnSubFinish7314201(arg1)
    print("OnSubFinish7314201")
end

function Quest73142:OnSubStart7314202(arg1)
    print("OnSubStart7314202")
    self:CreateQuestNpc(arg1, npcs.Npc20682Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20682Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73142:OnSubFinish7314202(arg1)
    print("OnSubFinish7314202")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73142:OnSubStart7314203(arg1)
    print("OnSubStart7314203")
    self:GetQuestNpcActor(npcs.Npc20682Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73142:OnSubFinish7314203(arg1)
    print("OnSubFinish7314203")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20682Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73142
