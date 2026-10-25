require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74017 = class("Quest74017", QuestActorProxy)
Quest74017.defaultAlias = "Quest74017"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74017:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7401701"] = self.OnSubStart7401701,
        ["7401702"] = self.OnSubStart7401702,
        ["7401703"] = self.OnSubStart7401703,
        ["7401704"] = self.OnSubStart7401704
    }
end

function Quest74017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7401701"] = self.OnSubFinish7401701,
        ["7401702"] = self.OnSubFinish7401702,
        ["7401703"] = self.OnSubFinish7401703,
        ["7401704"] = self.OnSubFinish7401704
    }
end

function Quest74017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74017:Start()
    print("Start")
end

function Quest74017:OnDestroy()
    print("OnDestroy")
end

function Quest74017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74017:OnSubStart7401701(arg1)
    print("OnSubStart7401701")
    actorUtils.FinishQuestID(false, 7401701)
end

function Quest74017:OnSubFinish7401701(arg1)
    print("OnSubFinish7401701")
end

function Quest74017:OnSubStart7401702(arg1)
    print("OnSubStart7401702")
end

function Quest74017:OnSubFinish7401702(arg1)
    print("OnSubFinish7401702")
end

function Quest74017:OnSubStart7401703(arg1)
    print("OnSubStart7401703")
end

function Quest74017:OnSubFinish7401703(arg1)
    print("OnSubFinish7401703")
end

function Quest74017:OnSubStart7401704(arg1)
    print("OnSubStart7401704")
end

function Quest74017:OnSubFinish7401704(arg1)
    print("OnSubFinish7401704")
end

return Quest74017
