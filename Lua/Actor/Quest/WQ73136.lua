require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73136 = class("Quest73136", QuestActorProxy)
Quest73136.defaultAlias = "Quest73136"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73136:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73136:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313601"] = self.OnSubStart7313601,
        ["7313602"] = self.OnSubStart7313602,
        ["7313603"] = self.OnSubStart7313603
    }
end

function Quest73136:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313601"] = self.OnSubFinish7313601,
        ["7313602"] = self.OnSubFinish7313602,
        ["7313603"] = self.OnSubFinish7313603
    }
end

function Quest73136:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73136:Start()
    print("Start")
end

function Quest73136:OnDestroy()
    print("OnDestroy")
end

function Quest73136:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73136:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73136:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73136:OnSubStart7313601(arg1)
    print("OnSubStart7313601")
end

function Quest73136:OnSubFinish7313601(arg1)
    print("OnSubFinish7313601")
end

function Quest73136:OnSubStart7313602(arg1)
    print("OnSubStart7313602")
    self:CreateQuestNpc(arg1, npcs.Npc20676Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20676Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73136:OnSubFinish7313602(arg1)
    print("OnSubFinish7313602")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73136:OnSubStart7313603(arg1)
    print("OnSubStart7313603")
    self:GetQuestNpcActor(npcs.Npc20676Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73136:OnSubFinish7313603(arg1)
    print("OnSubFinish7313603")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20676Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73136
