require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15050 = class("Quest15050", QuestActorProxy)
Quest15050.defaultAlias = "Quest15050"
local clientData
local this
local mainID
local actorAlias

function Quest15050:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest15050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1505001"] = self.OnSubStart1505001,
        ["1505002"] = self.OnSubStart1505002,
        ["1505003"] = self.OnSubStart1505003
    }
end

function Quest15050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1505001"] = self.OnSubFinish1505001,
        ["1505002"] = self.OnSubFinish1505002,
        ["1505003"] = self.OnSubFinish1505003
    }
end

function Quest15050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15050:Start()
    print("Start")
end

function Quest15050:OnDestroy()
    print("OnDestroy")
end

function Quest15050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15050:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15050:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest15050:OnSubStart1505001(arg1)
    print("OnSubStart1505001")
    actorUtils.FinishQuestID(false, 1505001)
end

function Quest15050:OnSubFinish1505001(arg1)
    print("OnSubFinish1505001")
end

function Quest15050:OnSubStart1505002(arg1)
    print("OnSubStart1505002")
    actorUtils.FinishQuestID(false, 1505002)
end

function Quest15050:OnSubFinish1505002(arg1)
    print("OnSubFinish1505002")
end

function Quest15050:OnSubStart1505003(arg1)
    print("OnSubStart1505003")
end

function Quest15050:OnSubFinish1505003(arg1)
    print("OnSubFinish1505003")
end

return Quest15050
