require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76054 = class("Quest76054", QuestActorProxy)
Quest76054.defaultAlias = "Quest76054"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76054:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76054:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7605401"] = self.OnSubStart7605401, ["7605403"] = self.OnSubStart7605403}
end

function Quest76054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7605401"] = self.OnSubFinish7605401, ["7605403"] = self.OnSubFinish7605403}
end

function Quest76054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76054:Start()
    print("Start")
end

function Quest76054:OnDestroy()
    print("OnDestroy")
end

function Quest76054:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76054:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76054:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:ActorDestroy("Q7605401TalkTrigger")
    this:ActorDestroy("Q7605401N1318")
end

function Quest76054:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7605401TalkTrigger")
    this:ActorDestroy("Q76054TriggerDeleteGuer")
end

function Quest76054:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76054:OnSubStart7605401(arg1)
    print("OnSubStart7605401")
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
    this:RequestInteractionWithCameraLookTrigger("Q7605401N1318", 7605401, npcs.Npc1318.alias, 3, {x = 2149, y = 136, z = 11219}, 60, 7605401, true, true)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76054):DoFreeStyle(8010, true, nil, true, true, false, true)
end

function Quest76054:OnSubFinish7605401(arg1)
    print("OnSubFinish7605401")
    this:SetNavigationByMainId(76054, true)
end

function Quest76054:OnSubStart7605403(arg1)
    print("OnSubStart7605403")
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76054):DoFreeStyle(8010, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7605401TalkTrigger", "Actor/Gadget/Q7605401TalkTrigger", 70900002, 0, points._Q7605401TalkTriggerPoint_.pos, points._Q7605401TalkTriggerPoint_.rot, true, false, 3)
end

function Quest76054:OnSubFinish7605403(arg1)
    print("OnSubFinish7605403")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318_1.id, 1, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:ActorDestroy("Q7605401TalkTrigger")
    actorMgr:CreateActorWithPos("Q76054TriggerDeleteGuer", "Actor/Gadget/Q76054TriggerDeleteGuer", 70900002, 0, points._Q76054TriggerDeleteGuerPoint_.pos, points._Q76054TriggerDeleteGuerPoint_.rot, true, false, 3)
end

return Quest76054
