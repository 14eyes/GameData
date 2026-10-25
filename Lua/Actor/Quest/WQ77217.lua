require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77217 = class("Quest77217", QuestActorProxy)
Quest77217.defaultAlias = "Quest77217"
local clientData
local this
local mainID
local actorAlias

function Quest77217:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77217:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721701"] = self.OnSubStart7721701,
        ["7721702"] = self.OnSubStart7721702,
        ["7721703"] = self.OnSubStart7721703
    }
end

function Quest77217:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721701"] = self.OnSubFinish7721701,
        ["7721702"] = self.OnSubFinish7721702,
        ["7721703"] = self.OnSubFinish7721703
    }
end

function Quest77217:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7721702"] = self.OnSubFailed7721702}
end

function Quest77217:Start()
    print("Start")
end

function Quest77217:OnDestroy()
    print("OnDestroy")
end

function Quest77217:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77217:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77217:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77217:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77217:OnSubStart7721701(arg1)
    print("OnSubStart7721701")
end

function Quest77217:OnSubFinish7721701(arg1)
    print("OnSubFinish7721701")
end

function Quest77217:OnSubStart7721702(arg1)
    print("OnSubStart7721702")
end

function Quest77217:OnSubFinish7721702(arg1)
    print("OnSubFinish7721702")
end

function Quest77217:OnSubFailed7721702(arg1)
    print("OnSubFailed7721702")
    this:RecycleAllRes()
end

function Quest77217:OnSubStart7721703(arg1)
    print("OnSubStart7721703")
    actorUtils.FinishQuestWithParam({false}, {7721703})
end

function Quest77217:OnSubFinish7721703(arg1)
    print("OnSubFinish7721703")
end

return Quest77217
