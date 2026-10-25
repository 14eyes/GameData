require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72194 = class("Quest72194", QuestActorProxy)
Quest72194.defaultAlias = "Quest72194"
local clientData
local mainID
local actorAlias

function Quest72194:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest72194:Start()
    print("Start")
end

function Quest72194:OnDestroy()
    print("OnDestroy")
end

function Quest72194:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72194:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72194:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest72194
