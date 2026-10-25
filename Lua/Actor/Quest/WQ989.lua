require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest989 = class("Quest989", QuestActorProxy)
Quest989.defaultAlias = "Quest989"
local clientData
local mainID
local actorAlias

function Quest989:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest989:Start()
    print("Start")
end

function Quest989:OnDestroy()
    print("OnDestroy")
end

function Quest989:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest989:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest989:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest989
