require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40200 = class("Quest40200", QuestActorProxy)
Quest40200.defaultAlias = "Quest40200"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40200:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40200:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4020001"] = self.OnSubStart4020001}
end

function Quest40200:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4020001"] = self.OnSubFinish4020001}
end

function Quest40200:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40200:Start()
    print("Start")
end

function Quest40200:OnDestroy()
    print("OnDestroy")
end

function Quest40200:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40200:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40200:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 3)
end

function Quest40200:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40200:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40200:OnSubStart4020001(arg1)
    print("OnSubStart4020001")
    this:CreateQuestNpc(arg1, npcs.Npc2613.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15399.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4020001Trigger_nopaimon_up", "Actor/Gadget/Q4020001Trigger_nopaimon_up", 70900002, 0, points._Q4020001Trigger_nopaimon_upPoint_.pos, points._Q4020001Trigger_nopaimon_upPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q4020001Trigger_yespaimon_up", "Actor/Gadget/Q4020001Trigger_yespaimon_up", 70900002, 0, points._Q4020001Trigger_yespaimon_upPoint_.pos, points._Q4020001Trigger_yespaimon_upPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q4020001Trigger_nopaimon_down", "Actor/Gadget/Q4020001Trigger_nopaimon_down", 70900002, 0, points._Q4020001Trigger_nopaimon_downPoint_.pos, points._Q4020001Trigger_nopaimon_downPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q4020001Trigger_yespaimon_down", "Actor/Gadget/Q4020001Trigger_yespaimon_down", 70900002, 0, points._Q4020001Trigger_yespaimon_downPoint_.pos, points._Q4020001Trigger_yespaimon_downPoint_.rot, true, false, 3)
end

function Quest40200:OnSubFinish4020001(arg1)
    print("OnSubFinish4020001")
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15399.alias, 3)
    this:ActorDestroy("Q4020001Trigger_nopaimon_up")
    this:ActorDestroy("Q4020001Trigger_yespaimon_up")
    this:ActorDestroy("Q4020001Trigger_nopaimon_down")
    this:ActorDestroy("Q4020001Trigger_yespaimon_down")
end

return Quest40200
