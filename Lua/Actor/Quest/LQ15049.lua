require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15049 = class("Quest15049", QuestActorProxy)
Quest15049.defaultAlias = "Quest15049"
local clientData
local this
local mainID
local actorAlias

function Quest15049:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest15049:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1504901"] = self.OnSubStart1504901,
        ["1504902"] = self.OnSubStart1504902,
        ["1504907"] = self.OnSubStart1504907,
        ["1504908"] = self.OnSubStart1504908,
        ["1504903"] = self.OnSubStart1504903,
        ["1504909"] = self.OnSubStart1504909,
        ["1504910"] = self.OnSubStart1504910,
        ["1504904"] = self.OnSubStart1504904,
        ["1504905"] = self.OnSubStart1504905,
        ["1504906"] = self.OnSubStart1504906
    }
end

function Quest15049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1504901"] = self.OnSubFinish1504901,
        ["1504902"] = self.OnSubFinish1504902,
        ["1504907"] = self.OnSubFinish1504907,
        ["1504908"] = self.OnSubFinish1504908,
        ["1504903"] = self.OnSubFinish1504903,
        ["1504909"] = self.OnSubFinish1504909,
        ["1504910"] = self.OnSubFinish1504910,
        ["1504904"] = self.OnSubFinish1504904,
        ["1504905"] = self.OnSubFinish1504905,
        ["1504906"] = self.OnSubFinish1504906
    }
end

function Quest15049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15049:Start()
    print("Start")
end

function Quest15049:OnDestroy()
    print("OnDestroy")
end

function Quest15049:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15049:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15049:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15049:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest15049:OnSubStart1504901(arg1)
    print("OnSubStart1504901")
end

function Quest15049:OnSubFinish1504901(arg1)
    print("OnSubFinish1504901")
end

function Quest15049:OnSubStart1504902(arg1)
    print("OnSubStart1504902")
end

function Quest15049:OnSubFinish1504902(arg1)
    print("OnSubFinish1504902")
end

function Quest15049:OnSubStart1504907(arg1)
    print("OnSubStart1504907")
end

function Quest15049:OnSubFinish1504907(arg1)
    print("OnSubFinish1504907")
end

function Quest15049:OnSubStart1504908(arg1)
    print("OnSubStart1504908")
end

function Quest15049:OnSubFinish1504908(arg1)
    print("OnSubFinish1504908")
end

function Quest15049:OnSubStart1504903(arg1)
    print("OnSubStart1504903")
end

function Quest15049:OnSubFinish1504903(arg1)
    print("OnSubFinish1504903")
end

function Quest15049:OnSubStart1504909(arg1)
    print("OnSubStart1504909")
end

function Quest15049:OnSubFinish1504909(arg1)
    print("OnSubFinish1504909")
end

function Quest15049:OnSubStart1504910(arg1)
    print("OnSubStart1504910")
end

function Quest15049:OnSubFinish1504910(arg1)
    print("OnSubFinish1504910")
end

function Quest15049:OnSubStart1504904(arg1)
    print("OnSubStart1504904")
end

function Quest15049:OnSubFinish1504904(arg1)
    print("OnSubFinish1504904")
end

function Quest15049:OnSubStart1504905(arg1)
    print("OnSubStart1504905")
end

function Quest15049:OnSubFinish1504905(arg1)
    print("OnSubFinish1504905")
end

function Quest15049:OnSubStart1504906(arg1)
    print("OnSubStart1504906")
end

function Quest15049:OnSubFinish1504906(arg1)
    print("OnSubFinish1504906")
end

return Quest15049
