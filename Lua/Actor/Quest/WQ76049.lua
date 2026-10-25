require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76049 = class("Quest76049", QuestActorProxy)
Quest76049.defaultAlias = "Quest76049"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76049:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76049:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7604901"] = self.OnSubStart7604901}
end

function Quest76049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7604901"] = self.OnSubFinish7604901}
end

function Quest76049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76049:Start()
    print("Start")
end

function Quest76049:OnDestroy()
    print("OnDestroy")
end

function Quest76049:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76049:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76049:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15703.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15704.alias, 3)
    this:DestroyNpcTrigger("Q7604901N1318Trigger")
end

function Quest76049:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76049TriggerDeleteGuer")
end

function Quest76049:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76049:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76049:OnSubStart7604901(arg1)
    print("OnSubStart7604901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 30, 7604901)
    this:CreateQuestNpc(arg1, npcs.Npc15703.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15704.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76049):DoFreeStyle(4090, true, nil, true, true, false, false)
end

function Quest76049:OnSubFinish7604901(arg1)
    print("OnSubFinish7604901")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76049):DoFreeStyle(0, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc15703.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc15704.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        actorMgr:CreateActorWithPos("Q76049TriggerDeleteGuer", "Actor/Gadget/Q76049TriggerDeleteGuer", 70900002, 0, points._Q76049TriggerDeleteGuerPoint_.pos, points._Q76049TriggerDeleteGuerPoint_.rot, true, false, 3)
    end)
end

return Quest76049
