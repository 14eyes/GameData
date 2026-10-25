require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73322 = class("Quest73322", QuestActorProxy)
Quest73322.defaultAlias = "Quest73322"
local clientData
local this
local mainID
local actorAlias
local subIDs
local points
local datas

function Quest73322:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73322:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7332207"] = self.OnSubStart7332207,
        ["7332208"] = self.OnSubStart7332208,
        ["7332210"] = self.OnSubStart7332210
    }
end

function Quest73322:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7332207"] = self.OnSubFinish7332207,
        ["7332208"] = self.OnSubFinish7332208,
        ["7332210"] = self.OnSubFinish7332210
    }
end

function Quest73322:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73322:Start()
    print("Start")
end

function Quest73322:OnDestroy()
    print("OnDestroy")
end

function Quest73322:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73322:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73322:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73322:OnSubStart7332207(arg1)
    print("OnSubStart7332207")
end

function Quest73322:OnSubFinish7332207(arg1)
    print("OnSubFinish7332207")
end

function Quest73322:OnSubStart7332208(arg1)
    print("OnSubStart7332208")
end

function Quest73322:OnSubFinish7332208(arg1)
    print("OnSubFinish7332208")
end

function Quest73322:OnSubStart7332210(arg1)
    print("OnSubStart7332210")
end

function Quest73322:OnSubFinish7332210(arg1)
    print("OnSubFinish7332210")
end

return Quest73322
