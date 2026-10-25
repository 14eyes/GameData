require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76676 = class("Quest76676", QuestActorProxy)
Quest76676.defaultAlias = "Quest76676"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76676:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76676:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7667601"] = self.OnSubStart7667601}
end

function Quest76676:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7667601"] = self.OnSubFinish7667601}
end

function Quest76676:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76676:Start()
    print("Start")
end

function Quest76676:OnDestroy()
    print("OnDestroy")
end

function Quest76676:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76676:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76676:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30891.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4170.alias, 3)
end

function Quest76676:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76676:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76676:OnSubStart7667601(arg1)
    print("OnSubStart7667601")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc30891.id, arg1)
    this:GetQuestNpcActor(npcs.Npc30891.alias, 76676):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc4170.id, arg1)
    this:GetQuestNpcActor(npcs.Npc4170.alias, 76676):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest76676:OnSubFinish7667601(arg1)
    print("OnSubFinish7667601")
    this:SafeDestroyQuestNpc(npcs.Npc30891.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4170.alias, 3)
end

return Quest76676
