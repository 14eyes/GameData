require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74705 = class("Quest74705", QuestActorProxy)
Quest74705.defaultAlias = "Quest74705"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74705:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74705:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470501"] = self.OnSubStart7470501}
end

function Quest74705:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470501"] = self.OnSubFinish7470501}
end

function Quest74705:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74705:Start()
    print("Start")
end

function Quest74705:OnDestroy()
    print("OnDestroy")
end

function Quest74705:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74705:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74705:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7470501N1073Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1081.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1082.alias, 1161)
    this:RecycleAllRes()
end

function Quest74705:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74705:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74705:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74705:OnSubStart7470501(arg1)
    print("OnSubStart7470501")
    this:NpcCreateWithNpcTrigger(npcs.Npc1073.id, 0, 5, 7470501)
    this:CreateQuestNpc(arg1, npcs.Npc1081.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1082.id, 0, false, 0)
end

function Quest74705:OnSubFinish7470501(arg1)
    print("OnSubFinish7470501")
    this:NpcDestroyImmediately(1161, npcs.Npc1073.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc1081.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc1082.alias)
end

return Quest74705
