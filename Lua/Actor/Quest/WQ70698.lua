require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70698 = class("Quest70698", QuestActorProxy)
Quest70698.defaultAlias = "Quest70698"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70698:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70698:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069801"] = self.OnSubStart7069801}
end

function Quest70698:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069801"] = self.OnSubFinish7069801}
end

function Quest70698:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70698:Start()
    print("Start")
end

function Quest70698:OnDestroy()
    print("OnDestroy")
end

function Quest70698:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70698:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70698:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
end

function Quest70698:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70698:OnSubStart7069801(arg1)
    print("OnSubStart7069801")
    this:CreateQuestNpc(arg1, npcs.Npc10090.id, 0, false, 0)
end

function Quest70698:OnSubFinish7069801(arg1)
    print("OnSubFinish7069801")
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
end

return Quest70698
