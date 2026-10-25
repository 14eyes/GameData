require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70109 = class("Quest70109", QuestActorProxy)
Quest70109.defaultAlias = "Quest70109"
local clientData
local mainID
local actorAlias

function Quest70109:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70109:Start()
    print("Start")
end

function Quest70109:OnDestroy()
    print("OnDestroy")
end

function Quest70109:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70109:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70109:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70109
