require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71024 = class("Quest71024", QuestActorProxy)
Quest71024.defaultAlias = "Quest71024"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71024:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71024:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7102401"] = self.OnSubStart7102401}
end

function Quest71024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7102401"] = self.OnSubFinish7102401}
end

function Quest71024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7102401"] = self.OnSubFailed7102401}
end

function Quest71024:Start()
    print("Start")
end

function Quest71024:OnDestroy()
    print("OnDestroy")
end

function Quest71024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71024:OnSubStart7102401(arg1)
    print("OnSubStart7102401")
end

function Quest71024:OnSubFinish7102401(arg1)
    print("OnSubFinish7102401")
end

function Quest71024:OnSubFailed7102401(arg1)
    print("OnSubFailed7102401")
end

return Quest71024
