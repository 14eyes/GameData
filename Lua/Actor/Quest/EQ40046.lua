require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40046 = class("Quest40046", QuestActorProxy)
Quest40046.defaultAlias = "Quest40046"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40046:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40046:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4004601"] = self.OnSubStart4004601}
end

function Quest40046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4004601"] = self.OnSubFinish4004601}
end

function Quest40046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40046:Start()
    print("Start")
end

function Quest40046:OnDestroy()
    print("OnDestroy")
end

function Quest40046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40046:OnSubStart4004601(arg1)
    print("OnSubStart4004601")
end

function Quest40046:OnSubFinish4004601(arg1)
    print("OnSubFinish4004601")
end

return Quest40046
