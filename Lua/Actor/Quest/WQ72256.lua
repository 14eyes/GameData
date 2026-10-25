require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72256 = class("Quest72256", QuestActorProxy)
Quest72256.defaultAlias = "Quest72256"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72256:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72256:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7225601"] = self.OnSubStart7225601}
end

function Quest72256:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7225601"] = self.OnSubFinish7225601}
end

function Quest72256:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72256:Start()
    print("Start")
end

function Quest72256:OnDestroy()
    print("OnDestroy")
end

function Quest72256:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72256:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72256:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72256:OnSubStart7225601(arg1)
    print("OnSubStart7225601")
end

function Quest72256:OnSubFinish7225601(arg1)
    print("OnSubFinish7225601")
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "QUEST_Message_WQ72244_01", false, true)
end

return Quest72256
