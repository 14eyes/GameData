require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77804 = class("Quest77804", QuestActorProxy)
Quest77804.defaultAlias = "Quest77804"
local clientData
local this
local mainID
local actorAlias

function Quest77804:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77804:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7780401"] = self.OnSubStart7780401, ["7780402"] = self.OnSubStart7780402}
end

function Quest77804:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7780401"] = self.OnSubFinish7780401, ["7780402"] = self.OnSubFinish7780402}
end

function Quest77804:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77804:Start()
    print("Start")
end

function Quest77804:OnDestroy()
    print("OnDestroy")
end

function Quest77804:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77804:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77804:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest77804:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77804:OnSubStart7780401(arg1)
    print("OnSubStart7780401")
end

function Quest77804:OnSubFinish7780401(arg1)
    print("OnSubFinish7780401")
end

function Quest77804:OnSubStart7780402(arg1)
    print("OnSubStart7780402")
end

function Quest77804:OnSubFinish7780402(arg1)
    print("OnSubFinish7780402")
    this:CancelRangeStoryByQuest(510790101)
end

return Quest77804
