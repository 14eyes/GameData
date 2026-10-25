require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75046 = class("Quest75046", QuestActorProxy)
Quest75046.defaultAlias = "Quest75046"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75046:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7504601"] = self.OnSubStart7504601,
        ["7504602"] = self.OnSubStart7504602,
        ["7504603"] = self.OnSubStart7504603
    }
end

function Quest75046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7504601"] = self.OnSubFinish7504601,
        ["7504602"] = self.OnSubFinish7504602,
        ["7504603"] = self.OnSubFinish7504603
    }
end

function Quest75046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75046:Start()
    print("Start")
end

function Quest75046:OnDestroy()
    print("OnDestroy")
end

function Quest75046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75046:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75046:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75046:OnSubStart7504601(arg1)
    print("OnSubStart7504601")
    this:CreateQuestNpc(arg1, npcs.Npc6423.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6423.alias, 75046):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest75046:OnSubFinish7504601(arg1)
    print("OnSubFinish7504601")
end

function Quest75046:OnSubStart7504602(arg1)
    print("OnSubStart7504602")
    this:GetQuestNpcActor(npcs.Npc6423.alias, 75046):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest75046:OnSubFinish7504602(arg1)
    print("OnSubFinish7504602")
end

function Quest75046:OnSubStart7504603(arg1)
    print("OnSubStart7504603")
    this:GetQuestNpcActor(npcs.Npc6423.alias, 75046):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest75046:OnSubFinish7504603(arg1)
    print("OnSubFinish7504603")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6423.alias)
end

return Quest75046
