require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40131 = class("Quest40131", QuestActorProxy)
Quest40131.defaultAlias = "Quest40131"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40131:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40131:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4013101"] = self.OnSubStart4013101}
end

function Quest40131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4013101"] = self.OnSubFinish4013101}
end

function Quest40131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40131:Start()
    print("Start")
end

function Quest40131:OnDestroy()
    print("OnDestroy")
end

function Quest40131:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40131:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40131:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40131:OnSubStart4013101(arg1)
    print("OnSubStart4013101")
end

function Quest40131:OnSubFinish4013101(arg1)
    print("OnSubFinish4013101")
end

return Quest40131
