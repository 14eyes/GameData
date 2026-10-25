require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77167 = class("Quest77167", QuestActorProxy)
Quest77167.defaultAlias = "Quest77167"
local clientData
local this
local mainID
local actorAlias

function Quest77167:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77167:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7716708"] = self.OnSubStart7716708,
        ["7716701"] = self.OnSubStart7716701,
        ["7716702"] = self.OnSubStart7716702,
        ["7716703"] = self.OnSubStart7716703,
        ["7716705"] = self.OnSubStart7716705,
        ["7716706"] = self.OnSubStart7716706,
        ["7716707"] = self.OnSubStart7716707,
        ["7716709"] = self.OnSubStart7716709,
        ["7716710"] = self.OnSubStart7716710,
        ["7716711"] = self.OnSubStart7716711,
        ["7716704"] = self.OnSubStart7716704
    }
end

function Quest77167:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7716708"] = self.OnSubFinish7716708,
        ["7716701"] = self.OnSubFinish7716701,
        ["7716702"] = self.OnSubFinish7716702,
        ["7716703"] = self.OnSubFinish7716703,
        ["7716705"] = self.OnSubFinish7716705,
        ["7716706"] = self.OnSubFinish7716706,
        ["7716707"] = self.OnSubFinish7716707,
        ["7716709"] = self.OnSubFinish7716709,
        ["7716710"] = self.OnSubFinish7716710,
        ["7716711"] = self.OnSubFinish7716711,
        ["7716704"] = self.OnSubFinish7716704
    }
end

function Quest77167:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7716703"] = self.OnSubFailed7716703,
        ["7716707"] = self.OnSubFailed7716707,
        ["7716711"] = self.OnSubFailed7716711
    }
end

function Quest77167:Start()
    print("Start")
end

function Quest77167:OnDestroy()
    print("OnDestroy")
end

function Quest77167:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77167:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77167:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77167:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77167:OnSubStart7716708(arg1)
    print("OnSubStart7716708")
    actorUtils.FinishQuestWithParam({false}, {7716708})
end

function Quest77167:OnSubFinish7716708(arg1)
    print("OnSubFinish7716708")
end

function Quest77167:OnSubStart7716701(arg1)
    print("OnSubStart7716701")
end

function Quest77167:OnSubFinish7716701(arg1)
    print("OnSubFinish7716701")
end

function Quest77167:OnSubStart7716702(arg1)
    print("OnSubStart7716702")
end

function Quest77167:OnSubFinish7716702(arg1)
    print("OnSubFinish7716702")
end

function Quest77167:OnSubStart7716703(arg1)
    print("OnSubStart7716703")
end

function Quest77167:OnSubFinish7716703(arg1)
    print("OnSubFinish7716703")
end

function Quest77167:OnSubFailed7716703(arg1)
    print("OnSubFailed7716703")
    this:RecycleAllRes()
end

function Quest77167:OnSubStart7716705(arg1)
    print("OnSubStart7716705")
end

function Quest77167:OnSubFinish7716705(arg1)
    print("OnSubFinish7716705")
end

function Quest77167:OnSubStart7716706(arg1)
    print("OnSubStart7716706")
end

function Quest77167:OnSubFinish7716706(arg1)
    print("OnSubFinish7716706")
end

function Quest77167:OnSubStart7716707(arg1)
    print("OnSubStart7716707")
end

function Quest77167:OnSubFinish7716707(arg1)
    print("OnSubFinish7716707")
end

function Quest77167:OnSubFailed7716707(arg1)
    print("OnSubFailed7716707")
    this:RecycleAllRes()
end

function Quest77167:OnSubStart7716709(arg1)
    print("OnSubStart7716709")
end

function Quest77167:OnSubFinish7716709(arg1)
    print("OnSubFinish7716709")
end

function Quest77167:OnSubStart7716710(arg1)
    print("OnSubStart7716710")
end

function Quest77167:OnSubFinish7716710(arg1)
    print("OnSubFinish7716710")
end

function Quest77167:OnSubStart7716711(arg1)
    print("OnSubStart7716711")
end

function Quest77167:OnSubFinish7716711(arg1)
    print("OnSubFinish7716711")
end

function Quest77167:OnSubFailed7716711(arg1)
    print("OnSubFailed7716711")
    this:RecycleAllRes()
end

function Quest77167:OnSubStart7716704(arg1)
    print("OnSubStart7716704")
    actorUtils.FinishQuestWithParam({false}, {7716704})
end

function Quest77167:OnSubFinish7716704(arg1)
    print("OnSubFinish7716704")
end

return Quest77167
