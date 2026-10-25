require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72257 = class("Quest72257", QuestActorProxy)
Quest72257.defaultAlias = "Quest72257"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72257:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72257:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7225701"] = self.OnSubStart7225701}
end

function Quest72257:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7225701"] = self.OnSubFinish7225701}
end

function Quest72257:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72257:Start()
    print("Start")
end

function Quest72257:OnDestroy()
    print("OnDestroy")
end

function Quest72257:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72257:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72257:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72257:OnSubStart7225701(arg1)
    print("OnSubStart7225701")
end

function Quest72257:OnSubFinish7225701(arg1)
    print("OnSubFinish7225701")
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "QUEST_Message_WQ72244_01", false, true)
end

return Quest72257
