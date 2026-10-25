require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70808 = class("Quest70808", QuestActorProxy)
Quest70808.defaultAlias = "Quest70808"
local clientData
local this
local mainID
local actorAlias

function Quest70808:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70808:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7080801"] = self.OnSubStart7080801,
        ["7080802"] = self.OnSubStart7080802,
        ["7080803"] = self.OnSubStart7080803
    }
end

function Quest70808:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7080801"] = self.OnSubFinish7080801,
        ["7080802"] = self.OnSubFinish7080802,
        ["7080803"] = self.OnSubFinish7080803
    }
end

function Quest70808:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70808:Start()
    print("Start")
end

function Quest70808:OnDestroy()
    print("OnDestroy")
end

function Quest70808:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70808:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70808:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70808:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70808:OnSubStart7080801(arg1)
    print("OnSubStart7080801")
end

function Quest70808:OnSubFinish7080801(arg1)
    print("OnSubFinish7080801")
end

function Quest70808:OnSubStart7080802(arg1)
    print("OnSubStart7080802")
end

function Quest70808:OnSubFinish7080802(arg1)
    print("OnSubFinish7080802")
end

function Quest70808:OnSubStart7080803(arg1)
    print("OnSubStart7080803")
end

function Quest70808:OnSubFinish7080803(arg1)
    print("OnSubFinish7080803")
end

return Quest70808
