require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73665 = class("Quest73665", QuestActorProxy)
Quest73665.defaultAlias = "Quest73665"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73665:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73665:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366501"] = self.OnSubStart7366501}
end

function Quest73665:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366501"] = self.OnSubFinish7366501}
end

function Quest73665:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73665:Start()
    print("Start")
end

function Quest73665:OnDestroy()
    print("OnDestroy")
end

function Quest73665:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73665:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73665:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73665:OnSubStart7366501(arg1)
    print("OnSubStart7366501")
end

function Quest73665:OnSubFinish7366501(arg1)
    print("OnSubFinish7366501")
end

return Quest73665
