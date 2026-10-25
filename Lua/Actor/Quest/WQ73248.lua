require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73248 = class("Quest73248", QuestActorProxy)
Quest73248.defaultAlias = "Quest73248"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73248:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73248:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7324801"] = self.OnSubStart7324801}
end

function Quest73248:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7324801"] = self.OnSubFinish7324801}
end

function Quest73248:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73248:Start()
    print("Start")
end

function Quest73248:OnDestroy()
    print("OnDestroy")
end

function Quest73248:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73248:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73248:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73248:OnSubStart7324801(arg1)
    print("OnSubStart7324801")
end

function Quest73248:OnSubFinish7324801(arg1)
    print("OnSubFinish7324801")
end

return Quest73248
