require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70558 = class("Quest70558", QuestActorProxy)
Quest70558.defaultAlias = "Quest70558"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70558:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70558:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7055801"] = self.OnSubStart7055801}
end

function Quest70558:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7055801"] = self.OnSubFinish7055801}
end

function Quest70558:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70558:Start()
    print("Start")
end

function Quest70558:OnDestroy()
    print("OnDestroy")
end

function Quest70558:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70558:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70558:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q7055801_TalkTrigger", 70558)
    this:SafeDestroyQuestNpc(npcs.Npc31003.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31004.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31005.alias, 3)
    this:RecycleAllRes()
end

function Quest70558:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7055801_TalkTrigger", 70558)
end

function Quest70558:ActorDestroy(arg1, arg2)
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

function Quest70558:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70558:OnSubStart7055801(arg1)
    print("OnSubStart7055801")
    this:CreateQuestNpc(arg1, npcs.Npc31003.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31004.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31005.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7055801_TalkTrigger", "Actor/Gadget/Q7055801_TalkTrigger", 70900002, 0, points._Q7055801_TalkTriggerPoint_.pos, points._Q7055801_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 70558)
end

function Quest70558:OnSubFinish7055801(arg1)
    print("OnSubFinish7055801")
    this:NpcDestroyImmediately(3, npcs.Npc31003.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31004.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31005.alias)
end

return Quest70558
