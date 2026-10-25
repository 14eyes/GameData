require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74516 = class("Quest74516", QuestActorProxy)
Quest74516.defaultAlias = "Quest74516"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74516:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74516:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7451601"] = self.OnSubStart7451601}
end

function Quest74516:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7451601"] = self.OnSubFinish7451601}
end

function Quest74516:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74516:Start()
    print("Start")
end

function Quest74516:OnDestroy()
    print("OnDestroy")
end

function Quest74516:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74516:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74516:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30773.alias, 3)
end

function Quest74516:OnSubStart7451601(arg1)
    print("OnSubStart7451601")
    this:CreateQuestNpc(arg1, npcs.Npc30773.id, 0, true, 0)
end

function Quest74516:OnSubFinish7451601(arg1)
    print("OnSubFinish7451601")
    this:SafeDestroyQuestNpc(npcs.Npc30773.alias, 3)
end

return Quest74516
