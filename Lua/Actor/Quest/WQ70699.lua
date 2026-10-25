require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70699 = class("Quest70699", QuestActorProxy)
Quest70699.defaultAlias = "Quest70699"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70699:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70699:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069901"] = self.OnSubStart7069901}
end

function Quest70699:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069901"] = self.OnSubFinish7069901}
end

function Quest70699:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70699:Start()
    print("Start")
end

function Quest70699:OnDestroy()
    print("OnDestroy")
end

function Quest70699:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70699:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70699:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1060.alias, 3)
end

function Quest70699:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70699:OnSubStart7069901(arg1)
    print("OnSubStart7069901")
    this:CreateQuestNpc(arg1, npcs.Npc1060.id, 0, false, 0)
end

function Quest70699:OnSubFinish7069901(arg1)
    print("OnSubFinish7069901")
    this:SafeDestroyQuestNpc(npcs.Npc1060.alias, 3)
end

return Quest70699
