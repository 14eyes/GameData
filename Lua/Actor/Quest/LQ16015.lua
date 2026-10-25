require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16015 = class("Quest16015", QuestActorProxy)
Quest16015.defaultAlias = "Quest16015"
local clientData
local this
local mainID
local actorAlias

function Quest16015:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1601501"] = self.OnSubStart1601501,
        ["1601502"] = self.OnSubStart1601502,
        ["1601503"] = self.OnSubStart1601503,
        ["1601504"] = self.OnSubStart1601504
    }
end

function Quest16015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1601501"] = self.OnSubFinish1601501,
        ["1601502"] = self.OnSubFinish1601502,
        ["1601503"] = self.OnSubFinish1601503,
        ["1601504"] = self.OnSubFinish1601504
    }
end

function Quest16015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16015:Start()
    print("Start")
end

function Quest16015:OnDestroy()
    print("OnDestroy")
end

function Quest16015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16015:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16015:OnSubStart1601501(arg1)
    print("OnSubStart1601501")
end

function Quest16015:OnSubFinish1601501(arg1)
    print("OnSubFinish1601501")
end

function Quest16015:OnSubStart1601502(arg1)
    print("OnSubStart1601502")
end

function Quest16015:OnSubFinish1601502(arg1)
    print("OnSubFinish1601502")
end

function Quest16015:OnSubStart1601503(arg1)
    print("OnSubStart1601503")
end

function Quest16015:OnSubFinish1601503(arg1)
    print("OnSubFinish1601503")
end

function Quest16015:OnSubStart1601504(arg1)
    print("OnSubStart1601504")
end

function Quest16015:OnSubFinish1601504(arg1)
    print("OnSubFinish1601504")
end

return Quest16015
