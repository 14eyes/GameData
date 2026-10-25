require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74662 = class("Quest74662", QuestActorProxy)
Quest74662.defaultAlias = "Quest74662"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74662:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74662:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466201"] = self.OnSubStart7466201}
end

function Quest74662:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466201"] = self.OnSubFinish7466201}
end

function Quest74662:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74662:Start()
    print("Start")
end

function Quest74662:OnDestroy()
    print("OnDestroy")
end

function Quest74662:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74662:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74662:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74662:OnSubStart7466201(arg1)
    print("OnSubStart7466201")
end

function Quest74662:OnSubFinish7466201(arg1)
    print("OnSubFinish7466201")
end

return Quest74662
