require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40019 = class("Quest40019", QuestActorProxy)
Quest40019.defaultAlias = "Quest40019"
local clientData
local mainID
local actorAlias

function Quest40019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40019:Start()
    print("Start")
end

function Quest40019:OnDestroy()
    print("OnDestroy")
end

function Quest40019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest40019
