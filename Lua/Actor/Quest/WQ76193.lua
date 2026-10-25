require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76193 = class("Quest76193", QuestActorProxy)
Quest76193.defaultAlias = "Quest76193"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76193:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76193:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7619301"] = self.OnSubStart7619301, ["7619302"] = self.OnSubStart7619302}
end

function Quest76193:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7619301"] = self.OnSubFinish7619301, ["7619302"] = self.OnSubFinish7619302}
end

function Quest76193:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76193:Start()
    print("Start")
end

function Quest76193:OnDestroy()
    print("OnDestroy")
end

function Quest76193:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76193:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76193:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76193:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76193:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76193:OnSubStart7619301(arg1)
    print("OnSubStart7619301")
    this:CreateQuestNpc(arg1, npcs.Npc5301.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303.id, 0, false, 0)
end

function Quest76193:OnSubFinish7619301(arg1)
    print("OnSubFinish7619301")
    this:NpcDestroyImmediately(3, npcs.Npc5301.alias)
    this:NpcDestroyImmediately(3, npcs.Npc5303.alias)
end

function Quest76193:OnSubStart7619302(arg1)
    print("OnSubStart7619302")
end

function Quest76193:OnSubFinish7619302(arg1)
    print("OnSubFinish7619302")
end

return Quest76193
