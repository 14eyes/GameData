require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70654 = class("Quest70654", QuestActorProxy)
Quest70654.defaultAlias = "Quest70654"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70654:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70654:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7065401"] = self.OnSubStart7065401}
end

function Quest70654:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7065401"] = self.OnSubFinish7065401}
end

function Quest70654:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7065401"] = self.OnSubFailed7065401}
end

function Quest70654:Start()
    print("Start")
end

function Quest70654:OnDestroy()
    print("OnDestroy")
end

function Quest70654:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70654:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70654:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70654:ShowTutorial()
    print("ShowTutorial")
    self:ShowTutorialDialog(808, function()
        actorUtils.ShowFleurFairMiniGame(1)
    end)
end

function Quest70654:OnSubStart7065401(arg1)
    print("OnSubStart7065401")
end

function Quest70654:OnSubFinish7065401(arg1)
    print("OnSubFinish7065401")
    self:ActionSafeCall(self.ShowTutorial)
end

function Quest70654:OnSubFailed7065401(arg1)
    print("OnSubFailed7065401")
end

return Quest70654
