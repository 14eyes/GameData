require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40105 = class("Quest40105", QuestActorProxy)
Quest40105.defaultAlias = "Quest40105"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest40105:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40105:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4010501"] = self.OnSubStart4010501}
end

function Quest40105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4010501"] = self.OnSubFinish4010501}
end

function Quest40105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40105:Start()
    print("Start")
end

function Quest40105:OnDestroy()
    print("OnDestroy")
end

function Quest40105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40105:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest40105:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40105:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest40105:OnSubStart4010501(arg1)
    print("OnSubStart4010501")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1052Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest40105:OnSubFinish4010501(arg1)
    print("OnSubFinish4010501")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1052Data.alias)
end

return Quest40105
