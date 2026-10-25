require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72102 = class("Quest72102", QuestActorProxy)
Quest72102.defaultAlias = "Quest72102"
local clientData
local mainID
local actorAlias

function Quest72102:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest72102:Start()
    print("Start")
end

function Quest72102:OnDestroy()
    print("OnDestroy")
end

function Quest72102:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72102:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest72102
