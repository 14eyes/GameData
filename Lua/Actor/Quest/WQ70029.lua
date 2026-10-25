require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70029 = class("Quest70029", QuestActorProxy)
Quest70029.defaultAlias = "Quest70029"
local clientData
local mainID
local actorAlias

function Quest70029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70029:Start()
    print("Start")
end

function Quest70029:OnDestroy()
    print("OnDestroy")
end

function Quest70029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70029
