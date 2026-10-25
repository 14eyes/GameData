require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70077 = class("Quest70077", QuestActorProxy)
Quest70077.defaultAlias = "Quest70077"
local clientData
local this
local mainID
local actorAlias

function Quest70077:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70077:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7007701"] = self.OnSubStart7007701, ["7007702"] = self.OnSubStart7007702}
end

function Quest70077:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7007701"] = self.OnSubFinish7007701, ["7007702"] = self.OnSubFinish7007702}
end

function Quest70077:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70077:Start()
    print("Start")
end

function Quest70077:OnDestroy()
    print("OnDestroy")
end

function Quest70077:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70077:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70077:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70077:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70077:OnSubStart7007701(arg1)
    print("OnSubStart7007701")
end

function Quest70077:OnSubFinish7007701(arg1)
    print("OnSubFinish7007701")
end

function Quest70077:OnSubStart7007702(arg1)
    print("OnSubStart7007702")
end

function Quest70077:OnSubFinish7007702(arg1)
    print("OnSubFinish7007702")
end

return Quest70077
