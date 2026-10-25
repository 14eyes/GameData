require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70122 = class("Quest70122", QuestActorProxy)
Quest70122.defaultAlias = "Quest70122"
local clientData
local mainID
local actorAlias

function Quest70122:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70122:Start()
    print("Start")
end

function Quest70122:OnDestroy()
    print("OnDestroy")
end

function Quest70122:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70122:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70122:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70122
