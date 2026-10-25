require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77676 = class("Quest77676", QuestActorProxy)
Quest77676.defaultAlias = "Quest77676"
local clientData
local this
local mainID
local actorAlias

function Quest77676:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77676:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7767601"] = self.OnSubStart7767601}
end

function Quest77676:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7767601"] = self.OnSubFinish7767601}
end

function Quest77676:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77676:Start()
    print("Start")
end

function Quest77676:OnDestroy()
    print("OnDestroy")
end

function Quest77676:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77676:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77676:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest77676:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77676:OnSubStart7767601(arg1)
    print("OnSubStart7767601")
end

function Quest77676:OnSubFinish7767601(arg1)
    print("OnSubFinish7767601")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2889, nil)
    end)
end

return Quest77676
