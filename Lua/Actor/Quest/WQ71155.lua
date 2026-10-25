require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71155 = class("Quest71155", QuestActorProxy)
Quest71155.defaultAlias = "Quest71155"
local clientData
local this
local mainID
local actorAlias

function Quest71155:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71155:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115501"] = self.OnSubStart7115501, ["7115502"] = self.OnSubStart7115502}
end

function Quest71155:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115501"] = self.OnSubFinish7115501, ["7115502"] = self.OnSubFinish7115502}
end

function Quest71155:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71155:Start()
    print("Start")
end

function Quest71155:OnDestroy()
    print("OnDestroy")
end

function Quest71155:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71155:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71155:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71155:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71155:OnSubStart7115501(arg1)
    print("OnSubStart7115501")
end

function Quest71155:OnSubFinish7115501(arg1)
    print("OnSubFinish7115501")
end

function Quest71155:OnSubStart7115502(arg1)
    print("OnSubStart7115502")
end

function Quest71155:OnSubFinish7115502(arg1)
    print("OnSubFinish7115502")
end

return Quest71155
