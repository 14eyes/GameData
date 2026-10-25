require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70662 = class("Quest70662", QuestActorProxy)
Quest70662.defaultAlias = "Quest70662"
local clientData
local mainID
local actorAlias

function Quest70662:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70662:Start()
    print("Start")
end

function Quest70662:OnDestroy()
    print("OnDestroy")
end

function Quest70662:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70662:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70662:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70662
