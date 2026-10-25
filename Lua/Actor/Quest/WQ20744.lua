require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20744 = class("Quest20744", QuestActorProxy)
Quest20744.defaultAlias = "Quest20744"
local clientData
local mainID
local actorAlias
local subIDs

function Quest20744:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest20744:OnSubStartHandlerBuild()
    self.subStartHandlers = {["2074401"] = self.OnSubStart2074401}
end

function Quest20744:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["2074401"] = self.OnSubFinish2074401}
end

function Quest20744:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["2074401"] = self.OnSubFailed2074401}
end

function Quest20744:Start()
    print("Start")
end

function Quest20744:OnDestroy()
    print("OnDestroy")
end

function Quest20744:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20744:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20744:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest20744:OnSubStart2074401(arg1)
    print("OnSubStart2074401")
end

function Quest20744:OnSubFinish2074401(arg1)
    print("OnSubFinish2074401")
end

function Quest20744:OnSubFailed2074401(arg1)
    print("OnSubFailed2074401")
end

return Quest20744
