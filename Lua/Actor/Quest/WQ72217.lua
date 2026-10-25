require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72217 = class("Quest72217", QuestActorProxy)
Quest72217.defaultAlias = "Quest72217"
local clientData
local mainID
local actorAlias

function Quest72217:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest72217:Start()
    print("Start")
end

function Quest72217:OnDestroy()
    print("OnDestroy")
end

function Quest72217:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72217:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72217:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest72217
