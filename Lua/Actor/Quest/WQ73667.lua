require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73667 = class("Quest73667", QuestActorProxy)
Quest73667.defaultAlias = "Quest73667"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73667:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73667:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366701"] = self.OnSubStart7366701}
end

function Quest73667:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366701"] = self.OnSubFinish7366701}
end

function Quest73667:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73667:Start()
    print("Start")
end

function Quest73667:OnDestroy()
    print("OnDestroy")
end

function Quest73667:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73667:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73667:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73667:OnSubStart7366701(arg1)
    print("OnSubStart7366701")
end

function Quest73667:OnSubFinish7366701(arg1)
    print("OnSubFinish7366701")
end

return Quest73667
