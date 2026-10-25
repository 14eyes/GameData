require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73175 = class("Quest73175", QuestActorProxy)
Quest73175.defaultAlias = "Quest73175"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73175:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73175:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317501"] = self.OnSubStart7317501,
        ["7317502"] = self.OnSubStart7317502,
        ["7317503"] = self.OnSubStart7317503
    }
end

function Quest73175:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317501"] = self.OnSubFinish7317501,
        ["7317502"] = self.OnSubFinish7317502,
        ["7317503"] = self.OnSubFinish7317503
    }
end

function Quest73175:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73175:Start()
    print("Start")
end

function Quest73175:OnDestroy()
    print("OnDestroy")
end

function Quest73175:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73175:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73175:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73175:OnSubStart7317501(arg1)
    print("OnSubStart7317501")
end

function Quest73175:OnSubFinish7317501(arg1)
    print("OnSubFinish7317501")
end

function Quest73175:OnSubStart7317502(arg1)
    print("OnSubStart7317502")
    self:CreateQuestNpc(arg1, npcs.Npc20802Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20802Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73175:OnSubFinish7317502(arg1)
    print("OnSubFinish7317502")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73175:OnSubStart7317503(arg1)
    print("OnSubStart7317503")
    self:GetQuestNpcActor(npcs.Npc20802Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73175:OnSubFinish7317503(arg1)
    print("OnSubFinish7317503")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20802Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73175
