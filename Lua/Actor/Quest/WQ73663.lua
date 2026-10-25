require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73663 = class("Quest73663", QuestActorProxy)
Quest73663.defaultAlias = "Quest73663"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73663:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73663:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366301"] = self.OnSubStart7366301}
end

function Quest73663:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366301"] = self.OnSubFinish7366301}
end

function Quest73663:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73663:Start()
    print("Start")
end

function Quest73663:OnDestroy()
    print("OnDestroy")
end

function Quest73663:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73663:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73663:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73663:OnSubStart7366301(arg1)
    print("OnSubStart7366301")
end

function Quest73663:OnSubFinish7366301(arg1)
    print("OnSubFinish7366301")
end

return Quest73663
