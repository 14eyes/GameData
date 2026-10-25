require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70671 = class("Quest70671", QuestActorProxy)
Quest70671.defaultAlias = "Quest70671"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70671:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70671:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7067101"] = self.OnSubStart7067101}
end

function Quest70671:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7067101"] = self.OnSubFinish7067101}
end

function Quest70671:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70671:Start()
    print("Start")
end

function Quest70671:OnDestroy()
    print("OnDestroy")
end

function Quest70671:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70671:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70671:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70671:OnSubStart7067101(arg1)
    print("OnSubStart7067101")
end

function Quest70671:OnSubFinish7067101(arg1)
    print("OnSubFinish7067101")
end

return Quest70671
