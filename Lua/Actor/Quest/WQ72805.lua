require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72805 = class("Quest72805", QuestActorProxy)
Quest72805.defaultAlias = "Quest72805"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72805:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72805:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7280501"] = self.OnSubStart7280501,
        ["7280502"] = self.OnSubStart7280502,
        ["7280503"] = self.OnSubStart7280503
    }
end

function Quest72805:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7280501"] = self.OnSubFinish7280501,
        ["7280502"] = self.OnSubFinish7280502,
        ["7280503"] = self.OnSubFinish7280503
    }
end

function Quest72805:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7280501"] = self.OnSubFailed7280501,
        ["7280502"] = self.OnSubFailed7280502,
        ["7280503"] = self.OnSubFailed7280503
    }
end

function Quest72805:Start()
    print("Start")
end

function Quest72805:OnDestroy()
    print("OnDestroy")
end

function Quest72805:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72805:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72805:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72805:OnSubStart7280501(arg1)
    print("OnSubStart7280501")
end

function Quest72805:OnSubFinish7280501(arg1)
    print("OnSubFinish7280501")
end

function Quest72805:OnSubFailed7280501(arg1)
    print("OnSubFailed7280501")
end

function Quest72805:OnSubStart7280502(arg1)
    print("OnSubStart7280502")
end

function Quest72805:OnSubFinish7280502(arg1)
    print("OnSubFinish7280502")
end

function Quest72805:OnSubFailed7280502(arg1)
    print("OnSubFailed7280502")
end

function Quest72805:OnSubStart7280503(arg1)
    print("OnSubStart7280503")
end

function Quest72805:OnSubFinish7280503(arg1)
    print("OnSubFinish7280503")
end

function Quest72805:OnSubFailed7280503(arg1)
    print("OnSubFailed7280503")
end

return Quest72805
