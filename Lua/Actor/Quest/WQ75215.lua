require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75215 = class("Quest75215", QuestActorProxy)
Quest75215.defaultAlias = "Quest75215"
local clientData
local this
local mainID
local actorAlias

function Quest75215:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75215:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7521501"] = self.OnSubStart7521501, ["7521502"] = self.OnSubStart7521502}
end

function Quest75215:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7521501"] = self.OnSubFinish7521501, ["7521502"] = self.OnSubFinish7521502}
end

function Quest75215:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75215:Start()
    print("Start")
end

function Quest75215:OnDestroy()
    print("OnDestroy")
end

function Quest75215:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75215:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75215:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75215:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75215:OnSubStart7521501(arg1)
    print("OnSubStart7521501")
end

function Quest75215:OnSubFinish7521501(arg1)
    print("OnSubFinish7521501")
end

function Quest75215:OnSubStart7521502(arg1)
    print("OnSubStart7521502")
end

function Quest75215:OnSubFinish7521502(arg1)
    print("OnSubFinish7521502")
end

return Quest75215
