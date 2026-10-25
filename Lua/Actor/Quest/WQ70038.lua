require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70038 = class("Quest70038", QuestActorProxy)
Quest70038.defaultAlias = "Quest70038"
local clientData
local mainID
local actorAlias

function Quest70038:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70038:Start()
    print("Start")
end

function Quest70038:OnDestroy()
    print("OnDestroy")
end

function Quest70038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70038:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70038
