require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70688 = class("Quest70688", QuestActorProxy)
Quest70688.defaultAlias = "Quest70688"
local clientData
local this
local mainID
local actorAlias

function Quest70688:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70688:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7068801"] = self.OnSubStart7068801}
end

function Quest70688:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7068801"] = self.OnSubFinish7068801}
end

function Quest70688:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70688:Start()
    print("Start")
end

function Quest70688:OnDestroy()
    print("OnDestroy")
end

function Quest70688:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70688:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70688:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70688:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70688:OnSubStart7068801(arg1)
    print("OnSubStart7068801")
end

function Quest70688:OnSubFinish7068801(arg1)
    print("OnSubFinish7068801")
end

return Quest70688
