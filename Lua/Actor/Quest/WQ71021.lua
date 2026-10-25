require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71021 = class("Quest71021", QuestActorProxy)
Quest71021.defaultAlias = "Quest71021"
local clientData
local mainID
local actorAlias

function Quest71021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71021:Start()
    print("Start")
end

function Quest71021:OnDestroy()
    print("OnDestroy")
end

function Quest71021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest71021
