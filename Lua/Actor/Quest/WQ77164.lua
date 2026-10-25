require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77164 = class("Quest77164", QuestActorProxy)
Quest77164.defaultAlias = "Quest77164"
local clientData
local this
local mainID
local actorAlias

function Quest77164:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77164:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7716401"] = self.OnSubStart7716401, ["7716402"] = self.OnSubStart7716402}
end

function Quest77164:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7716401"] = self.OnSubFinish7716401, ["7716402"] = self.OnSubFinish7716402}
end

function Quest77164:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7716402"] = self.OnSubFailed7716402}
end

function Quest77164:Start()
    print("Start")
end

function Quest77164:OnDestroy()
    print("OnDestroy")
end

function Quest77164:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77164:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77164:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77164:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77164:OnSubStart7716401(arg1)
    print("OnSubStart7716401")
    actorUtils.FinishQuestWithParam({false}, {7716401})
end

function Quest77164:OnSubFinish7716401(arg1)
    print("OnSubFinish7716401")
end

function Quest77164:OnSubStart7716402(arg1)
    print("OnSubStart7716402")
end

function Quest77164:OnSubFinish7716402(arg1)
    print("OnSubFinish7716402")
end

function Quest77164:OnSubFailed7716402(arg1)
    print("OnSubFailed7716402")
    this:RecycleAllRes()
end

return Quest77164
