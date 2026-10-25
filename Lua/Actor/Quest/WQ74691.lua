require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74691 = class("Quest74691", QuestActorProxy)
Quest74691.defaultAlias = "Quest74691"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74691:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74691:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7469101"] = self.OnSubStart7469101}
end

function Quest74691:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7469101"] = self.OnSubFinish7469101}
end

function Quest74691:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74691:Start()
    print("Start")
end

function Quest74691:OnDestroy()
    print("OnDestroy")
end

function Quest74691:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74691:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74691:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74691:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74691:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74691:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74691:OnSubStart7469101(arg1)
    print("OnSubStart7469101")
    this:NpcCreateWithNpcTrigger(npcs.Npc16101.id, 0, 8, 7469101)
    this:GetQuestNpcActor(npcs.Npc16101.alias, 74691):DoFreeStyle(1006, true, nil, true, true, false, true)
end

function Quest74691:OnSubFinish7469101(arg1)
    print("OnSubFinish7469101")
    this:NpcDestroyImmediately(3, npcs.Npc16101.alias)
    this:LevelLoadFinishSafeCall(function(arg1)
        this:CallDelayByQuest("\229\155\155\229\164\132\233\128\155\233\128\155\226\128\166", 2, function(arg1)
            this:ShowTutorialDialog(2766, nil)
        end)
    end)
end

return Quest74691
