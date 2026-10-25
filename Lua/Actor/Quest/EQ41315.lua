require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41315 = class("Quest41315", QuestActorProxy)
Quest41315.defaultAlias = "Quest41315"
local clientData
local mainID
local actorAlias

function Quest41315:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest41315:Start()
    print("Start")
end

function Quest41315:OnDestroy()
    print("OnDestroy")
end

function Quest41315:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41315:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41315:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest41315
