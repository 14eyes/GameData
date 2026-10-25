require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73259 = class("Quest73259", QuestActorProxy)
Quest73259.defaultAlias = "Quest73259"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73259:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73259:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7325901"] = self.OnSubStart7325901,
        ["7325902"] = self.OnSubStart7325902,
        ["7325903"] = self.OnSubStart7325903,
        ["7325904"] = self.OnSubStart7325904,
        ["7325905"] = self.OnSubStart7325905
    }
end

function Quest73259:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7325901"] = self.OnSubFinish7325901,
        ["7325902"] = self.OnSubFinish7325902,
        ["7325903"] = self.OnSubFinish7325903,
        ["7325904"] = self.OnSubFinish7325904,
        ["7325905"] = self.OnSubFinish7325905
    }
end

function Quest73259:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73259:Start()
    print("Start")
end

function Quest73259:OnDestroy()
    print("OnDestroy")
end

function Quest73259:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73259:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73259:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73259:OnSubStart7325901(arg1)
    print("OnSubStart7325901")
    self:CreateQuestNpc(arg1, npcs.Npc422101Data.id, 1)
end

function Quest73259:OnSubFinish7325901(arg1)
    print("OnSubFinish7325901")
end

function Quest73259:OnSubStart7325902(arg1)
    print("OnSubStart7325902")
    self:CallDelay(5, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(10, 5, 3)
end

function Quest73259:OnSubFinish7325902(arg1)
    print("OnSubFinish7325902")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_732599901)
    end, nil, "", false, true)
end

function Quest73259:OnSubStart7325903(arg1)
    print("OnSubStart7325903")
end

function Quest73259:OnSubFinish7325903(arg1)
    print("OnSubFinish7325903")
    self:NarratorOnlyTaskByData(datas.Narrator_732599902)
end

function Quest73259:OnSubStart7325904(arg1)
    print("OnSubStart7325904")
end

function Quest73259:OnSubFinish7325904(arg1)
    print("OnSubFinish7325904")
end

function Quest73259:OnSubStart7325905(arg1)
    print("OnSubStart7325905")
end

function Quest73259:OnSubFinish7325905(arg1)
    print("OnSubFinish7325905")
    self:NarratorOnlyTaskByData(datas.Narrator_732599903)
end

return Quest73259
