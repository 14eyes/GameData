require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72259 = class("Quest72259", QuestActorProxy)
Quest72259.defaultAlias = "Quest72259"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72259:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72259:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7225901"] = self.OnSubStart7225901}
end

function Quest72259:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7225901"] = self.OnSubFinish7225901}
end

function Quest72259:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72259:Start()
    print("Start")
end

function Quest72259:OnDestroy()
    print("OnDestroy")
end

function Quest72259:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72259:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72259:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72259:OnSubStart7225901(arg1)
    print("OnSubStart7225901")
end

function Quest72259:OnSubFinish7225901(arg1)
    print("OnSubFinish7225901")
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "QUEST_Message_WQ72244_01", false, true)
end

return Quest72259
