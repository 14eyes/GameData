require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74133 = class("Quest74133", QuestActorProxy)
Quest74133.defaultAlias = "Quest74133"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74133:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74133:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7413301"] = self.OnSubStart7413301}
end

function Quest74133:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7413301"] = self.OnSubFinish7413301}
end

function Quest74133:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74133:Start()
    print("Start")
end

function Quest74133:OnDestroy()
    print("OnDestroy")
end

function Quest74133:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74133:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74133:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74133:OnSubStart7413301(arg1)
    print("OnSubStart7413301")
end

function Quest74133:OnSubFinish7413301(arg1)
    print("OnSubFinish7413301")
end

return Quest74133
