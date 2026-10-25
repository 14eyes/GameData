require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72182 = class("Quest72182", QuestActorProxy)
Quest72182.defaultAlias = "Quest72182"
local clientData
local mainID
local actorAlias

function Quest72182:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest72182:Start()
    print("Start")
end

function Quest72182:OnDestroy()
    print("OnDestroy")
end

function Quest72182:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72182:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72182:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest72182
