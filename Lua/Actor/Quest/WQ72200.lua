require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72200 = class("Quest72200", QuestActorProxy)
Quest72200.defaultAlias = "Quest72200"
local clientData
local mainID
local actorAlias

function Quest72200:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest72200:Start()
    print("Start")
end

function Quest72200:OnDestroy()
    print("OnDestroy")
end

function Quest72200:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72200:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72200:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest72200
