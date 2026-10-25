require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16013 = class("Quest16013", QuestActorProxy)
Quest16013.defaultAlias = "Quest16013"
local clientData
local this
local mainID
local actorAlias

function Quest16013:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1601301"] = self.OnSubStart1601301,
        ["1601302"] = self.OnSubStart1601302,
        ["1601303"] = self.OnSubStart1601303
    }
end

function Quest16013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1601301"] = self.OnSubFinish1601301,
        ["1601302"] = self.OnSubFinish1601302,
        ["1601303"] = self.OnSubFinish1601303
    }
end

function Quest16013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16013:Start()
    print("Start")
end

function Quest16013:OnDestroy()
    print("OnDestroy")
end

function Quest16013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16013:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16013:OnSubStart1601301(arg1)
    print("OnSubStart1601301")
end

function Quest16013:OnSubFinish1601301(arg1)
    print("OnSubFinish1601301")
end

function Quest16013:OnSubStart1601302(arg1)
    print("OnSubStart1601302")
end

function Quest16013:OnSubFinish1601302(arg1)
    print("OnSubFinish1601302")
end

function Quest16013:OnSubStart1601303(arg1)
    print("OnSubStart1601303")
end

function Quest16013:OnSubFinish1601303(arg1)
    print("OnSubFinish1601303")
end

return Quest16013
