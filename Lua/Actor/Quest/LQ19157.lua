require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19157 = class("Quest19157", QuestActorProxy)
Quest19157.defaultAlias = "Quest19157"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest19157:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest19157:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1915701"] = self.OnSubStart1915701, ["1915702"] = self.OnSubStart1915702}
end

function Quest19157:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1915701"] = self.OnSubFinish1915701, ["1915702"] = self.OnSubFinish1915702}
end

function Quest19157:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19157:Start()
    print("Start")
end

function Quest19157:OnDestroy()
    print("OnDestroy")
end

function Quest19157:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19157:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19157:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc12959Data.alias, 1074)
    actorMgr:DestroyEntityActor("Q19157Trigger", 1074, false)
    actorMgr:DestroyEntityActor("Q19157Trigger1", 1074, false)
end

function Quest19157:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19157:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19157:OnSubStart1915701(arg1)
    print("OnSubStart1915701")
    this:CreateQuestNpc(arg1, npcs.Coop_LaylaData.id, 1)
    actorMgr:CreateActorWithPos("Q19157Trigger", "Actor/Gadget/Q19157Trigger", 70900002, 0, points.TPos_Q19157Trigger.pos, points.TPos_Q19157Trigger.rot, true, false, 1074)
end

function Quest19157:OnSubFinish1915701(arg1)
    print("OnSubFinish1915701")
    this:ActorDestroy("Q19157Trigger")
end

function Quest19157:OnSubStart1915702(arg1)
    print("OnSubStart1915702")
    actorMgr:CreateActorWithPos("Q19157Trigger1", "Actor/Gadget/Q19157Trigger1", 70900002, 0, points.TPos_Q19157Trigger1.pos, points.TPos_Q19157Trigger1.rot, true, false, 1074)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915702)
    this:CreateQuestNpc(arg1, npcs.Coop_LaylaData.id, 1)
end

function Quest19157:OnSubFinish1915702(arg1)
    print("OnSubFinish1915702")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc12959Data.alias, 1074)
    this:ActorDestroy("Q19157Trigger1")
end

return Quest19157
