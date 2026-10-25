require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41401 = class("Quest41401", QuestActorProxy)
Quest41401.defaultAlias = "Quest41401"
local clientData
local mainID
local actorAlias

function Quest41401:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest41401:Start()
    print("Start")
end

function Quest41401:OnDestroy()
    print("OnDestroy")
end

function Quest41401:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41401:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41401:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest41401
