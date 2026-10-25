require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74111 = class("Quest74111", QuestActorProxy)
Quest74111.defaultAlias = "Quest74111"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74111:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74111:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7411101"] = self.OnSubStart7411101}
end

function Quest74111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7411101"] = self.OnSubFinish7411101}
end

function Quest74111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74111:Start()
    print("Start")
end

function Quest74111:OnDestroy()
    print("OnDestroy")
end

function Quest74111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74111:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74111:OnSubStart7411101(arg1)
    print("OnSubStart7411101")
end

function Quest74111:OnSubFinish7411101(arg1)
    print("OnSubFinish7411101")
end

return Quest74111
