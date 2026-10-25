require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72180 = class("Quest72180", QuestActorProxy)
Quest72180.defaultAlias = "Quest72180"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72180:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72180:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7218001"] = self.OnSubStart7218001}
end

function Quest72180:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7218001"] = self.OnSubFinish7218001}
end

function Quest72180:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7218001"] = self.OnSubFailed7218001}
end

function Quest72180:Start()
    print("Start")
end

function Quest72180:OnDestroy()
    print("OnDestroy")
end

function Quest72180:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72180:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72180:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72180:OnSubStart7218001(arg1)
    print("OnSubStart7218001")
end

function Quest72180:OnSubFinish7218001(arg1)
    print("OnSubFinish7218001")
end

function Quest72180:OnSubFailed7218001(arg1)
    print("OnSubFailed7218001")
end

return Quest72180
