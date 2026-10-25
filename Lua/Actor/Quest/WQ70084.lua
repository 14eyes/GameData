require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70084 = class("Quest70084", QuestActorProxy)
Quest70084.defaultAlias = "Quest70084"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70084:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70084:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7008401"] = self.OnSubStart7008401, ["7008402"] = self.OnSubStart7008402}
end

function Quest70084:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7008401"] = self.OnSubFinish7008401, ["7008402"] = self.OnSubFinish7008402}
end

function Quest70084:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70084:Start()
    print("Start")
end

function Quest70084:OnDestroy()
    print("OnDestroy")
end

function Quest70084:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70084:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70084:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70084:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7008401Trigger", 70084)
end

function Quest70084:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70084:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70084:OnSubStart7008401(arg1)
    print("OnSubStart7008401")
    this:CreateQuestNpc(arg1, npcs.Npc17062.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7008401Trigger", "Actor/Gadget/Q7008401Trigger", 70900002, 0, points._Q7008401TriggerPoint_.pos, points._Q7008401TriggerPoint_.rot, true, false, 3, nil, 0, 70084)
end

function Quest70084:OnSubFinish7008401(arg1)
    print("OnSubFinish7008401")
    this:ActorDestroy("Q7008401Trigger", 70084)
    this:NpcDestroyImmediately(3, npcs.Npc17062.alias)
end

function Quest70084:OnSubStart7008402(arg1)
    print("OnSubStart7008402")
    this:CreateQuestNpc(arg1, npcs.Npc17062.id, 0, false, 0)
end

function Quest70084:OnSubFinish7008402(arg1)
    print("OnSubFinish7008402")
end

return Quest70084
