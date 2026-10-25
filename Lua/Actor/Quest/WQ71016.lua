require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71016 = class("Quest71016", QuestActorProxy)
Quest71016.defaultAlias = "Quest71016"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71016:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7101614"] = self.OnSubStart7101614}
end

function Quest71016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7101614"] = self.OnSubFinish7101614}
end

function Quest71016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7101614"] = self.OnSubFailed7101614}
end

function Quest71016:Start()
    print("Start")
end

function Quest71016:OnDestroy()
    print("OnDestroy")
end

function Quest71016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71016:OnSubStart7101614(arg1)
    print("OnSubStart7101614")
end

function Quest71016:OnSubFinish7101614(arg1)
    print("OnSubFinish7101614")
end

function Quest71016:OnSubFailed7101614(arg1)
    print("OnSubFailed7101614")
end

return Quest71016
