require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76053 = class("Quest76053", QuestActorProxy)
Quest76053.defaultAlias = "Quest76053"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76053:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76053:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7605301"] = self.OnSubStart7605301}
end

function Quest76053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7605301"] = self.OnSubFinish7605301}
end

function Quest76053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76053:Start()
    print("Start")
end

function Quest76053:OnDestroy()
    print("OnDestroy")
end

function Quest76053:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76053:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76053:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76053:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76053:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76053:OnSubStart7605301(arg1)
    print("OnSubStart7605301")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 10, 7605301)
end

function Quest76053:OnSubFinish7605301(arg1)
    print("OnSubFinish7605301")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
end

return Quest76053
