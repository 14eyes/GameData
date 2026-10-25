require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71025 = class("Quest71025", QuestActorProxy)
Quest71025.defaultAlias = "Quest71025"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71025:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7102501"] = self.OnSubStart7102501, ["7102502"] = self.OnSubStart7102502}
end

function Quest71025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7102501"] = self.OnSubFinish7102501, ["7102502"] = self.OnSubFinish7102502}
end

function Quest71025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7102501"] = self.OnSubFailed7102501, ["7102502"] = self.OnSubFailed7102502}
end

function Quest71025:Start()
    print("Start")
end

function Quest71025:OnDestroy()
    print("OnDestroy")
end

function Quest71025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71025:OnSubStart7102501(arg1)
    print("OnSubStart7102501")
end

function Quest71025:OnSubFinish7102501(arg1)
    print("OnSubFinish7102501")
end

function Quest71025:OnSubFailed7102501(arg1)
    print("OnSubFailed7102501")
end

function Quest71025:OnSubStart7102502(arg1)
    print("OnSubStart7102502")
end

function Quest71025:OnSubFinish7102502(arg1)
    print("OnSubFinish7102502")
end

function Quest71025:OnSubFailed7102502(arg1)
    print("OnSubFailed7102502")
end

return Quest71025
