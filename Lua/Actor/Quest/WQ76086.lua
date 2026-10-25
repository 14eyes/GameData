require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76086 = class("Quest76086", QuestActorProxy)
Quest76086.defaultAlias = "Quest76086"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76086:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76086:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7608601"] = self.OnSubStart7608601, ["7608602"] = self.OnSubStart7608602}
end

function Quest76086:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7608601"] = self.OnSubFinish7608601, ["7608602"] = self.OnSubFinish7608602}
end

function Quest76086:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76086:Start()
    print("Start")
end

function Quest76086:OnDestroy()
    print("OnDestroy")
end

function Quest76086:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76086:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76086:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:ActorDestroy("Q76086DeleteGuer")
    this:ActorDestroy("Q7608602TalkTrigger")
    this:DestroyNpcTrigger("Q7608601N1318Trigger")
end

function Quest76086:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76086DeleteGuer")
    this:ActorDestroy("Q7608602TalkTrigger")
end

function Quest76086:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76086:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76086:OnSubStart7608601(arg1)
    print("OnSubStart7608601")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 60, 7608601)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76086):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76086):DisableInteeHeadCtrl(true)
end

function Quest76086:OnSubFinish7608601(arg1)
    print("OnSubFinish7608601")
    this:SetNavigationByMainId(76086, true)
end

function Quest76086:OnSubStart7608602(arg1)
    print("OnSubStart7608602")
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76086):DoFreeStyle(8010, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7608602TalkTrigger", "Actor/Gadget/Q7608602TalkTrigger", 70900002, 0, points._Q7608602TalkTriggerPoint_.pos, points._Q7608602TalkTriggerPoint_.rot, true, false, 3)
end

function Quest76086:OnSubFinish7608602(arg1)
    print("OnSubFinish7608602")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76086DeleteGuer", "Actor/Gadget/Q76086DeleteGuer", 70900002, 0, points._Q76086DeleteGuerPoint_.pos, points._Q76086DeleteGuerPoint_.rot, true, false, 3)
    this:ActorDestroy("Q7608602TalkTrigger")
end

return Quest76086
