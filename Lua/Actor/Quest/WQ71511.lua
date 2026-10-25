require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71511 = class("Quest71511", QuestActorProxy)
Quest71511.defaultAlias = "Quest71511"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71511:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71511:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7151101"] = self.OnSubStart7151101}
end

function Quest71511:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7151101"] = self.OnSubFinish7151101}
end

function Quest71511:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71511:Start()
    print("Start")
end

function Quest71511:OnDestroy()
    print("OnDestroy")
end

function Quest71511:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71511:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71511:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
end

function Quest71511:OnSubStart7151101(arg1)
    print("OnSubStart7151101")
end

function Quest71511:OnSubFinish7151101(arg1)
    print("OnSubFinish7151101")
end

return Quest71511
