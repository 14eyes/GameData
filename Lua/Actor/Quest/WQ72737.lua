require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72737 = class("Quest72737", QuestActorProxy)
Quest72737.defaultAlias = "Quest72737"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest72737:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72737:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7273701"] = self.OnSubStart7273701, ["7273702"] = self.OnSubStart7273702}
end

function Quest72737:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7273701"] = self.OnSubFinish7273701, ["7273702"] = self.OnSubFinish7273702}
end

function Quest72737:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72737:Start()
    print("Start")
end

function Quest72737:OnDestroy()
    print("OnDestroy")
end

function Quest72737:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72737:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72737:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72737:OnSubStart7273701(arg1)
    print("OnSubStart7273701")
end

function Quest72737:OnSubFinish7273701(arg1)
    print("OnSubFinish7273701")
end

function Quest72737:OnSubStart7273702(arg1)
    print("OnSubStart7273702")
    globalActor:StartGuide("GuideProgressGuideIOS")
end

function Quest72737:OnSubFinish7273702(arg1)
    print("OnSubFinish7273702")
end

return Quest72737
