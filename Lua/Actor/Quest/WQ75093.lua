require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75093 = class("Quest75093", QuestActorProxy)
Quest75093.defaultAlias = "Quest75093"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75093:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75093:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7509301"] = self.OnSubStart7509301}
end

function Quest75093:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7509301"] = self.OnSubFinish7509301}
end

function Quest75093:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75093:Start()
    print("Start")
end

function Quest75093:OnDestroy()
    print("OnDestroy")
end

function Quest75093:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75093:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75093:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75093:OnSubStart7509301(arg1)
    print("OnSubStart7509301")
end

function Quest75093:OnSubFinish7509301(arg1)
    print("OnSubFinish7509301")
end

return Quest75093
