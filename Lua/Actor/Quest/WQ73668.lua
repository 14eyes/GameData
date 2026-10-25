require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73668 = class("Quest73668", QuestActorProxy)
Quest73668.defaultAlias = "Quest73668"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73668:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73668:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366801"] = self.OnSubStart7366801}
end

function Quest73668:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366801"] = self.OnSubFinish7366801}
end

function Quest73668:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73668:Start()
    print("Start")
end

function Quest73668:OnDestroy()
    print("OnDestroy")
end

function Quest73668:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73668:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73668:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73668:OnSubStart7366801(arg1)
    print("OnSubStart7366801")
end

function Quest73668:OnSubFinish7366801(arg1)
    print("OnSubFinish7366801")
end

return Quest73668
