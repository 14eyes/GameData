require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41314 = class("Quest41314", QuestActorProxy)
Quest41314.defaultAlias = "Quest41314"
local clientData
local mainID
local actorAlias

function Quest41314:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest41314:Start()
    print("Start")
end

function Quest41314:OnDestroy()
    print("OnDestroy")
end

function Quest41314:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41314:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41314:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest41314
