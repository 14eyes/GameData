require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73139 = class("Quest73139", QuestActorProxy)
Quest73139.defaultAlias = "Quest73139"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73139:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73139:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313901"] = self.OnSubStart7313901,
        ["7313902"] = self.OnSubStart7313902,
        ["7313903"] = self.OnSubStart7313903
    }
end

function Quest73139:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313901"] = self.OnSubFinish7313901,
        ["7313902"] = self.OnSubFinish7313902,
        ["7313903"] = self.OnSubFinish7313903
    }
end

function Quest73139:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73139:Start()
    print("Start")
end

function Quest73139:OnDestroy()
    print("OnDestroy")
end

function Quest73139:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73139:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73139:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73139:OnSubStart7313901(arg1)
    print("OnSubStart7313901")
end

function Quest73139:OnSubFinish7313901(arg1)
    print("OnSubFinish7313901")
end

function Quest73139:OnSubStart7313902(arg1)
    print("OnSubStart7313902")
    self:CreateQuestNpc(arg1, npcs.Npc20679Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20679Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73139:OnSubFinish7313902(arg1)
    print("OnSubFinish7313902")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73139:OnSubStart7313903(arg1)
    print("OnSubStart7313903")
    self:GetQuestNpcActor(npcs.Npc20679Data.alias):DoFreeStyle(1020, true, nil, true, true, false, false)
end

function Quest73139:OnSubFinish7313903(arg1)
    print("OnSubFinish7313903")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20679Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73139
