require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75511 = class("Quest75511", QuestActorProxy)
Quest75511.defaultAlias = "Quest75511"
local clientData
local this
local mainID
local actorAlias

function Quest75511:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75511:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7551101"] = self.OnSubStart7551101, ["7551102"] = self.OnSubStart7551102}
end

function Quest75511:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7551101"] = self.OnSubFinish7551101, ["7551102"] = self.OnSubFinish7551102}
end

function Quest75511:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75511:Start()
    print("Start")
end

function Quest75511:OnDestroy()
    print("OnDestroy")
end

function Quest75511:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75511:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75511:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75511:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75511:OnSubStart7551101(arg1)
    print("OnSubStart7551101")
end

function Quest75511:OnSubFinish7551101(arg1)
    print("OnSubFinish7551101")
end

function Quest75511:OnSubStart7551102(arg1)
    print("OnSubStart7551102")
    actorUtils.FinishQuestID(false, 7551102)
end

function Quest75511:OnSubFinish7551102(arg1)
    print("OnSubFinish7551102")
end

return Quest75511
