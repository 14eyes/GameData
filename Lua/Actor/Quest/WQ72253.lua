require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72253 = class("Quest72253", QuestActorProxy)
Quest72253.defaultAlias = "Quest72253"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72253:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72253:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7225301"] = self.OnSubStart7225301}
end

function Quest72253:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7225301"] = self.OnSubFinish7225301}
end

function Quest72253:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72253:Start()
    print("Start")
end

function Quest72253:OnDestroy()
    print("OnDestroy")
end

function Quest72253:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72253:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72253:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72253:OnSubStart7225301(arg1)
    print("OnSubStart7225301")
end

function Quest72253:OnSubFinish7225301(arg1)
    print("OnSubFinish7225301")
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "QUEST_Message_WQ72244_01", false, true)
end

return Quest72253
