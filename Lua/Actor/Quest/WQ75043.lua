require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75043 = class("Quest75043", QuestActorProxy)
Quest75043.defaultAlias = "Quest75043"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75043:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75043:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7504301"] = self.OnSubStart7504301}
end

function Quest75043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7504301"] = self.OnSubFinish7504301}
end

function Quest75043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75043:Start()
    print("Start")
end

function Quest75043:OnDestroy()
    print("OnDestroy")
end

function Quest75043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75043:OnSubStart7504301(arg1)
    print("OnSubStart7504301")
end

function Quest75043:OnSubFinish7504301(arg1)
    print("OnSubFinish7504301")
    actorUtils.SimpleUIShowForLua(false, "QuestReviewTipsDialog", "2")
end

return Quest75043
