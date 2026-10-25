require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74663 = class("Quest74663", QuestActorProxy)
Quest74663.defaultAlias = "Quest74663"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74663:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74663:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466301"] = self.OnSubStart7466301}
end

function Quest74663:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466301"] = self.OnSubFinish7466301}
end

function Quest74663:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74663:Start()
    print("Start")
end

function Quest74663:OnDestroy()
    print("OnDestroy")
end

function Quest74663:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74663:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74663:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74663:OnSubStart7466301(arg1)
    print("OnSubStart7466301")
end

function Quest74663:OnSubFinish7466301(arg1)
    print("OnSubFinish7466301")
end

return Quest74663
