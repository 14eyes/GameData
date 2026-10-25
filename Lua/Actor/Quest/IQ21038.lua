require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21038 = class("Quest21038", QuestActorProxy)
Quest21038.defaultAlias = "Quest21038"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest21038:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest21038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2103801"] = self.OnSubStart2103801,
        ["2103802"] = self.OnSubStart2103802,
        ["2103803"] = self.OnSubStart2103803
    }
end

function Quest21038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2103801"] = self.OnSubFinish2103801,
        ["2103802"] = self.OnSubFinish2103802,
        ["2103803"] = self.OnSubFinish2103803
    }
end

function Quest21038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21038:Start()
    print("Start")
end

function Quest21038:OnDestroy()
    print("OnDestroy")
end

function Quest21038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest21038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21038:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2400Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13057Data.alias, 3)
end

function Quest21038:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21038:OnSubStart2103801(arg1)
    print("OnSubStart2103801")
    this:CreateQuestNpc(arg1, npcs.Npc2400Data.id, 1)
end

function Quest21038:OnSubFinish2103801(arg1)
    print("OnSubFinish2103801")
end

function Quest21038:OnSubStart2103802(arg1)
    print("OnSubStart2103802")
    this:CreateQuestNpc(arg1, npcs.Npc13057Data.id, 1)
end

function Quest21038:OnSubFinish2103802(arg1)
    print("OnSubFinish2103802")
    this:SafeDestroyQuestNpc(npcs.Npc13057Data.alias, 3)
end

function Quest21038:OnSubStart2103803(arg1)
    print("OnSubStart2103803")
end

function Quest21038:OnSubFinish2103803(arg1)
    print("OnSubFinish2103803")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2400Data.alias)
end

return Quest21038
