require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79015 = class("Quest79015", QuestActorProxy)
Quest79015.defaultAlias = "Quest79015"
local clientData
local mainID
local actorAlias

function Quest79015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest79015:Start()
    print("Start")
end

function Quest79015:OnDestroy()
    print("OnDestroy")
end

function Quest79015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest79015
