require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77216 = class("Quest77216", QuestActorProxy)
Quest77216.defaultAlias = "Quest77216"
local clientData
local this
local mainID
local actorAlias

function Quest77216:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77216:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721601"] = self.OnSubStart7721601,
        ["7721602"] = self.OnSubStart7721602,
        ["7721603"] = self.OnSubStart7721603
    }
end

function Quest77216:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721601"] = self.OnSubFinish7721601,
        ["7721602"] = self.OnSubFinish7721602,
        ["7721603"] = self.OnSubFinish7721603
    }
end

function Quest77216:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7721602"] = self.OnSubFailed7721602}
end

function Quest77216:Start()
    print("Start")
end

function Quest77216:OnDestroy()
    print("OnDestroy")
end

function Quest77216:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77216:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77216:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77216:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77216:OnSubStart7721601(arg1)
    print("OnSubStart7721601")
end

function Quest77216:OnSubFinish7721601(arg1)
    print("OnSubFinish7721601")
end

function Quest77216:OnSubStart7721602(arg1)
    print("OnSubStart7721602")
end

function Quest77216:OnSubFinish7721602(arg1)
    print("OnSubFinish7721602")
end

function Quest77216:OnSubFailed7721602(arg1)
    print("OnSubFailed7721602")
    this:RecycleAllRes()
end

function Quest77216:OnSubStart7721603(arg1)
    print("OnSubStart7721603")
    actorUtils.FinishQuestWithParam({false}, {7721603})
    this:BanCrowdNpc(0, 0, nil, false, true)
end

function Quest77216:OnSubFinish7721603(arg1)
    print("OnSubFinish7721603")
end

return Quest77216
