require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71160 = class("Quest71160", QuestActorProxy)
Quest71160.defaultAlias = "Quest71160"
local clientData
local this
local mainID
local actorAlias

function Quest71160:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71160:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7116001"] = self.OnSubStart7116001, ["7116002"] = self.OnSubStart7116002}
end

function Quest71160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7116001"] = self.OnSubFinish7116001, ["7116002"] = self.OnSubFinish7116002}
end

function Quest71160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71160:Start()
    print("Start")
end

function Quest71160:OnDestroy()
    print("OnDestroy")
end

function Quest71160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71160:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71160:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71160:OnSubStart7116001(arg1)
    print("OnSubStart7116001")
end

function Quest71160:OnSubFinish7116001(arg1)
    print("OnSubFinish7116001")
end

function Quest71160:OnSubStart7116002(arg1)
    print("OnSubStart7116002")
end

function Quest71160:OnSubFinish7116002(arg1)
    print("OnSubFinish7116002")
end

return Quest71160
