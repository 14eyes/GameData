require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73529 = class("Quest73529", QuestActorProxy)
Quest73529.defaultAlias = "Quest73529"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73529:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73529:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7352901"] = self.OnSubStart7352901}
end

function Quest73529:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7352901"] = self.OnSubFinish7352901}
end

function Quest73529:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73529:Start()
    print("Start")
end

function Quest73529:OnDestroy()
    print("OnDestroy")
end

function Quest73529:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73529:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73529:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30407Data.alias, 10)
end

function Quest73529:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73529:OnSubStart7352901(arg1)
    print("OnSubStart7352901")
    this:CreateQuestNpc(arg1, npcs.Npc30407Data.id, 1)
end

function Quest73529:OnSubFinish7352901(arg1)
    print("OnSubFinish7352901")
    this:NpcDestroyWithBlackscreen(10, npcs.Npc30407Data.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(1472)
    end)
end

return Quest73529
