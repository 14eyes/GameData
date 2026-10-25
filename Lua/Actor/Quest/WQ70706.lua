require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70706 = class("Quest70706", QuestActorProxy)
Quest70706.defaultAlias = "Quest70706"
local clientData
local this
local mainID
local actorAlias

function Quest70706:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70706:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070601"] = self.OnSubStart7070601, ["7070602"] = self.OnSubStart7070602}
end

function Quest70706:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070601"] = self.OnSubFinish7070601, ["7070602"] = self.OnSubFinish7070602}
end

function Quest70706:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70706:Start()
    print("Start")
end

function Quest70706:OnDestroy()
    print("OnDestroy")
end

function Quest70706:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70706:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70706:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1567", 0, true)
end

function Quest70706:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70706:OnSubStart7070601(arg1)
    print("OnSubStart7070601")
    self:NotifyTo("Npc1567", 2, true)
end

function Quest70706:OnSubFinish7070601(arg1)
    print("OnSubFinish7070601")
end

function Quest70706:OnSubStart7070602(arg1)
    print("OnSubStart7070602")
    self:NotifyTo("Npc1567", 2, true)
end

function Quest70706:OnSubFinish7070602(arg1)
    print("OnSubFinish7070602")
    self:NotifyTo("Npc1567", 0, true)
end

return Quest70706
