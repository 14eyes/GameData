require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72734 = class("Quest72734", QuestActorProxy)
Quest72734.defaultAlias = "Quest72734"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest72734:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72734:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7273401"] = self.OnSubStart7273401}
end

function Quest72734:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7273401"] = self.OnSubFinish7273401}
end

function Quest72734:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72734:Start()
    print("Start")
end

function Quest72734:OnDestroy()
    print("OnDestroy")
end

function Quest72734:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72734:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72734:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72734:OnSubStart7273401(arg1)
    print("OnSubStart7273401")
end

function Quest72734:OnSubFinish7273401(arg1)
    print("OnSubFinish7273401")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowHerculesBattleDifficultSelectPage(3)
    end)
end

return Quest72734
