require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72195 = class("Quest72195", QuestActorProxy)
Quest72195.defaultAlias = "Quest72195"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72195:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72195:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7219501"] = self.OnSubStart7219501, ["7219502"] = self.OnSubStart7219502}
end

function Quest72195:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7219501"] = self.OnSubFinish7219501, ["7219502"] = self.OnSubFinish7219502}
end

function Quest72195:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7219501"] = self.OnSubFailed7219501, ["7219502"] = self.OnSubFailed7219502}
end

function Quest72195:Start()
    print("Start")
end

function Quest72195:OnDestroy()
    print("OnDestroy")
end

function Quest72195:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72195:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72195:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72195:OnSubStart7219501(arg1)
    print("OnSubStart7219501")
end

function Quest72195:OnSubFinish7219501(arg1)
    print("OnSubFinish7219501")
end

function Quest72195:OnSubFailed7219501(arg1)
    print("OnSubFailed7219501")
end

function Quest72195:OnSubStart7219502(arg1)
    print("OnSubStart7219502")
end

function Quest72195:OnSubFinish7219502(arg1)
    print("OnSubFinish7219502")
end

function Quest72195:OnSubFailed7219502(arg1)
    print("OnSubFailed7219502")
end

return Quest72195
