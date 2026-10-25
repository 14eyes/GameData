require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71651 = class("Quest71651", QuestActorProxy)
Quest71651.defaultAlias = "Quest71651"
local clientData
local mainID
local actorAlias

function Quest71651:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71651:Start()
    print("Start")
end

function Quest71651:OnDestroy()
    print("OnDestroy")
end

function Quest71651:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71651:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71651:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest71651
