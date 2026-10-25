require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72218 = class("Quest72218", QuestActorProxy)
Quest72218.defaultAlias = "Quest72218"
local clientData
local mainID
local actorAlias

function Quest72218:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest72218:Start()
    print("Start")
end

function Quest72218:OnDestroy()
    print("OnDestroy")
end

function Quest72218:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72218:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72218:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest72218
