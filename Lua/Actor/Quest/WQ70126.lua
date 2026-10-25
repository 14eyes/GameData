require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70126 = class("Quest70126", QuestActorProxy)
Quest70126.defaultAlias = "Quest70126"
local clientData
local mainID
local actorAlias

function Quest70126:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70126:Start()
    print("Start")
end

function Quest70126:OnDestroy()
    print("OnDestroy")
end

function Quest70126:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70126:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70126:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70126
