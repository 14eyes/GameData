require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72735 = class("Quest72735", QuestActorProxy)
Quest72735.defaultAlias = "Quest72735"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest72735:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72735:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7273501"] = self.OnSubStart7273501}
end

function Quest72735:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7273501"] = self.OnSubFinish7273501}
end

function Quest72735:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72735:Start()
    print("Start")
end

function Quest72735:OnDestroy()
    print("OnDestroy")
end

function Quest72735:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72735:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72735:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72735:OnSubStart7273501(arg1)
    print("OnSubStart7273501")
end

function Quest72735:OnSubFinish7273501(arg1)
    print("OnSubFinish7273501")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowHerculesBattleDifficultSelectPage(5)
    end)
end

return Quest72735
