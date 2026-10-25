require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71656 = class("Quest71656", QuestActorProxy)
Quest71656.defaultAlias = "Quest71656"
local clientData
local mainID
local actorAlias

function Quest71656:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71656:Start()
    print("Start")
end

function Quest71656:OnDestroy()
    print("OnDestroy")
end

function Quest71656:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71656:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71656:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest71656
