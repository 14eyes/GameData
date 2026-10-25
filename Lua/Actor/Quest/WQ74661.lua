require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74661 = class("Quest74661", QuestActorProxy)
Quest74661.defaultAlias = "Quest74661"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74661:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74661:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466101"] = self.OnSubStart7466101}
end

function Quest74661:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466101"] = self.OnSubFinish7466101}
end

function Quest74661:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74661:Start()
    print("Start")
end

function Quest74661:OnDestroy()
    print("OnDestroy")
end

function Quest74661:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74661:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74661:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74661:OnSubStart7466101(arg1)
    print("OnSubStart7466101")
end

function Quest74661:OnSubFinish7466101(arg1)
    print("OnSubFinish7466101")
end

return Quest74661
