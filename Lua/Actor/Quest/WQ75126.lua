require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75126 = class("Quest75126", QuestActorProxy)
Quest75126.defaultAlias = "Quest75126"
local clientData
local this
local mainID
local actorAlias

function Quest75126:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75126:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7512601"] = self.OnSubStart7512601, ["7512602"] = self.OnSubStart7512602}
end

function Quest75126:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7512601"] = self.OnSubFinish7512601, ["7512602"] = self.OnSubFinish7512602}
end

function Quest75126:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75126:Start()
    print("Start")
end

function Quest75126:OnDestroy()
    print("OnDestroy")
end

function Quest75126:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75126:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75126:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75126:OnSubStart7512601(arg1)
    print("OnSubStart7512601")
end

function Quest75126:OnSubFinish7512601(arg1)
    print("OnSubFinish7512601")
end

function Quest75126:OnSubStart7512602(arg1)
    print("OnSubStart7512602")
end

function Quest75126:OnSubFinish7512602(arg1)
    print("OnSubFinish7512602")
end

return Quest75126
