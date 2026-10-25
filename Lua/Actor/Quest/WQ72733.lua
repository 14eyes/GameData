require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72733 = class("Quest72733", QuestActorProxy)
Quest72733.defaultAlias = "Quest72733"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest72733:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72733:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7273301"] = self.OnSubStart7273301}
end

function Quest72733:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7273301"] = self.OnSubFinish7273301}
end

function Quest72733:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72733:Start()
    print("Start")
end

function Quest72733:OnDestroy()
    print("OnDestroy")
end

function Quest72733:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72733:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72733:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72733:OnSubStart7273301(arg1)
    print("OnSubStart7273301")
end

function Quest72733:OnSubFinish7273301(arg1)
    print("OnSubFinish7273301")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowHerculesBattleDifficultSelectPage(4)
    end)
end

return Quest72733
