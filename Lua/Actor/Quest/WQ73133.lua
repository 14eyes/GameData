require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73133 = class("Quest73133", QuestActorProxy)
Quest73133.defaultAlias = "Quest73133"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73133:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73133:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313301"] = self.OnSubStart7313301,
        ["7313302"] = self.OnSubStart7313302,
        ["7313303"] = self.OnSubStart7313303
    }
end

function Quest73133:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313301"] = self.OnSubFinish7313301,
        ["7313302"] = self.OnSubFinish7313302,
        ["7313303"] = self.OnSubFinish7313303
    }
end

function Quest73133:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73133:Start()
    print("Start")
end

function Quest73133:OnDestroy()
    print("OnDestroy")
end

function Quest73133:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73133:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73133:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73133:OnSubStart7313301(arg1)
    print("OnSubStart7313301")
end

function Quest73133:OnSubFinish7313301(arg1)
    print("OnSubFinish7313301")
end

function Quest73133:OnSubStart7313302(arg1)
    print("OnSubStart7313302")
    self:CreateQuestNpc(arg1, npcs.Npc20673Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20673Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73133:OnSubFinish7313302(arg1)
    print("OnSubFinish7313302")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73133:OnSubStart7313303(arg1)
    print("OnSubStart7313303")
    self:GetQuestNpcActor(npcs.Npc20673Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73133:OnSubFinish7313303(arg1)
    print("OnSubFinish7313303")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20673Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73133
