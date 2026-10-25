require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74712 = class("Quest74712", QuestActorProxy)
Quest74712.defaultAlias = "Quest74712"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74712:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74712:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7471201"] = self.OnSubStart7471201}
end

function Quest74712:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7471201"] = self.OnSubFinish7471201}
end

function Quest74712:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74712:Start()
    print("Start")
end

function Quest74712:OnDestroy()
    print("OnDestroy")
end

function Quest74712:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74712:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74712:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 1161)
    this:RecycleAllRes()
end

function Quest74712:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74712:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74712:OnSubStart7471201(arg1)
    print("OnSubStart7471201")
    this:CreateQuestNpc(arg1, npcs.Npc1079.id, 0, false, 0)
end

function Quest74712:OnSubFinish7471201(arg1)
    print("OnSubFinish7471201")
    this:NpcDestroyImmediately(1161, npcs.Npc1079.alias)
end

return Quest74712
