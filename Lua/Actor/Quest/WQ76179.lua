require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76179 = class("Quest76179", QuestActorProxy)
Quest76179.defaultAlias = "Quest76179"
local clientData
local this
local mainID
local actorAlias

function Quest76179:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76179:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7617901"] = self.OnSubStart7617901,
        ["7617902"] = self.OnSubStart7617902,
        ["7617903"] = self.OnSubStart7617903
    }
end

function Quest76179:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7617901"] = self.OnSubFinish7617901,
        ["7617902"] = self.OnSubFinish7617902,
        ["7617903"] = self.OnSubFinish7617903
    }
end

function Quest76179:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76179:Start()
    print("Start")
end

function Quest76179:OnDestroy()
    print("OnDestroy")
end

function Quest76179:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76179:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76179:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76179:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76179:OnSubStart7617901(arg1)
    print("OnSubStart7617901")
end

function Quest76179:OnSubFinish7617901(arg1)
    print("OnSubFinish7617901")
end

function Quest76179:OnSubStart7617902(arg1)
    print("OnSubStart7617902")
end

function Quest76179:OnSubFinish7617902(arg1)
    print("OnSubFinish7617902")
end

function Quest76179:OnSubStart7617903(arg1)
    print("OnSubStart7617903")
end

function Quest76179:OnSubFinish7617903(arg1)
    print("OnSubFinish7617903")
end

return Quest76179
