require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77186 = class("Quest77186", QuestActorProxy)
Quest77186.defaultAlias = "Quest77186"
local clientData
local this
local mainID
local actorAlias

function Quest77186:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77186:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7718603"] = self.OnSubStart7718603,
        ["7718602"] = self.OnSubStart7718602,
        ["7718601"] = self.OnSubStart7718601
    }
end

function Quest77186:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7718603"] = self.OnSubFinish7718603,
        ["7718602"] = self.OnSubFinish7718602,
        ["7718601"] = self.OnSubFinish7718601
    }
end

function Quest77186:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77186:Start()
    print("Start")
end

function Quest77186:OnDestroy()
    print("OnDestroy")
end

function Quest77186:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77186:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77186:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77186:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77186:OnSubStart7718603(arg1)
    print("OnSubStart7718603")
end

function Quest77186:OnSubFinish7718603(arg1)
    print("OnSubFinish7718603")
end

function Quest77186:OnSubStart7718602(arg1)
    print("OnSubStart7718602")
end

function Quest77186:OnSubFinish7718602(arg1)
    print("OnSubFinish7718602")
end

function Quest77186:OnSubStart7718601(arg1)
    print("OnSubStart7718601")
end

function Quest77186:OnSubFinish7718601(arg1)
    print("OnSubFinish7718601")
end

return Quest77186
