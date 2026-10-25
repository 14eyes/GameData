require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74708 = class("Quest74708", QuestActorProxy)
Quest74708.defaultAlias = "Quest74708"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74708:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74708:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470801"] = self.OnSubStart7470801}
end

function Quest74708:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470801"] = self.OnSubFinish7470801}
end

function Quest74708:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74708:Start()
    print("Start")
end

function Quest74708:OnDestroy()
    print("OnDestroy")
end

function Quest74708:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74708:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74708:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 1161)
    this:RecycleAllRes()
end

function Quest74708:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74708:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74708:OnSubStart7470801(arg1)
    print("OnSubStart7470801")
    this:CreateQuestNpc(arg1, npcs.Npc1079.id, 0, false, 0)
end

function Quest74708:OnSubFinish7470801(arg1)
    print("OnSubFinish7470801")
    this:NpcDestroyImmediately(1161, npcs.Npc1079.alias)
end

return Quest74708
