require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77805 = class("Quest77805", QuestActorProxy)
Quest77805.defaultAlias = "Quest77805"
local clientData
local this
local mainID
local actorAlias

function Quest77805:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77805:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7780501"] = self.OnSubStart7780501}
end

function Quest77805:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7780501"] = self.OnSubFinish7780501}
end

function Quest77805:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77805:Start()
    print("Start")
end

function Quest77805:OnDestroy()
    print("OnDestroy")
end

function Quest77805:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77805:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77805:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest77805:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77805:OnSubStart7780501(arg1)
    print("OnSubStart7780501")
end

function Quest77805:OnSubFinish7780501(arg1)
    print("OnSubFinish7780501")
end

return Quest77805
