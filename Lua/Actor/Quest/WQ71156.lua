require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71156 = class("Quest71156", QuestActorProxy)
Quest71156.defaultAlias = "Quest71156"
local clientData
local this
local mainID
local actorAlias

function Quest71156:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71156:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115601"] = self.OnSubStart7115601, ["7115602"] = self.OnSubStart7115602}
end

function Quest71156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115601"] = self.OnSubFinish7115601, ["7115602"] = self.OnSubFinish7115602}
end

function Quest71156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71156:Start()
    print("Start")
end

function Quest71156:OnDestroy()
    print("OnDestroy")
end

function Quest71156:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71156:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71156:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71156:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71156:OnSubStart7115601(arg1)
    print("OnSubStart7115601")
end

function Quest71156:OnSubFinish7115601(arg1)
    print("OnSubFinish7115601")
end

function Quest71156:OnSubStart7115602(arg1)
    print("OnSubStart7115602")
end

function Quest71156:OnSubFinish7115602(arg1)
    print("OnSubFinish7115602")
end

return Quest71156
