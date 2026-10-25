require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70033 = class("Quest70033", QuestActorProxy)
Quest70033.defaultAlias = "Quest70033"
local clientData
local mainID
local actorAlias

function Quest70033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70033:Start()
    print("Start")
end

function Quest70033:OnDestroy()
    print("OnDestroy")
end

function Quest70033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest70033
