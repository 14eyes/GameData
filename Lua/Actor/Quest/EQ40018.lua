require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40018 = class("Quest40018", QuestActorProxy)
Quest40018.defaultAlias = "Quest40018"
local clientData
local mainID
local actorAlias

function Quest40018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40018:Start()
    print("Start")
end

function Quest40018:OnDestroy()
    print("OnDestroy")
end

function Quest40018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest40018
