require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74709 = class("Quest74709", QuestActorProxy)
Quest74709.defaultAlias = "Quest74709"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74709:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74709:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470901"] = self.OnSubStart7470901}
end

function Quest74709:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470901"] = self.OnSubFinish7470901}
end

function Quest74709:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74709:Start()
    print("Start")
end

function Quest74709:OnDestroy()
    print("OnDestroy")
end

function Quest74709:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74709:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74709:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 1161)
    this:RecycleAllRes()
end

function Quest74709:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74709:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74709:OnSubStart7470901(arg1)
    print("OnSubStart7470901")
    this:CreateQuestNpc(arg1, npcs.Npc1079.id, 0, false, 0)
end

function Quest74709:OnSubFinish7470901(arg1)
    print("OnSubFinish7470901")
    this:NpcDestroyImmediately(1161, npcs.Npc1079.alias)
end

return Quest74709
