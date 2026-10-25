require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70034 = class("Quest70034", QuestActorProxy)
Quest70034.defaultAlias = "Quest70034"
local clientData
local mainID
local actorAlias

function Quest70034:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70034:Start()
    print("Start")
end

function Quest70034:OnDestroy()
    print("OnDestroy")
end

function Quest70034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70034
