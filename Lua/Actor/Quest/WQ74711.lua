require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74711 = class("Quest74711", QuestActorProxy)
Quest74711.defaultAlias = "Quest74711"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74711:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74711:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7471101"] = self.OnSubStart7471101}
end

function Quest74711:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7471101"] = self.OnSubFinish7471101}
end

function Quest74711:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74711:Start()
    print("Start")
end

function Quest74711:OnDestroy()
    print("OnDestroy")
end

function Quest74711:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74711:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74711:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 1161)
    this:RecycleAllRes()
end

function Quest74711:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74711:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74711:OnSubStart7471101(arg1)
    print("OnSubStart7471101")
    this:CreateQuestNpc(arg1, npcs.Npc1079.id, 0, false, 0)
end

function Quest74711:OnSubFinish7471101(arg1)
    print("OnSubFinish7471101")
    this:NpcDestroyImmediately(1161, npcs.Npc1079.alias)
end

return Quest74711
