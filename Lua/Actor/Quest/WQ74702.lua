require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74702 = class("Quest74702", QuestActorProxy)
Quest74702.defaultAlias = "Quest74702"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74702:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74702:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470201"] = self.OnSubStart7470201}
end

function Quest74702:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470201"] = self.OnSubFinish7470201}
end

function Quest74702:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74702:Start()
    print("Start")
end

function Quest74702:OnDestroy()
    print("OnDestroy")
end

function Quest74702:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74702:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74702:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7470201N1336Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 1161)
    this:RecycleAllRes()
end

function Quest74702:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74702:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74702:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74702:OnSubStart7470201(arg1)
    print("OnSubStart7470201")
    this:NpcCreateWithNpcTrigger(npcs.Npc1336.id, 0, 5, 7470201)
end

function Quest74702:OnSubFinish7470201(arg1)
    print("OnSubFinish7470201")
    this:NpcDestroyImmediately(1161, npcs.Npc1336.alias)
    actorUtils.ShowReminder(60010475)
end

return Quest74702
