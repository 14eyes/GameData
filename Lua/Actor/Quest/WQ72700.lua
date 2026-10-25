require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72700 = class("Quest72700", QuestActorProxy)
Quest72700.defaultAlias = "Quest72700"
local clientData
local mainID
local actorAlias

function Quest72700:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest72700:Start()
    print("Start")
end

function Quest72700:OnDestroy()
    print("OnDestroy")
end

function Quest72700:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72700:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72700:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest72700
