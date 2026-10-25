require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72697 = class("Quest72697", QuestActorProxy)
Quest72697.defaultAlias = "Quest72697"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72697:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72697:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7269701"] = self.OnSubStart7269701}
end

function Quest72697:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7269701"] = self.OnSubFinish7269701}
end

function Quest72697:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72697:Start()
    print("Start")
end

function Quest72697:OnDestroy()
    print("OnDestroy")
end

function Quest72697:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72697:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72697:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72697:OnSubStart7269701(arg1)
    print("OnSubStart7269701")
end

function Quest72697:OnSubFinish7269701(arg1)
    print("OnSubFinish7269701")
end

return Quest72697
