require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41317 = class("Quest41317", QuestActorProxy)
Quest41317.defaultAlias = "Quest41317"
local clientData
local mainID
local actorAlias

function Quest41317:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest41317:Start()
    print("Start")
end

function Quest41317:OnDestroy()
    print("OnDestroy")
end

function Quest41317:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41317:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41317:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest41317
