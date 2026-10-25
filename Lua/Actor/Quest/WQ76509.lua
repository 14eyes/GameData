require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76509 = class("Quest76509", QuestActorProxy)
Quest76509.defaultAlias = "Quest76509"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76509:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76509:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650901"] = self.OnSubStart7650901}
end

function Quest76509:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650901"] = self.OnSubFinish7650901}
end

function Quest76509:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76509:Start()
    print("Start")
end

function Quest76509:OnDestroy()
    print("OnDestroy")
end

function Quest76509:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76509:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76509:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30956.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30928.alias, 3)
    this:ActorDestroy("Q7650901_TalkTrigger")
end

function Quest76509:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7650901_TalkTrigger")
end

function Quest76509:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76509:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76509:OnSubStart7650901(arg1)
    print("OnSubStart7650901")
    this:CreateQuestNpc(arg1, npcs.Npc30956.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30928.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7650901_TalkTrigger", "Actor/Gadget/Q7650901_TalkTrigger", 70900002, 0, points._Q7650901_TalkTriggerPoint_.pos, points._Q7650901_TalkTriggerPoint_.rot, true, false, 3)
end

function Quest76509:OnSubFinish7650901(arg1)
    print("OnSubFinish7650901")
    this:NpcDestroyImmediately(3, npcs.Npc30956.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30928.alias)
    this:RequestInteractionForceAlias("Npc30968", "", true)
end

return Quest76509
