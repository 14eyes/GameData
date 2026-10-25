require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75105 = class("Quest75105", QuestActorProxy)
Quest75105.defaultAlias = "Quest75105"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75105:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75105:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7510501"] = self.OnSubStart7510501}
end

function Quest75105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7510501"] = self.OnSubFinish7510501}
end

function Quest75105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75105:Start()
    print("Start")
end

function Quest75105:OnDestroy()
    print("OnDestroy")
end

function Quest75105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75105:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75105:OnSubStart7510501(arg1)
    print("OnSubStart7510501")
end

function Quest75105:OnSubFinish7510501(arg1)
    print("OnSubFinish7510501")
end

return Quest75105
