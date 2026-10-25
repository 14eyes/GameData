require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73090 = class("Quest73090", QuestActorProxy)
Quest73090.defaultAlias = "Quest73090"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73090:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73090:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7309001"] = self.OnSubStart7309001, ["7309002"] = self.OnSubStart7309002}
end

function Quest73090:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7309001"] = self.OnSubFinish7309001, ["7309002"] = self.OnSubFinish7309002}
end

function Quest73090:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73090:Start()
    print("Start")
end

function Quest73090:OnDestroy()
    print("OnDestroy")
end

function Quest73090:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73090:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73090:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73090:OnSubStart7309001(arg1)
    print("OnSubStart7309001")
end

function Quest73090:OnSubFinish7309001(arg1)
    print("OnSubFinish7309001")
end

function Quest73090:OnSubStart7309002(arg1)
    print("OnSubStart7309002")
end

function Quest73090:OnSubFinish7309002(arg1)
    print("OnSubFinish7309002")
end

return Quest73090
