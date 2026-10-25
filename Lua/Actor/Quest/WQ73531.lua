require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73531 = class("Quest73531", QuestActorProxy)
Quest73531.defaultAlias = "Quest73531"
local clientData
local this
local mainID
local actorAlias

function Quest73531:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest73531:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7353101"] = self.OnSubStart7353101}
end

function Quest73531:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7353101"] = self.OnSubFinish7353101}
end

function Quest73531:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7353101"] = self.OnSubFailed7353101}
end

function Quest73531:Start()
    print("Start")
end

function Quest73531:OnDestroy()
    print("OnDestroy")
end

function Quest73531:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73531:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73531:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc("Q7365002_N30225", 3)
end

function Quest73531:OnSubStart7353101(arg1)
    print("OnSubStart7353101")
end

function Quest73531:OnSubFinish7353101(arg1)
    print("OnSubFinish7353101")
end

function Quest73531:OnSubFailed7353101(arg1)
    print("OnSubFailed7353101")
end

return Quest73531
