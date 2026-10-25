require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70555 = class("Quest70555", QuestActorProxy)
Quest70555.defaultAlias = "Quest70555"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70555:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70555:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7055501"] = self.OnSubStart7055501}
end

function Quest70555:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7055501"] = self.OnSubFinish7055501}
end

function Quest70555:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70555:Start()
    print("Start")
end

function Quest70555:OnDestroy()
    print("OnDestroy")
end

function Quest70555:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70555:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70555:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q70555Trigger", 70555)
    this:SafeDestroyQuestNpc(npcs.Npc30970.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 3)
end

function Quest70555:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q70555Trigger", 70555)
end

function Quest70555:ActorDestroy(arg1, arg2)
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

function Quest70555:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70555:OnSubStart7055501(arg1)
    print("OnSubStart7055501")
    this:CreateQuestNpc(arg1, npcs.Npc30970.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q70555Trigger", "Actor/Gadget/Q70555Trigger", 70900002, 0, points._Q70555TriggerPoint_.pos, points._Q70555TriggerPoint_.rot, true, false, 3, nil, 0, 70555)
end

function Quest70555:OnSubFinish7055501(arg1)
    print("OnSubFinish7055501")
    this:NpcDestroyImmediately(3, npcs.Npc30970.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1310.alias)
end

return Quest70555
