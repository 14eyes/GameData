require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72254 = class("Quest72254", QuestActorProxy)
Quest72254.defaultAlias = "Quest72254"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72254:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72254:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7225401"] = self.OnSubStart7225401}
end

function Quest72254:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7225401"] = self.OnSubFinish7225401}
end

function Quest72254:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72254:Start()
    print("Start")
end

function Quest72254:OnDestroy()
    print("OnDestroy")
end

function Quest72254:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72254:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72254:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72254:OnSubStart7225401(arg1)
    print("OnSubStart7225401")
end

function Quest72254:OnSubFinish7225401(arg1)
    print("OnSubFinish7225401")
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "QUEST_Message_WQ72244_01", false, true)
end

return Quest72254
