require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74117 = class("Quest74117", QuestActorProxy)
Quest74117.defaultAlias = "Quest74117"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74117:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74117:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7411701"] = self.OnSubStart7411701}
end

function Quest74117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7411701"] = self.OnSubFinish7411701}
end

function Quest74117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74117:Start()
    print("Start")
end

function Quest74117:OnDestroy()
    print("OnDestroy")
end

function Quest74117:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74117:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74117:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74117:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest74117:OnSubStart7411701(arg1)
    print("OnSubStart7411701")
    this:NpcCreateWithNpcTrigger(npcs.Npc21182Data.id, 7411701, 0, 10)
end

function Quest74117:OnSubFinish7411701(arg1)
    print("OnSubFinish7411701")
    this:SafeDestroyQuestNpc(npcs.Npc21182Data.alias, 3)
end

return Quest74117
