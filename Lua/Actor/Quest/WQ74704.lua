require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74704 = class("Quest74704", QuestActorProxy)
Quest74704.defaultAlias = "Quest74704"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74704:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74704:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470401"] = self.OnSubStart7470401}
end

function Quest74704:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470401"] = self.OnSubFinish7470401}
end

function Quest74704:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74704:Start()
    print("Start")
end

function Quest74704:OnDestroy()
    print("OnDestroy")
end

function Quest74704:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74704:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74704:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 1161)
    this:RecycleAllRes()
end

function Quest74704:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74704:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74704:OnSubStart7470401(arg1)
    print("OnSubStart7470401")
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
end

function Quest74704:OnSubFinish7470401(arg1)
    print("OnSubFinish7470401")
    this:NpcDestroyImmediately(1161, npcs.Npc1318.alias)
end

return Quest74704
