require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73528 = class("Quest73528", QuestActorProxy)
Quest73528.defaultAlias = "Quest73528"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73528:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73528:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7352801"] = self.OnSubStart7352801}
end

function Quest73528:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7352801"] = self.OnSubFinish7352801}
end

function Quest73528:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73528:Start()
    print("Start")
end

function Quest73528:OnDestroy()
    print("OnDestroy")
end

function Quest73528:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73528:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73528:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30406Data.alias, 10)
end

function Quest73528:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73528:OnSubStart7352801(arg1)
    print("OnSubStart7352801")
    this:CreateQuestNpc(arg1, npcs.Npc30406Data.id, 1)
end

function Quest73528:OnSubFinish7352801(arg1)
    print("OnSubFinish7352801")
    this:NpcDestroyWithBlackscreen(10, npcs.Npc30406Data.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(1473)
    end)
end

return Quest73528
