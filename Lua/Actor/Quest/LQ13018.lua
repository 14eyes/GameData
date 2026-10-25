require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13018 = class("Quest13018", QuestActorProxy)
Quest13018.defaultAlias = "Quest13018"
local clientData
local mainID
local actorAlias
local subIDs

function Quest13018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest13018:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1301801"] = self.OnSubStart1301801}
end

function Quest13018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1301801"] = self.OnSubFinish1301801}
end

function Quest13018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13018:Start()
    print("Start")
end

function Quest13018:OnDestroy()
    print("OnDestroy")
end

function Quest13018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13018:OnSubStart1301801(arg1)
    print("OnSubStart1301801")
end

function Quest13018:OnSubFinish1301801(arg1)
    print("OnSubFinish1301801")
end

return Quest13018
