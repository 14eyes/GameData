require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70045 = class("Quest70045", QuestActorProxy)
Quest70045.defaultAlias = "Quest70045"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70045:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70045:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7004501"] = self.OnSubStart7004501}
end

function Quest70045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7004501"] = self.OnSubFinish7004501}
end

function Quest70045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70045:Start()
    print("Start")
end

function Quest70045:OnDestroy()
    print("OnDestroy")
end

function Quest70045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70045:OnSubStart7004501(arg1)
    print("OnSubStart7004501")
    actorUtils.FinishQuestID(false, 7004501)
end

function Quest70045:OnSubFinish7004501(arg1)
    print("OnSubFinish7004501")
end

return Quest70045
