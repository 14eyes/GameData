require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70559 = class("Quest70559", QuestActorProxy)
Quest70559.defaultAlias = "Quest70559"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70559:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70559:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7055901"] = self.OnSubStart7055901}
end

function Quest70559:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7055901"] = self.OnSubFinish7055901}
end

function Quest70559:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70559:Start()
    print("Start")
end

function Quest70559:OnDestroy()
    print("OnDestroy")
end

function Quest70559:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70559:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70559:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q7055901_TalkTrigger", 70559)
    this:SafeDestroyQuestNpc(npcs.Npc31004.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31003.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31005.alias, 3)
    this:RecycleAllRes()
end

function Quest70559:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7055901_TalkTrigger", 70559)
end

function Quest70559:ActorDestroy(arg1, arg2)
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

function Quest70559:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70559:OnSubStart7055901(arg1)
    print("OnSubStart7055901")
    this:CreateQuestNpc(arg1, npcs.Npc31004.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31003.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31005.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7055901_TalkTrigger", "Actor/Gadget/Q7055901_TalkTrigger", 70900002, 0, points._Q7055901_TalkTriggerPoint_.pos, points._Q7055901_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 70559)
end

function Quest70559:OnSubFinish7055901(arg1)
    print("OnSubFinish7055901")
    this:NpcDestroyImmediately(3, npcs.Npc31004.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31003.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31005.alias)
end

return Quest70559
