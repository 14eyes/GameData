require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70127 = class("Quest70127", QuestActorProxy)
Quest70127.defaultAlias = "Quest70127"
local clientData
local mainID
local actorAlias

function Quest70127:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70127:Start()
    print("Start")
end

function Quest70127:OnDestroy()
    print("OnDestroy")
end

function Quest70127:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70127:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70127:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70127
