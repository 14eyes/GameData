require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76657 = class("Quest76657", QuestActorProxy)
Quest76657.defaultAlias = "Quest76657"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76657:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76657:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7665701"] = self.OnSubStart7665701}
end

function Quest76657:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7665701"] = self.OnSubFinish7665701}
end

function Quest76657:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76657:Start()
    print("Start")
end

function Quest76657:OnDestroy()
    print("OnDestroy")
end

function Quest76657:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76657:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76657:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76657:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7665701Trigger")
end

function Quest76657:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76657:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76657:OnSubStart7665701(arg1)
    print("OnSubStart7665701")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1313.id, arg1)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7665701Trigger", "Actor/Gadget/Q7665701Trigger", 70900002, 0, points._Q7665701TriggerPoint_.pos, points._Q7665701TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest76657:OnSubFinish7665701(arg1)
    print("OnSubFinish7665701")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:ActorDestroy("Q7665701Trigger")
end

return Quest76657
