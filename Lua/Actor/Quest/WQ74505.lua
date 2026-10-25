require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74505 = class("Quest74505", QuestActorProxy)
Quest74505.defaultAlias = "Quest74505"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74505:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74505:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7450501"] = self.OnSubStart7450501}
end

function Quest74505:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7450501"] = self.OnSubFinish7450501}
end

function Quest74505:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74505:Start()
    print("Start")
end

function Quest74505:OnDestroy()
    print("OnDestroy")
end

function Quest74505:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74505:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74505:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30413Data.alias, 3)
end

function Quest74505:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74505:OnSubStart7450501(arg1)
    print("OnSubStart7450501")
    this:CreateQuestNpc(arg1, npcs.Npc30413Data.id, 0)
end

function Quest74505:OnSubFinish7450501(arg1)
    print("OnSubFinish7450501")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ActionSafeCall(function(arg1)
            this:NPCDestroyImmediately(npcs.Npc30413Data.alias, 3)
        end)
    end, function(arg1)
        this:ShowTutorialDialog(1499)
    end, nil, 0, false, true)
end

return Quest74505
