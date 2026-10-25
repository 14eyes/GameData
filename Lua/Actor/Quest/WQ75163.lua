require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75163 = class("Quest75163", QuestActorProxy)
Quest75163.defaultAlias = "Quest75163"
local clientData
local this
local mainID
local actorAlias

function Quest75163:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75163:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7516301"] = self.OnSubStart7516301}
end

function Quest75163:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7516301"] = self.OnSubFinish7516301}
end

function Quest75163:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7516301"] = self.OnSubFailed7516301}
end

function Quest75163:Start()
    print("Start")
end

function Quest75163:OnDestroy()
    print("OnDestroy")
end

function Quest75163:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75163:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75163:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75163:OnSubStart7516301(arg1)
    print("OnSubStart7516301")
end

function Quest75163:OnSubFinish7516301(arg1)
    print("OnSubFinish7516301")
end

function Quest75163:OnSubFailed7516301(arg1)
    print("OnSubFailed7516301")
    this:TransmitPlayerByQuestId(7516301, 2, nil, nil, nil)
end

return Quest75163
