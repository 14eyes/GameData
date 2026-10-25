require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40204 = class("Quest40204", QuestActorProxy)
Quest40204.defaultAlias = "Quest40204"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest40204:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest40204:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4020401"] = self.OnSubStart4020401, ["4020402"] = self.OnSubStart4020402}
end

function Quest40204:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4020401"] = self.OnSubFinish4020401, ["4020402"] = self.OnSubFinish4020402}
end

function Quest40204:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40204:Start()
    print("Start")
end

function Quest40204:OnDestroy()
    print("OnDestroy")
end

function Quest40204:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40204:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40204:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30857.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30858.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30859.alias, 3)
end

function Quest40204:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40204:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest40204:OnSubStart4020401(arg1)
    print("OnSubStart4020401")
    this:CreateQuestNpc(arg1, npcs.Npc30857.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30857.alias, 40204):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30858.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30858.alias, 40204):DoFreeStyle(1173, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30859.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30859.alias, 40204):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest40204:OnSubFinish4020401(arg1)
    print("OnSubFinish4020401")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30858.alias)
    this:SafeDestroyQuestNpc(npcs.Npc30859.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("AutoChessMainPage", 0)
    end)
end

function Quest40204:OnSubStart4020402(arg1)
    print("OnSubStart4020402")
    this:CreateQuestNpc(arg1, npcs.Npc30857.id, 0, false, 0)
end

function Quest40204:OnSubFinish4020402(arg1)
    print("OnSubFinish4020402")
    this:SafeDestroyQuestNpc(npcs.Npc30857.alias, 3)
end

return Quest40204
