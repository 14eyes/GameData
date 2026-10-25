require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72705 = class("Quest72705", QuestActorProxy)
Quest72705.defaultAlias = "Quest72705"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72705:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72705:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7270501"] = self.OnSubStart7270501}
end

function Quest72705:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7270501"] = self.OnSubFinish7270501}
end

function Quest72705:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7270501"] = self.OnSubFailed7270501}
end

function Quest72705:Start()
    print("Start")
end

function Quest72705:OnDestroy()
    print("OnDestroy")
end

function Quest72705:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72705:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72705:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72705:OnSubStart7270501(arg1)
    print("OnSubStart7270501")
end

function Quest72705:OnSubFinish7270501(arg1)
    print("OnSubFinish7270501")
end

function Quest72705:OnSubFailed7270501(arg1)
    print("OnSubFailed7270501")
end

return Quest72705
