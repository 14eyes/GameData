require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75160 = class("Quest75160", QuestActorProxy)
Quest75160.defaultAlias = "Quest75160"
local clientData
local this
local mainID
local actorAlias

function Quest75160:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75160:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7516001"] = self.OnSubStart7516001,
        ["7516002"] = self.OnSubStart7516002,
        ["7516003"] = self.OnSubStart7516003,
        ["7516005"] = self.OnSubStart7516005,
        ["7516006"] = self.OnSubStart7516006
    }
end

function Quest75160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7516001"] = self.OnSubFinish7516001,
        ["7516002"] = self.OnSubFinish7516002,
        ["7516003"] = self.OnSubFinish7516003,
        ["7516005"] = self.OnSubFinish7516005,
        ["7516006"] = self.OnSubFinish7516006
    }
end

function Quest75160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75160:Start()
    print("Start")
end

function Quest75160:OnDestroy()
    print("OnDestroy")
end

function Quest75160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75160:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75160:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75160:OnSubStart7516001(arg1)
    print("OnSubStart7516001")
end

function Quest75160:OnSubFinish7516001(arg1)
    print("OnSubFinish7516001")
end

function Quest75160:OnSubStart7516002(arg1)
    print("OnSubStart7516002")
end

function Quest75160:OnSubFinish7516002(arg1)
    print("OnSubFinish7516002")
end

function Quest75160:OnSubStart7516003(arg1)
    print("OnSubStart7516003")
end

function Quest75160:OnSubFinish7516003(arg1)
    print("OnSubFinish7516003")
end

function Quest75160:OnSubStart7516005(arg1)
    print("OnSubStart7516005")
end

function Quest75160:OnSubFinish7516005(arg1)
    print("OnSubFinish7516005")
end

function Quest75160:OnSubStart7516006(arg1)
    print("OnSubStart7516006")
end

function Quest75160:OnSubFinish7516006(arg1)
    print("OnSubFinish7516006")
end

return Quest75160
