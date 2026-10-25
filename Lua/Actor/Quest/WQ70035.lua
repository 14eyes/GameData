require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70035 = class("Quest70035", QuestActorProxy)
Quest70035.defaultAlias = "Quest70035"
local clientData
local mainID
local actorAlias

function Quest70035:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70035:Start()
    print("Start")
end

function Quest70035:OnDestroy()
    print("OnDestroy")
end

function Quest70035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70035
