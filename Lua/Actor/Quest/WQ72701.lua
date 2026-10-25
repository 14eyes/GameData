require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72701 = class("Quest72701", QuestActorProxy)
Quest72701.defaultAlias = "Quest72701"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72701:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72701:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7270101"] = self.OnSubStart7270101}
end

function Quest72701:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7270101"] = self.OnSubFinish7270101}
end

function Quest72701:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7270101"] = self.OnSubFailed7270101}
end

function Quest72701:Start()
    print("Start")
end

function Quest72701:OnDestroy()
    print("OnDestroy")
end

function Quest72701:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72701:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72701:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72701:OnSubStart7270101(arg1)
    print("OnSubStart7270101")
end

function Quest72701:OnSubFinish7270101(arg1)
    print("OnSubFinish7270101")
end

function Quest72701:OnSubFailed7270101(arg1)
    print("OnSubFailed7270101")
end

return Quest72701
