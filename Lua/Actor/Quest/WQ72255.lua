require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72255 = class("Quest72255", QuestActorProxy)
Quest72255.defaultAlias = "Quest72255"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72255:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72255:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7225501"] = self.OnSubStart7225501}
end

function Quest72255:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7225501"] = self.OnSubFinish7225501}
end

function Quest72255:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72255:Start()
    print("Start")
end

function Quest72255:OnDestroy()
    print("OnDestroy")
end

function Quest72255:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72255:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72255:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72255:OnSubStart7225501(arg1)
    print("OnSubStart7225501")
end

function Quest72255:OnSubFinish7225501(arg1)
    print("OnSubFinish7225501")
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "QUEST_Message_WQ72244_01", false, true)
end

return Quest72255
