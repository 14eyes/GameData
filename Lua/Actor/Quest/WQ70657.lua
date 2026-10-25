require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70657 = class("Quest70657", QuestActorProxy)
Quest70657.defaultAlias = "Quest70657"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70657:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70657:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7065701"] = self.OnSubStart7065701}
end

function Quest70657:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7065701"] = self.OnSubFinish7065701}
end

function Quest70657:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7065701"] = self.OnSubFailed7065701}
end

function Quest70657:Start()
    print("Start")
end

function Quest70657:OnDestroy()
    print("OnDestroy")
end

function Quest70657:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70657:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70657:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70657:OpenShotUI()
    print("OpenShotUI")
    actorUtils.ShowFleurFairMiniGame(0)
end

function Quest70657:ShowTutor()
    print("ShowTutor")
    self:ShowTutorialDialog(807, self.OpenShotUI)
end

function Quest70657:OnSubStart7065701(arg1)
    print("OnSubStart7065701")
end

function Quest70657:OnSubFinish7065701(arg1)
    print("OnSubFinish7065701")
    self:ActionSafeCall(self.ShowTutor)
end

function Quest70657:OnSubFailed7065701(arg1)
    print("OnSubFailed7065701")
end

return Quest70657
