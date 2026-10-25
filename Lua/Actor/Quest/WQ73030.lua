require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73030 = class("Quest73030", QuestActorProxy)
Quest73030.defaultAlias = "Quest73030"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7303001"] = self.OnSubStart7303001,
        ["7303002"] = self.OnSubStart7303002,
        ["7303003"] = self.OnSubStart7303003
    }
end

function Quest73030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7303001"] = self.OnSubFinish7303001,
        ["7303002"] = self.OnSubFinish7303002,
        ["7303003"] = self.OnSubFinish7303003
    }
end

function Quest73030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73030:Start()
    print("Start")
end

function Quest73030:OnDestroy()
    print("OnDestroy")
end

function Quest73030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73030:OnSubStart7303001(arg1)
    print("OnSubStart7303001")
end

function Quest73030:OnSubFinish7303001(arg1)
    print("OnSubFinish7303001")
end

function Quest73030:OnSubStart7303002(arg1)
    print("OnSubStart7303002")
end

function Quest73030:OnSubFinish7303002(arg1)
    print("OnSubFinish7303002")
end

function Quest73030:OnSubStart7303003(arg1)
    print("OnSubStart7303003")
end

function Quest73030:OnSubFinish7303003(arg1)
    print("OnSubFinish7303003")
end

return Quest73030
