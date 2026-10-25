require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75120 = class("Quest75120", QuestActorProxy)
Quest75120.defaultAlias = "Quest75120"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75120:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7512001"] = self.OnSubStart7512001,
        ["7512002"] = self.OnSubStart7512002,
        ["7512003"] = self.OnSubStart7512003,
        ["7512004"] = self.OnSubStart7512004,
        ["7512005"] = self.OnSubStart7512005,
        ["7512006"] = self.OnSubStart7512006
    }
end

function Quest75120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7512001"] = self.OnSubFinish7512001,
        ["7512002"] = self.OnSubFinish7512002,
        ["7512003"] = self.OnSubFinish7512003,
        ["7512004"] = self.OnSubFinish7512004,
        ["7512005"] = self.OnSubFinish7512005,
        ["7512006"] = self.OnSubFinish7512006
    }
end

function Quest75120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75120:Start()
    print("Start")
end

function Quest75120:OnDestroy()
    print("OnDestroy")
end

function Quest75120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75120:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75120:OnSubStart7512001(arg1)
    print("OnSubStart7512001")
end

function Quest75120:OnSubFinish7512001(arg1)
    print("OnSubFinish7512001")
end

function Quest75120:OnSubStart7512002(arg1)
    print("OnSubStart7512002")
end

function Quest75120:OnSubFinish7512002(arg1)
    print("OnSubFinish7512002")
end

function Quest75120:OnSubStart7512003(arg1)
    print("OnSubStart7512003")
end

function Quest75120:OnSubFinish7512003(arg1)
    print("OnSubFinish7512003")
end

function Quest75120:OnSubStart7512004(arg1)
    print("OnSubStart7512004")
end

function Quest75120:OnSubFinish7512004(arg1)
    print("OnSubFinish7512004")
end

function Quest75120:OnSubStart7512005(arg1)
    print("OnSubStart7512005")
end

function Quest75120:OnSubFinish7512005(arg1)
    print("OnSubFinish7512005")
end

function Quest75120:OnSubStart7512006(arg1)
    print("OnSubStart7512006")
end

function Quest75120:OnSubFinish7512006(arg1)
    print("OnSubFinish7512006")
end

return Quest75120
