require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72267 = class("Quest72267", QuestActorProxy)
Quest72267.defaultAlias = "Quest72267"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72267:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72267:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7226701"] = self.OnSubStart7226701,
        ["7226702"] = self.OnSubStart7226702,
        ["7226703"] = self.OnSubStart7226703,
        ["7226704"] = self.OnSubStart7226704
    }
end

function Quest72267:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7226701"] = self.OnSubFinish7226701,
        ["7226702"] = self.OnSubFinish7226702,
        ["7226703"] = self.OnSubFinish7226703,
        ["7226704"] = self.OnSubFinish7226704
    }
end

function Quest72267:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72267:Start()
    print("Start")
end

function Quest72267:OnDestroy()
    print("OnDestroy")
end

function Quest72267:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72267:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72267:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72267:OnSubStart7226701(arg1)
    print("OnSubStart7226701")
end

function Quest72267:OnSubFinish7226701(arg1)
    print("OnSubFinish7226701")
end

function Quest72267:OnSubStart7226702(arg1)
    print("OnSubStart7226702")
end

function Quest72267:OnSubFinish7226702(arg1)
    print("OnSubFinish7226702")
end

function Quest72267:OnSubStart7226703(arg1)
    print("OnSubStart7226703")
end

function Quest72267:OnSubFinish7226703(arg1)
    print("OnSubFinish7226703")
end

function Quest72267:OnSubStart7226704(arg1)
    print("OnSubStart7226704")
end

function Quest72267:OnSubFinish7226704(arg1)
    print("OnSubFinish7226704")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

return Quest72267
