require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77122 = class("Quest77122", QuestActorProxy)
Quest77122.defaultAlias = "Quest77122"
local clientData
local this
local mainID
local actorAlias

function Quest77122:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77122:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7712201"] = self.OnSubStart7712201,
        ["7712207"] = self.OnSubStart7712207,
        ["7712202"] = self.OnSubStart7712202,
        ["7712203"] = self.OnSubStart7712203,
        ["7712204"] = self.OnSubStart7712204,
        ["7712205"] = self.OnSubStart7712205,
        ["7712206"] = self.OnSubStart7712206
    }
end

function Quest77122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7712201"] = self.OnSubFinish7712201,
        ["7712207"] = self.OnSubFinish7712207,
        ["7712202"] = self.OnSubFinish7712202,
        ["7712203"] = self.OnSubFinish7712203,
        ["7712204"] = self.OnSubFinish7712204,
        ["7712205"] = self.OnSubFinish7712205,
        ["7712206"] = self.OnSubFinish7712206
    }
end

function Quest77122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77122:Start()
    print("Start")
end

function Quest77122:OnDestroy()
    print("OnDestroy")
end

function Quest77122:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77122:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77122:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77122:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77122:OnSubStart7712201(arg1)
    print("OnSubStart7712201")
end

function Quest77122:OnSubFinish7712201(arg1)
    print("OnSubFinish7712201")
end

function Quest77122:OnSubStart7712207(arg1)
    print("OnSubStart7712207")
end

function Quest77122:OnSubFinish7712207(arg1)
    print("OnSubFinish7712207")
end

function Quest77122:OnSubStart7712202(arg1)
    print("OnSubStart7712202")
end

function Quest77122:OnSubFinish7712202(arg1)
    print("OnSubFinish7712202")
end

function Quest77122:OnSubStart7712203(arg1)
    print("OnSubStart7712203")
end

function Quest77122:OnSubFinish7712203(arg1)
    print("OnSubFinish7712203")
end

function Quest77122:OnSubStart7712204(arg1)
    print("OnSubStart7712204")
end

function Quest77122:OnSubFinish7712204(arg1)
    print("OnSubFinish7712204")
end

function Quest77122:OnSubStart7712205(arg1)
    print("OnSubStart7712205")
end

function Quest77122:OnSubFinish7712205(arg1)
    print("OnSubFinish7712205")
end

function Quest77122:OnSubStart7712206(arg1)
    print("OnSubStart7712206")
end

function Quest77122:OnSubFinish7712206(arg1)
    print("OnSubFinish7712206")
end

return Quest77122
