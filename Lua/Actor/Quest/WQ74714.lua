require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74714 = class("Quest74714", QuestActorProxy)
Quest74714.defaultAlias = "Quest74714"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74714:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74714:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7471401"] = self.OnSubStart7471401}
end

function Quest74714:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7471401"] = self.OnSubFinish7471401}
end

function Quest74714:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74714:Start()
    print("Start")
end

function Quest74714:OnDestroy()
    print("OnDestroy")
end

function Quest74714:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74714:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74714:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1074.alias, 1161)
    this:RecycleAllRes()
end

function Quest74714:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74714:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74714:OnSubStart7471401(arg1)
    print("OnSubStart7471401")
    this:CreateQuestNpc(arg1, npcs.Npc1074.id, 0, false, 0)
end

function Quest74714:OnSubFinish7471401(arg1)
    print("OnSubFinish7471401")
    this:NpcDestroyImmediately(1161, npcs.Npc1074.alias)
end

return Quest74714
