require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71123 = class("Quest71123", QuestActorProxy)
Quest71123.defaultAlias = "Quest71123"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71123:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71123:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7112301"] = self.OnSubStart7112301}
end

function Quest71123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7112301"] = self.OnSubFinish7112301}
end

function Quest71123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71123:Start()
    print("Start")
end

function Quest71123:OnDestroy()
    print("OnDestroy")
end

function Quest71123:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71123:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71123:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71123:OnSubStart7112301(arg1)
    print("OnSubStart7112301")
end

function Quest71123:OnSubFinish7112301(arg1)
    print("OnSubFinish7112301")
end

return Quest71123
