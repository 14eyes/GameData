require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74666 = class("Quest74666", QuestActorProxy)
Quest74666.defaultAlias = "Quest74666"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74666:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74666:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466601"] = self.OnSubStart7466601}
end

function Quest74666:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466601"] = self.OnSubFinish7466601}
end

function Quest74666:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74666:Start()
    print("Start")
end

function Quest74666:OnDestroy()
    print("OnDestroy")
end

function Quest74666:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74666:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74666:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74666:OnSubStart7466601(arg1)
    print("OnSubStart7466601")
end

function Quest74666:OnSubFinish7466601(arg1)
    print("OnSubFinish7466601")
end

return Quest74666
