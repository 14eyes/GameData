require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77680 = class("Quest77680", QuestActorProxy)
Quest77680.defaultAlias = "Quest77680"
local clientData
local this
local mainID
local actorAlias

function Quest77680:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77680:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7768001"] = self.OnSubStart7768001,
        ["7768002"] = self.OnSubStart7768002,
        ["7768003"] = self.OnSubStart7768003
    }
end

function Quest77680:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7768001"] = self.OnSubFinish7768001,
        ["7768002"] = self.OnSubFinish7768002,
        ["7768003"] = self.OnSubFinish7768003
    }
end

function Quest77680:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77680:Start()
    print("Start")
end

function Quest77680:OnDestroy()
    print("OnDestroy")
end

function Quest77680:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77680:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77680:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest77680:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77680:OnSubStart7768001(arg1)
    print("OnSubStart7768001")
end

function Quest77680:OnSubFinish7768001(arg1)
    print("OnSubFinish7768001")
end

function Quest77680:OnSubStart7768002(arg1)
    print("OnSubStart7768002")
end

function Quest77680:OnSubFinish7768002(arg1)
    print("OnSubFinish7768002")
end

function Quest77680:OnSubStart7768003(arg1)
    print("OnSubStart7768003")
end

function Quest77680:OnSubFinish7768003(arg1)
    print("OnSubFinish7768003")
end

return Quest77680
