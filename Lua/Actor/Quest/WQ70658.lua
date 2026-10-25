require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70658 = class("Quest70658", QuestActorProxy)
Quest70658.defaultAlias = "Quest70658"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70658:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70658:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7065801"] = self.OnSubStart7065801}
end

function Quest70658:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7065801"] = self.OnSubFinish7065801}
end

function Quest70658:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7065801"] = self.OnSubFailed7065801}
end

function Quest70658:Start()
    print("Start")
end

function Quest70658:OnDestroy()
    print("OnDestroy")
end

function Quest70658:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70658:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70658:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70658:ShowTutorial()
    print("ShowTutorial")
    self:ShowTutorialDialog(809, self.ShowActivityPage)
end

function Quest70658:ShowActivityPage()
    print("ShowActivityPage")
    actorUtils.ShowFleurFairMiniGame(2)
end

function Quest70658:OnSubStart7065801(arg1)
    print("OnSubStart7065801")
end

function Quest70658:OnSubFinish7065801(arg1)
    print("OnSubFinish7065801")
    self:ActionSafeCall(self.ShowTutorial)
end

function Quest70658:OnSubFailed7065801(arg1)
    print("OnSubFailed7065801")
end

return Quest70658
