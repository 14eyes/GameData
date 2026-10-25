require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71113 = class("Quest71113", QuestActorProxy)
Quest71113.defaultAlias = "Quest71113"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71113:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71113:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7111301"] = self.OnSubStart7111301}
end

function Quest71113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7111301"] = self.OnSubFinish7111301}
end

function Quest71113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71113:Start()
    print("Start")
end

function Quest71113:OnDestroy()
    print("OnDestroy")
end

function Quest71113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71113:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71113:OnSubStart7111301(arg1)
    print("OnSubStart7111301")
end

function Quest71113:OnSubFinish7111301(arg1)
    print("OnSubFinish7111301")
end

return Quest71113
