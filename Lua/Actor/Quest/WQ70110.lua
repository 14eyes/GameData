require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70110 = class("Quest70110", QuestActorProxy)
Quest70110.defaultAlias = "Quest70110"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70110:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70110:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7011001"] = self.OnSubStart7011001}
end

function Quest70110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7011001"] = self.OnSubFinish7011001}
end

function Quest70110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7011001"] = self.OnSubFailed7011001}
end

function Quest70110:Start()
    print("Start")
end

function Quest70110:OnDestroy()
    print("OnDestroy")
end

function Quest70110:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70110:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70110:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70110:OnSubStart7011001(arg1)
    print("OnSubStart7011001")
end

function Quest70110:OnSubFinish7011001(arg1)
    print("OnSubFinish7011001")
end

function Quest70110:OnSubFailed7011001(arg1)
    print("OnSubFailed7011001")
end

return Quest70110
