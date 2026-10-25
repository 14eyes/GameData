require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22016 = class("Quest22016", QuestActorProxy)
Quest22016.defaultAlias = "Quest22016"
local clientData
local mainID
local actorAlias

function Quest22016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest22016:Start()
    print("Start")
end

function Quest22016:OnDestroy()
    print("OnDestroy")
end

function Quest22016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest22016
