require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72703 = class("Quest72703", QuestActorProxy)
Quest72703.defaultAlias = "Quest72703"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72703:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72703:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7270301"] = self.OnSubStart7270301}
end

function Quest72703:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7270301"] = self.OnSubFinish7270301}
end

function Quest72703:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7270301"] = self.OnSubFailed7270301}
end

function Quest72703:Start()
    print("Start")
end

function Quest72703:OnDestroy()
    print("OnDestroy")
end

function Quest72703:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72703:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72703:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72703:OnSubStart7270301(arg1)
    print("OnSubStart7270301")
end

function Quest72703:OnSubFinish7270301(arg1)
    print("OnSubFinish7270301")
end

function Quest72703:OnSubFailed7270301(arg1)
    print("OnSubFailed7270301")
end

return Quest72703
