require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74700 = class("Quest74700", QuestActorProxy)
Quest74700.defaultAlias = "Quest74700"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74700:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74700:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470001"] = self.OnSubStart7470001}
end

function Quest74700:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470001"] = self.OnSubFinish7470001}
end

function Quest74700:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74700:Start()
    print("Start")
end

function Quest74700:OnDestroy()
    print("OnDestroy")
end

function Quest74700:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74700:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74700:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7470001N1336Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 1161)
    this:RecycleAllRes()
end

function Quest74700:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74700:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74700:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest74700:OnSubStart7470001(arg1)
    print("OnSubStart7470001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7470001, 0, 5, 0, npcs.Npc1336.id)
end

function Quest74700:OnSubFinish7470001(arg1)
    print("OnSubFinish7470001")
    this:NpcDestroyImmediately(1161, npcs.Npc1336.alias)
end

return Quest74700
