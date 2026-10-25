require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70531 = class("Quest70531", QuestActorProxy)
Quest70531.defaultAlias = "Quest70531"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70531:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70531:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7053101"] = self.OnSubStart7053101}
end

function Quest70531:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7053101"] = self.OnSubFinish7053101}
end

function Quest70531:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70531:Start()
    print("Start")
end

function Quest70531:OnDestroy()
    print("OnDestroy")
end

function Quest70531:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70531:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70531:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70531:OnSubStart7053101(arg1)
    print("OnSubStart7053101")
end

function Quest70531:OnSubFinish7053101(arg1)
    print("OnSubFinish7053101")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(971, function(arg1)
            actorUtils.ShowContext("JourneyDetailPage", 0)
        end)
    end)
end

return Quest70531
