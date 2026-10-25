require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73258 = class("Quest73258", QuestActorProxy)
Quest73258.defaultAlias = "Quest73258"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73258:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73258:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7325801"] = self.OnSubStart7325801}
end

function Quest73258:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7325801"] = self.OnSubFinish7325801}
end

function Quest73258:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73258:Start()
    print("Start")
end

function Quest73258:OnDestroy()
    print("OnDestroy")
end

function Quest73258:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73258:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73258:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73258:OnSubStart7325801(arg1)
    print("OnSubStart7325801")
end

function Quest73258:OnSubFinish7325801(arg1)
    print("OnSubFinish7325801")
end

return Quest73258
