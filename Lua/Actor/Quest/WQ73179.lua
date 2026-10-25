require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73179 = class("Quest73179", QuestActorProxy)
Quest73179.defaultAlias = "Quest73179"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73179:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73179:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317901"] = self.OnSubStart7317901,
        ["7317902"] = self.OnSubStart7317902,
        ["7317903"] = self.OnSubStart7317903
    }
end

function Quest73179:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317901"] = self.OnSubFinish7317901,
        ["7317902"] = self.OnSubFinish7317902,
        ["7317903"] = self.OnSubFinish7317903
    }
end

function Quest73179:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73179:Start()
    print("Start")
end

function Quest73179:OnDestroy()
    print("OnDestroy")
end

function Quest73179:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73179:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73179:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73179:OnSubStart7317901(arg1)
    print("OnSubStart7317901")
end

function Quest73179:OnSubFinish7317901(arg1)
    print("OnSubFinish7317901")
end

function Quest73179:OnSubStart7317902(arg1)
    print("OnSubStart7317902")
    self:CreateQuestNpc(arg1, npcs.Npc20806Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20806Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73179:OnSubFinish7317902(arg1)
    print("OnSubFinish7317902")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73179:OnSubStart7317903(arg1)
    print("OnSubStart7317903")
    self:GetQuestNpcActor(npcs.Npc20806Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73179:OnSubFinish7317903(arg1)
    print("OnSubFinish7317903")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20806Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73179
