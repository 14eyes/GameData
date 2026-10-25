require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19029 = class("Quest19029", QuestActorProxy)
Quest19029.defaultAlias = "Quest19029"
local clientData
local mainID
local actorAlias

function Quest19029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest19029:Start()
    print("Start")
end

function Quest19029:OnDestroy()
    print("OnDestroy")
end

function Quest19029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest19029
