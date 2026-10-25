require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72258 = class("Quest72258", QuestActorProxy)
Quest72258.defaultAlias = "Quest72258"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72258:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72258:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7225801"] = self.OnSubStart7225801}
end

function Quest72258:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7225801"] = self.OnSubFinish7225801}
end

function Quest72258:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72258:Start()
    print("Start")
end

function Quest72258:OnDestroy()
    print("OnDestroy")
end

function Quest72258:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72258:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72258:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72258:OnSubStart7225801(arg1)
    print("OnSubStart7225801")
end

function Quest72258:OnSubFinish7225801(arg1)
    print("OnSubFinish7225801")
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "QUEST_Message_WQ72244_01", false, true)
end

return Quest72258
