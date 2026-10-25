require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74503 = class("Quest74503", QuestActorProxy)
Quest74503.defaultAlias = "Quest74503"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74503:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74503:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7450301"] = self.OnSubStart7450301}
end

function Quest74503:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7450301"] = self.OnSubFinish7450301}
end

function Quest74503:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74503:Start()
    print("Start")
end

function Quest74503:OnDestroy()
    print("OnDestroy")
end

function Quest74503:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74503:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74503:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30411Data.alias, 3)
end

function Quest74503:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74503:OnSubStart7450301(arg1)
    print("OnSubStart7450301")
    this:CreateQuestNpc(arg1, npcs.Npc30411Data.id, 0)
end

function Quest74503:OnSubFinish7450301(arg1)
    print("OnSubFinish7450301")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        this:ActionSafeCall(function(arg1)
            this:NPCDestroyImmediately(npcs.Npc30411Data.alias, 3)
        end)
    end, function(arg1)
        actorUtils.ShowContext("ToyBattleMainPage", 2)
    end, nil, 0, false, true)
end

return Quest74503
