require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15046 = class("Quest15046", QuestActorProxy)
Quest15046.defaultAlias = "Quest15046"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest15046:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest15046:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1504601"] = self.OnSubStart1504601, ["1504602"] = self.OnSubStart1504602}
end

function Quest15046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1504601"] = self.OnSubFinish1504601, ["1504602"] = self.OnSubFinish1504602}
end

function Quest15046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15046:Start()
    print("Start")
end

function Quest15046:OnDestroy()
    print("OnDestroy")
end

function Quest15046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15046:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest15046:OnSubStart1504601(arg1)
    print("OnSubStart1504601")
    actorUtils.FinishQuestID(false, 1504601)
end

function Quest15046:OnSubFinish1504601(arg1)
    print("OnSubFinish1504601")
    this:QuestNarratorTask(datas.NarratorWithId_1504601, nil)
end

function Quest15046:OnSubStart1504602(arg1)
    print("OnSubStart1504602")
    actorUtils.FinishQuestID(false, 1504602)
end

function Quest15046:OnSubFinish1504602(arg1)
    print("OnSubFinish1504602")
end

return Quest15046
