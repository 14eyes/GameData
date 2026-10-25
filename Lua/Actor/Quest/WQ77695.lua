require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77695 = class("Quest77695", QuestActorProxy)
Quest77695.defaultAlias = "Quest77695"
local clientData
local this
local mainID
local actorAlias

function Quest77695:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77695:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7769501"] = self.OnSubStart7769501, ["7769502"] = self.OnSubStart7769502}
end

function Quest77695:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7769501"] = self.OnSubFinish7769501, ["7769502"] = self.OnSubFinish7769502}
end

function Quest77695:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77695:Start()
    print("Start")
end

function Quest77695:OnDestroy()
    print("OnDestroy")
end

function Quest77695:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77695:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77695:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77695:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77695:OnSubStart7769501(arg1)
    print("OnSubStart7769501")
    actorUtils.FinishQuestWithParam({false}, {7769501})
end

function Quest77695:OnSubFinish7769501(arg1)
    print("OnSubFinish7769501")
end

function Quest77695:OnSubStart7769502(arg1)
    print("OnSubStart7769502")
end

function Quest77695:OnSubFinish7769502(arg1)
    print("OnSubFinish7769502")
end

return Quest77695
