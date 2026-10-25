require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71655 = class("Quest71655", QuestActorProxy)
Quest71655.defaultAlias = "Quest71655"
local clientData
local mainID
local actorAlias

function Quest71655:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71655:Start()
    print("Start")
end

function Quest71655:OnDestroy()
    print("OnDestroy")
end

function Quest71655:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71655:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71655:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest71655
