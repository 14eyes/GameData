require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72732 = class("Quest72732", QuestActorProxy)
Quest72732.defaultAlias = "Quest72732"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest72732:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72732:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7273201"] = self.OnSubStart7273201}
end

function Quest72732:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7273201"] = self.OnSubFinish7273201}
end

function Quest72732:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72732:Start()
    print("Start")
end

function Quest72732:OnDestroy()
    print("OnDestroy")
end

function Quest72732:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72732:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72732:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72732:OnSubStart7273201(arg1)
    print("OnSubStart7273201")
end

function Quest72732:OnSubFinish7273201(arg1)
    print("OnSubFinish7273201")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowHerculesBattleDifficultSelectPage(2)
    end)
end

return Quest72732
