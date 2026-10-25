require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74706 = class("Quest74706", QuestActorProxy)
Quest74706.defaultAlias = "Quest74706"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74706:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74706:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470601"] = self.OnSubStart7470601}
end

function Quest74706:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470601"] = self.OnSubFinish7470601}
end

function Quest74706:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74706:Start()
    print("Start")
end

function Quest74706:OnDestroy()
    print("OnDestroy")
end

function Quest74706:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74706:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74706:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7470601N1318Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 1161)
    this:RecycleAllRes()
end

function Quest74706:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74706:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74706:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74706:OnSubStart7470601(arg1)
    print("OnSubStart7470601")
    this:CreateQuestNpc(arg1, npcs.Npc1073.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 5, 7470601)
end

function Quest74706:OnSubFinish7470601(arg1)
    print("OnSubFinish7470601")
    this:NpcDestroyImmediately(1161, npcs.Npc1073.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc1318.alias)
end

return Quest74706
