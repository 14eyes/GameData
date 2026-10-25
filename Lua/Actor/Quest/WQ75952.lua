require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75952 = class("Quest75952", QuestActorProxy)
Quest75952.defaultAlias = "Quest75952"
local clientData
local this
local mainID
local actorAlias

function Quest75952:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75952:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7595201"] = self.OnSubStart7595201,
        ["7595202"] = self.OnSubStart7595202,
        ["7595203"] = self.OnSubStart7595203,
        ["7595204"] = self.OnSubStart7595204,
        ["7595205"] = self.OnSubStart7595205,
        ["7595206"] = self.OnSubStart7595206
    }
end

function Quest75952:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7595201"] = self.OnSubFinish7595201,
        ["7595202"] = self.OnSubFinish7595202,
        ["7595203"] = self.OnSubFinish7595203,
        ["7595204"] = self.OnSubFinish7595204,
        ["7595205"] = self.OnSubFinish7595205,
        ["7595206"] = self.OnSubFinish7595206
    }
end

function Quest75952:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75952:Start()
    print("Start")
end

function Quest75952:OnDestroy()
    print("OnDestroy")
end

function Quest75952:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75952:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75952:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75952:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75952:OnSubStart7595201(arg1)
    print("OnSubStart7595201")
end

function Quest75952:OnSubFinish7595201(arg1)
    print("OnSubFinish7595201")
end

function Quest75952:OnSubStart7595202(arg1)
    print("OnSubStart7595202")
end

function Quest75952:OnSubFinish7595202(arg1)
    print("OnSubFinish7595202")
end

function Quest75952:OnSubStart7595203(arg1)
    print("OnSubStart7595203")
end

function Quest75952:OnSubFinish7595203(arg1)
    print("OnSubFinish7595203")
end

function Quest75952:OnSubStart7595204(arg1)
    print("OnSubStart7595204")
end

function Quest75952:OnSubFinish7595204(arg1)
    print("OnSubFinish7595204")
end

function Quest75952:OnSubStart7595205(arg1)
    print("OnSubStart7595205")
end

function Quest75952:OnSubFinish7595205(arg1)
    print("OnSubFinish7595205")
end

function Quest75952:OnSubStart7595206(arg1)
    print("OnSubStart7595206")
end

function Quest75952:OnSubFinish7595206(arg1)
    print("OnSubFinish7595206")
end

return Quest75952
