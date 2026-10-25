require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74710 = class("Quest74710", QuestActorProxy)
Quest74710.defaultAlias = "Quest74710"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74710:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74710:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7471001"] = self.OnSubStart7471001}
end

function Quest74710:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7471001"] = self.OnSubFinish7471001}
end

function Quest74710:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74710:Start()
    print("Start")
end

function Quest74710:OnDestroy()
    print("OnDestroy")
end

function Quest74710:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74710:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74710:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 1161)
    this:RecycleAllRes()
end

function Quest74710:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74710:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74710:OnSubStart7471001(arg1)
    print("OnSubStart7471001")
    this:CreateQuestNpc(arg1, npcs.Npc1079.id, 0, false, 0)
end

function Quest74710:OnSubFinish7471001(arg1)
    print("OnSubFinish7471001")
    this:NpcDestroyImmediately(1161, npcs.Npc1079.alias)
end

return Quest74710
