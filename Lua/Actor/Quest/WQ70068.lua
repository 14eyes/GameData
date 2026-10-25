require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70068 = class("Quest70068", QuestActorProxy)
Quest70068.defaultAlias = "Quest70068"
local clientData
local this
local mainID
local actorAlias

function Quest70068:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70068:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7006801"] = self.OnSubStart7006801,
        ["7006802"] = self.OnSubStart7006802,
        ["7006803"] = self.OnSubStart7006803,
        ["7006804"] = self.OnSubStart7006804,
        ["7006805"] = self.OnSubStart7006805
    }
end

function Quest70068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7006801"] = self.OnSubFinish7006801,
        ["7006802"] = self.OnSubFinish7006802,
        ["7006803"] = self.OnSubFinish7006803,
        ["7006804"] = self.OnSubFinish7006804,
        ["7006805"] = self.OnSubFinish7006805
    }
end

function Quest70068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70068:Start()
    print("Start")
end

function Quest70068:OnDestroy()
    print("OnDestroy")
end

function Quest70068:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70068:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70068:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70068:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest70068:OnSubStart7006801(arg1)
    print("OnSubStart7006801")
end

function Quest70068:OnSubFinish7006801(arg1)
    print("OnSubFinish7006801")
end

function Quest70068:OnSubStart7006802(arg1)
    print("OnSubStart7006802")
end

function Quest70068:OnSubFinish7006802(arg1)
    print("OnSubFinish7006802")
end

function Quest70068:OnSubStart7006803(arg1)
    print("OnSubStart7006803")
end

function Quest70068:OnSubFinish7006803(arg1)
    print("OnSubFinish7006803")
end

function Quest70068:OnSubStart7006804(arg1)
    print("OnSubStart7006804")
end

function Quest70068:OnSubFinish7006804(arg1)
    print("OnSubFinish7006804")
end

function Quest70068:OnSubStart7006805(arg1)
    print("OnSubStart7006805")
end

function Quest70068:OnSubFinish7006805(arg1)
    print("OnSubFinish7006805")
end

return Quest70068
