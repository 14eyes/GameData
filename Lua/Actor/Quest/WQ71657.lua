require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71657 = class("Quest71657", QuestActorProxy)
Quest71657.defaultAlias = "Quest71657"
local clientData
local mainID
local actorAlias

function Quest71657:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71657:Start()
    print("Start")
end

function Quest71657:OnDestroy()
    print("OnDestroy")
end

function Quest71657:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71657:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71657:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest71657
