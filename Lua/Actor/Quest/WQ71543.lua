require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71543 = class("Quest71543", QuestActorProxy)
Quest71543.defaultAlias = "Quest71543"
local clientData
local this
local mainID
local actorAlias

function Quest71543:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71543:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7154301"] = self.OnSubStart7154301}
end

function Quest71543:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7154301"] = self.OnSubFinish7154301}
end

function Quest71543:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71543:Start()
    print("Start")
end

function Quest71543:OnDestroy()
    print("OnDestroy")
end

function Quest71543:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71543:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71543:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71543:OnSubStart7154301(arg1)
    print("OnSubStart7154301")
end

function Quest71543:OnSubFinish7154301(arg1)
    print("OnSubFinish7154301")
end

return Quest71543
