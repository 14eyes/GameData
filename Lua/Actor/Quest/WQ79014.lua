require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79014 = class("Quest79014", QuestActorProxy)
Quest79014.defaultAlias = "Quest79014"
local clientData
local mainID
local actorAlias

function Quest79014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest79014:Start()
    print("Start")
end

function Quest79014:OnDestroy()
    print("OnDestroy")
end

function Quest79014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest79014
