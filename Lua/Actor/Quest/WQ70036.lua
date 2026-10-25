require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70036 = class("Quest70036", QuestActorProxy)
Quest70036.defaultAlias = "Quest70036"
local clientData
local mainID
local actorAlias

function Quest70036:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70036:Start()
    print("Start")
end

function Quest70036:OnDestroy()
    print("OnDestroy")
end

function Quest70036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70036
