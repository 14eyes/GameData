require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70103 = class("Quest70103", QuestActorProxy)
Quest70103.defaultAlias = "Quest70103"
local clientData
local mainID
local actorAlias

function Quest70103:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70103:Start()
    print("Start")
end

function Quest70103:OnDestroy()
    print("OnDestroy")
end

function Quest70103:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70103:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70103
