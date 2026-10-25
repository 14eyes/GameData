require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72127 = class("Quest72127", QuestActorProxy)
Quest72127.defaultAlias = "Quest72127"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72127:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72127:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212701"] = self.OnSubStart7212701,
        ["7212702"] = self.OnSubStart7212702,
        ["7212703"] = self.OnSubStart7212703,
        ["7212704"] = self.OnSubStart7212704
    }
end

function Quest72127:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212701"] = self.OnSubFinish7212701,
        ["7212702"] = self.OnSubFinish7212702,
        ["7212703"] = self.OnSubFinish7212703,
        ["7212704"] = self.OnSubFinish7212704
    }
end

function Quest72127:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212701"] = self.OnSubFailed7212701,
        ["7212702"] = self.OnSubFailed7212702,
        ["7212703"] = self.OnSubFailed7212703,
        ["7212704"] = self.OnSubFailed7212704
    }
end

function Quest72127:Start()
    print("Start")
end

function Quest72127:OnDestroy()
    print("OnDestroy")
end

function Quest72127:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72127:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72127:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72127:OnSubStart7212701(arg1)
    print("OnSubStart7212701")
end

function Quest72127:OnSubFinish7212701(arg1)
    print("OnSubFinish7212701")
end

function Quest72127:OnSubFailed7212701(arg1)
    print("OnSubFailed7212701")
end

function Quest72127:OnSubStart7212702(arg1)
    print("OnSubStart7212702")
end

function Quest72127:OnSubFinish7212702(arg1)
    print("OnSubFinish7212702")
end

function Quest72127:OnSubFailed7212702(arg1)
    print("OnSubFailed7212702")
end

function Quest72127:OnSubStart7212703(arg1)
    print("OnSubStart7212703")
end

function Quest72127:OnSubFinish7212703(arg1)
    print("OnSubFinish7212703")
end

function Quest72127:OnSubFailed7212703(arg1)
    print("OnSubFailed7212703")
end

function Quest72127:OnSubStart7212704(arg1)
    print("OnSubStart7212704")
end

function Quest72127:OnSubFinish7212704(arg1)
    print("OnSubFinish7212704")
end

function Quest72127:OnSubFailed7212704(arg1)
    print("OnSubFailed7212704")
end

return Quest72127
