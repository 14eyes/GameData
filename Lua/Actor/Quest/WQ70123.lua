require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70123 = class("Quest70123", QuestActorProxy)
Quest70123.defaultAlias = "Quest70123"
local clientData
local mainID
local actorAlias

function Quest70123:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70123:Start()
    print("Start")
end

function Quest70123:OnDestroy()
    print("OnDestroy")
end

function Quest70123:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70123:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70123:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70123
