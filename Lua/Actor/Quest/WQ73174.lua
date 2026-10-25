require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73174 = class("Quest73174", QuestActorProxy)
Quest73174.defaultAlias = "Quest73174"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73174:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73174:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7317401"] = self.OnSubStart7317401,
        ["7317402"] = self.OnSubStart7317402,
        ["7317403"] = self.OnSubStart7317403
    }
end

function Quest73174:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7317401"] = self.OnSubFinish7317401,
        ["7317402"] = self.OnSubFinish7317402,
        ["7317403"] = self.OnSubFinish7317403
    }
end

function Quest73174:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73174:Start()
    print("Start")
end

function Quest73174:OnDestroy()
    print("OnDestroy")
end

function Quest73174:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73174:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73174:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73174:OnSubStart7317401(arg1)
    print("OnSubStart7317401")
end

function Quest73174:OnSubFinish7317401(arg1)
    print("OnSubFinish7317401")
end

function Quest73174:OnSubStart7317402(arg1)
    print("OnSubStart7317402")
    self:CreateQuestNpc(arg1, npcs.Npc20801Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20801Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest73174:OnSubFinish7317402(arg1)
    print("OnSubFinish7317402")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest73174:OnSubStart7317403(arg1)
    print("OnSubStart7317403")
    self:GetQuestNpcActor(npcs.Npc20801Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73174:OnSubFinish7317403(arg1)
    print("OnSubFinish7317403")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20801Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73174
