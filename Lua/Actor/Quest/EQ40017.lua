require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40017 = class("Quest40017", QuestActorProxy)
Quest40017.defaultAlias = "Quest40017"
local clientData
local mainID
local actorAlias

function Quest40017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40017:Start()
    print("Start")
end

function Quest40017:OnDestroy()
    print("OnDestroy")
end

function Quest40017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest40017
