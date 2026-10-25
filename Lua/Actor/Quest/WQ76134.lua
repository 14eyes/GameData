require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76134 = class("Quest76134", QuestActorProxy)
Quest76134.defaultAlias = "Quest76134"
local clientData
local this
local mainID
local actorAlias

function Quest76134:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76134:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7613401"] = self.OnSubStart7613401}
end

function Quest76134:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7613401"] = self.OnSubFinish7613401}
end

function Quest76134:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76134:Start()
    print("Start")
end

function Quest76134:OnDestroy()
    print("OnDestroy")
end

function Quest76134:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76134:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76134:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76134:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76134:OnSubStart7613401(arg1)
    print("OnSubStart7613401")
end

function Quest76134:OnSubFinish7613401(arg1)
    print("OnSubFinish7613401")
end

return Quest76134
