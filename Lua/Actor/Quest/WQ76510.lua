require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76510 = class("Quest76510", QuestActorProxy)
Quest76510.defaultAlias = "Quest76510"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76510:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76510:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7651001"] = self.OnSubStart7651001}
end

function Quest76510:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7651001"] = self.OnSubFinish7651001}
end

function Quest76510:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76510:Start()
    print("Start")
end

function Quest76510:OnDestroy()
    print("OnDestroy")
end

function Quest76510:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76510:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76510:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30928.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30956.alias, 3)
    this:ActorDestroy("Q7651001_TalkTrigger")
end

function Quest76510:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7651001_TalkTrigger")
end

function Quest76510:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76510:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76510:OnSubStart7651001(arg1)
    print("OnSubStart7651001")
    this:CreateQuestNpc(arg1, npcs.Npc30928.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30956.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7651001_TalkTrigger", "Actor/Gadget/Q7651001_TalkTrigger", 70900002, 0, points._Q7651001_TalkTriggerPoint_.pos, points._Q7651001_TalkTriggerPoint_.rot, true, false, 3)
end

function Quest76510:OnSubFinish7651001(arg1)
    print("OnSubFinish7651001")
    this:NpcDestroyImmediately(3, npcs.Npc30928.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30956.alias)
end

return Quest76510
