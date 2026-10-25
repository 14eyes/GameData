require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70037 = class("Quest70037", QuestActorProxy)
Quest70037.defaultAlias = "Quest70037"
local clientData
local mainID
local actorAlias

function Quest70037:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70037:Start()
    print("Start")
end

function Quest70037:OnDestroy()
    print("OnDestroy")
end

function Quest70037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70037
