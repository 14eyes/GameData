require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73086 = class("Quest73086", QuestActorProxy)
Quest73086.defaultAlias = "Quest73086"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73086:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73086:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7308601"] = self.OnSubStart7308601,
        ["7308602"] = self.OnSubStart7308602,
        ["7308603"] = self.OnSubStart7308603,
        ["7308604"] = self.OnSubStart7308604,
        ["7308605"] = self.OnSubStart7308605,
        ["7308606"] = self.OnSubStart7308606,
        ["7308607"] = self.OnSubStart7308607,
        ["7308608"] = self.OnSubStart7308608,
        ["7308609"] = self.OnSubStart7308609,
        ["7308610"] = self.OnSubStart7308610,
        ["7308611"] = self.OnSubStart7308611,
        ["7308612"] = self.OnSubStart7308612,
        ["7308613"] = self.OnSubStart7308613,
        ["7308614"] = self.OnSubStart7308614,
        ["7308615"] = self.OnSubStart7308615
    }
end

function Quest73086:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7308601"] = self.OnSubFinish7308601,
        ["7308602"] = self.OnSubFinish7308602,
        ["7308603"] = self.OnSubFinish7308603,
        ["7308604"] = self.OnSubFinish7308604,
        ["7308605"] = self.OnSubFinish7308605,
        ["7308606"] = self.OnSubFinish7308606,
        ["7308607"] = self.OnSubFinish7308607,
        ["7308608"] = self.OnSubFinish7308608,
        ["7308609"] = self.OnSubFinish7308609,
        ["7308610"] = self.OnSubFinish7308610,
        ["7308611"] = self.OnSubFinish7308611,
        ["7308612"] = self.OnSubFinish7308612,
        ["7308613"] = self.OnSubFinish7308613,
        ["7308614"] = self.OnSubFinish7308614,
        ["7308615"] = self.OnSubFinish7308615
    }
end

function Quest73086:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73086:Start()
    print("Start")
end

function Quest73086:OnDestroy()
    print("OnDestroy")
end

function Quest73086:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73086:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73086:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73086:OnSubStart7308601(arg1)
    print("OnSubStart7308601")
    self:CreateQuestNpc(arg1, npcs.Npc4221Data.id, 1)
end

function Quest73086:OnSubFinish7308601(arg1)
    print("OnSubFinish7308601")
end

function Quest73086:OnSubStart7308602(arg1)
    print("OnSubStart7308602")
    self:CallDelay(5, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(10, 5, 3)
end

function Quest73086:OnSubFinish7308602(arg1)
    print("OnSubFinish7308602")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end, nil, "", false, true)
end

function Quest73086:OnSubStart7308603(arg1)
    print("OnSubStart7308603")
end

function Quest73086:OnSubFinish7308603(arg1)
    print("OnSubFinish7308603")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest73086:OnSubStart7308604(arg1)
    print("OnSubStart7308604")
end

function Quest73086:OnSubFinish7308604(arg1)
    print("OnSubFinish7308604")
end

function Quest73086:OnSubStart7308605(arg1)
    print("OnSubStart7308605")
end

function Quest73086:OnSubFinish7308605(arg1)
    print("OnSubFinish7308605")
    self:NarratorOnlyTask(datas.NarratorTable3, nil, "")
end

function Quest73086:OnSubStart7308606(arg1)
    print("OnSubStart7308606")
    self:CreateQuestNpc(arg1, npcs.Npc422101Data.id, 1)
end

function Quest73086:OnSubFinish7308606(arg1)
    print("OnSubFinish7308606")
end

function Quest73086:OnSubStart7308607(arg1)
    print("OnSubStart7308607")
    self:CallDelay(4, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(10, 10, 3)
    self:CallDelay(14, function(arg1)
        actorUtils.FinishQuestID(false, 7308607)
        arg1:CountDownUITerminate()
    end)
end

function Quest73086:OnSubFinish7308607(arg1)
    print("OnSubFinish7308607")
end

function Quest73086:OnSubStart7308608(arg1)
    print("OnSubStart7308608")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
    self:CallDelay(6, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
end

function Quest73086:OnSubFinish7308608(arg1)
    print("OnSubFinish7308608")
end

function Quest73086:OnSubStart7308609(arg1)
    print("OnSubStart7308609")
end

function Quest73086:OnSubFinish7308609(arg1)
    print("OnSubFinish7308609")
end

function Quest73086:OnSubStart7308610(arg1)
    print("OnSubStart7308610")
end

function Quest73086:OnSubFinish7308610(arg1)
    print("OnSubFinish7308610")
end

function Quest73086:OnSubStart7308611(arg1)
    print("OnSubStart7308611")
    self:CreateQuestNpc(arg1, npcs.Npc422102Data.id, 1)
end

function Quest73086:OnSubFinish7308611(arg1)
    print("OnSubFinish7308611")
end

function Quest73086:OnSubStart7308612(arg1)
    print("OnSubStart7308612")
    self:CallDelay(4, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(10, 10, 3)
    self:CallDelay(14, function(arg1)
        actorUtils.FinishQuestID(false, 7308612)
        arg1:CountDownUITerminate()
    end)
end

function Quest73086:OnSubFinish7308612(arg1)
    print("OnSubFinish7308612")
end

function Quest73086:OnSubStart7308613(arg1)
    print("OnSubStart7308613")
    self:NarratorOnlyTask(datas.NarratorTable3, nil, "")
    self:CallDelay(6, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
end

function Quest73086:OnSubFinish7308613(arg1)
    print("OnSubFinish7308613")
end

function Quest73086:OnSubStart7308614(arg1)
    print("OnSubStart7308614")
end

function Quest73086:OnSubFinish7308614(arg1)
    print("OnSubFinish7308614")
end

function Quest73086:OnSubStart7308615(arg1)
    print("OnSubStart7308615")
end

function Quest73086:OnSubFinish7308615(arg1)
    print("OnSubFinish7308615")
end

return Quest73086
