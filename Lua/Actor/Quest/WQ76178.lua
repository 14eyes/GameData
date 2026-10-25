require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76178 = class("Quest76178", QuestActorProxy)
Quest76178.defaultAlias = "Quest76178"
local clientData
local this
local mainID
local actorAlias

function Quest76178:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76178:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7617801"] = self.OnSubStart7617801,
        ["7617802"] = self.OnSubStart7617802,
        ["7617803"] = self.OnSubStart7617803
    }
end

function Quest76178:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7617801"] = self.OnSubFinish7617801,
        ["7617802"] = self.OnSubFinish7617802,
        ["7617803"] = self.OnSubFinish7617803
    }
end

function Quest76178:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76178:Start()
    print("Start")
end

function Quest76178:OnDestroy()
    print("OnDestroy")
end

function Quest76178:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76178:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76178:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76178:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76178:OnSubStart7617801(arg1)
    print("OnSubStart7617801")
end

function Quest76178:OnSubFinish7617801(arg1)
    print("OnSubFinish7617801")
end

function Quest76178:OnSubStart7617802(arg1)
    print("OnSubStart7617802")
end

function Quest76178:OnSubFinish7617802(arg1)
    print("OnSubFinish7617802")
end

function Quest76178:OnSubStart7617803(arg1)
    print("OnSubStart7617803")
end

function Quest76178:OnSubFinish7617803(arg1)
    print("OnSubFinish7617803")
end

return Quest76178
