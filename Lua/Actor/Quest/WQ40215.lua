require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40215 = class("Quest40215", QuestActorProxy)
Quest40215.defaultAlias = "Quest40215"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest40215:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest40215:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4021501"] = self.OnSubStart4021501}
end

function Quest40215:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4021501"] = self.OnSubFinish4021501}
end

function Quest40215:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40215:Start()
    print("Start")
end

function Quest40215:OnDestroy()
    print("OnDestroy")
end

function Quest40215:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40215:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40215:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc7053.alias, 3)
end

function Quest40215:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40215:OnSubStart4021501(arg1)
    print("OnSubStart4021501")
    this:CreateQuestNpc(arg1, npcs.Npc7053.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7053.alias, 40215):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest40215:OnSubFinish4021501(arg1)
    print("OnSubFinish4021501")
    this:SafeDestroyQuestNpc(npcs.Npc7053.alias, 3)
end

return Quest40215
