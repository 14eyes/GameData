require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73669 = class("Quest73669", QuestActorProxy)
Quest73669.defaultAlias = "Quest73669"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73669:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73669:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366901"] = self.OnSubStart7366901}
end

function Quest73669:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366901"] = self.OnSubFinish7366901}
end

function Quest73669:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73669:Start()
    print("Start")
end

function Quest73669:OnDestroy()
    print("OnDestroy")
end

function Quest73669:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73669:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73669:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73669:OnSubStart7366901(arg1)
    print("OnSubStart7366901")
end

function Quest73669:OnSubFinish7366901(arg1)
    print("OnSubFinish7366901")
end

return Quest73669
