require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71653 = class("Quest71653", QuestActorProxy)
Quest71653.defaultAlias = "Quest71653"
local clientData
local mainID
local actorAlias

function Quest71653:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71653:Start()
    print("Start")
end

function Quest71653:OnDestroy()
    print("OnDestroy")
end

function Quest71653:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71653:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71653:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest71653
