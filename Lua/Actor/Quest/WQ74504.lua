require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74504 = class("Quest74504", QuestActorProxy)
Quest74504.defaultAlias = "Quest74504"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74504:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74504:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7450401"] = self.OnSubStart7450401}
end

function Quest74504:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7450401"] = self.OnSubFinish7450401}
end

function Quest74504:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74504:Start()
    print("Start")
end

function Quest74504:OnDestroy()
    print("OnDestroy")
end

function Quest74504:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74504:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74504:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30412Data.alias, 3)
end

function Quest74504:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74504:OnSubStart7450401(arg1)
    print("OnSubStart7450401")
    this:CreateQuestNpc(arg1, npcs.Npc30412Data.id, 0)
end

function Quest74504:OnSubFinish7450401(arg1)
    print("OnSubFinish7450401")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ActionSafeCall(function(arg1)
            this:NPCDestroyImmediately(npcs.Npc30412Data.alias, 3)
        end)
    end, function(arg1)
        actorUtils.ShowContext("ToyBattleMainPage", 3)
    end, nil, 0, false, true)
end

return Quest74504
