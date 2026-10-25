require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76106 = class("Quest76106", QuestActorProxy)
Quest76106.defaultAlias = "Quest76106"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76106:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76106:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7610601"] = self.OnSubStart7610601}
end

function Quest76106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7610601"] = self.OnSubFinish7610601}
end

function Quest76106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76106:Start()
    print("Start")
end

function Quest76106:OnDestroy()
    print("OnDestroy")
end

function Quest76106:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76106:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76106:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76106:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76106:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76106:OnSubStart7610601(arg1)
    print("OnSubStart7610601")
    this:CreateQuestNpc(arg1, npcs.Npc22239.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22239.alias, 76106):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22240.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22240.alias, 76106):DoFreeStyle(4407, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22241.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22241.alias, 76106):DoFreeStyle(4130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22242.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22242.alias, 76106):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest76106:OnSubFinish7610601(arg1)
    print("OnSubFinish7610601")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22239.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22240.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22241.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22242.alias, 3)
end

return Quest76106
