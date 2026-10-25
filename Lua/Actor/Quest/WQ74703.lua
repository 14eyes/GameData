require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74703 = class("Quest74703", QuestActorProxy)
Quest74703.defaultAlias = "Quest74703"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74703:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74703:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470301"] = self.OnSubStart7470301}
end

function Quest74703:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470301"] = self.OnSubFinish7470301}
end

function Quest74703:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74703:Start()
    print("Start")
end

function Quest74703:OnDestroy()
    print("OnDestroy")
end

function Quest74703:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74703:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74703:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7470301N1336Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 1161)
    this:RecycleAllRes()
end

function Quest74703:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74703:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74703:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74703:OnSubStart7470301(arg1)
    print("OnSubStart7470301")
    this:NpcCreateWithNpcTrigger(npcs.Npc1336.id, 0, 5, 7470301)
end

function Quest74703:OnSubFinish7470301(arg1)
    print("OnSubFinish7470301")
    this:NpcDestroyImmediately(1161, npcs.Npc1336.alias)
end

return Quest74703
