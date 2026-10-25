require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40042 = class("Quest40042", QuestActorProxy)
Quest40042.defaultAlias = "Quest40042"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40042:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40042:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4004201"] = self.OnSubStart4004201}
end

function Quest40042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4004201"] = self.OnSubFinish4004201}
end

function Quest40042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4004201"] = self.OnSubFailed4004201}
end

function Quest40042:Start()
    print("Start")
end

function Quest40042:OnDestroy()
    print("OnDestroy")
end

function Quest40042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40042:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40042:OnSubStart4004201(arg1)
    print("OnSubStart4004201")
end

function Quest40042:OnSubFinish4004201(arg1)
    print("OnSubFinish4004201")
end

function Quest40042:OnSubFailed4004201(arg1)
    print("OnSubFailed4004201")
end

return Quest40042
