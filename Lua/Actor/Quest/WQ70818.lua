require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70818 = class("Quest70818", QuestActorProxy)
Quest70818.defaultAlias = "Quest70818"
local clientData
local this
local mainID
local actorAlias

function Quest70818:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70818:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7081801"] = self.OnSubStart7081801, ["7081802"] = self.OnSubStart7081802}
end

function Quest70818:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7081801"] = self.OnSubFinish7081801, ["7081802"] = self.OnSubFinish7081802}
end

function Quest70818:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70818:Start()
    print("Start")
end

function Quest70818:OnDestroy()
    print("OnDestroy")
end

function Quest70818:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70818:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70818:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70818:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70818:OnSubStart7081801(arg1)
    print("OnSubStart7081801")
end

function Quest70818:OnSubFinish7081801(arg1)
    print("OnSubFinish7081801")
end

function Quest70818:OnSubStart7081802(arg1)
    print("OnSubStart7081802")
end

function Quest70818:OnSubFinish7081802(arg1)
    print("OnSubFinish7081802")
end

return Quest70818
