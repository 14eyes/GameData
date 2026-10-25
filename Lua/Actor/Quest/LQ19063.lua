require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19063 = class("Quest19063", QuestActorProxy)
Quest19063.defaultAlias = "Quest19063"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19063:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19063:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1906301"] = self.OnSubStart1906301}
end

function Quest19063:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1906301"] = self.OnSubFinish1906301}
end

function Quest19063:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1906301"] = self.OnSubFailed1906301}
end

function Quest19063:Start()
    print("Start")
end

function Quest19063:OnDestroy()
    print("OnDestroy")
end

function Quest19063:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19063:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19063:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19063:OnSubStart1906301(arg1)
    print("OnSubStart1906301")
end

function Quest19063:OnSubFinish1906301(arg1)
    print("OnSubFinish1906301")
end

function Quest19063:OnSubFailed1906301(arg1)
    print("OnSubFailed1906301")
end

return Quest19063
