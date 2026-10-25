require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76083 = class("Quest76083", QuestActorProxy)
Quest76083.defaultAlias = "Quest76083"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76083:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76083:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7608301"] = self.OnSubStart7608301, ["7608302"] = self.OnSubStart7608302}
end

function Quest76083:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7608301"] = self.OnSubFinish7608301, ["7608302"] = self.OnSubFinish7608302}
end

function Quest76083:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76083:Start()
    print("Start")
end

function Quest76083:OnDestroy()
    print("OnDestroy")
end

function Quest76083:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76083:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76083:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15703.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15704.alias, 3)
    this:ActorDestroy("Q76083DeleteGuer")
    this:ActorDestroy("Q76083Trigger")
    this:DestroyNpcTrigger("Q7608301N1318Trigger")
end

function Quest76083:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76083DeleteGuer")
    this:ActorDestroy("Q76083Trigger")
end

function Quest76083:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76083:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76083:OnSubStart7608301(arg1)
    print("OnSubStart7608301")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 30, 7608301)
    this:CreateQuestNpc(arg1, npcs.Npc15703.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15704.id, 0, false, 0)
end

function Quest76083:OnSubFinish7608301(arg1)
    print("OnSubFinish7608301")
    this:SetNavigationByMainId(76083, true)
end

function Quest76083:OnSubStart7608302(arg1)
    print("OnSubStart7608302")
    actorMgr:CreateActorWithPos("Q76083Trigger", "Actor/Gadget/Q76083Trigger", 70900002, 0, points._Q76083TriggerPoint_.pos, points._Q76083TriggerPoint_.rot, true, false, 3)
end

function Quest76083:OnSubFinish7608302(arg1)
    print("OnSubFinish7608302")
    this:CreateQuestOrphanNpc(arg1, 1318, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76083DeleteGuer", "Actor/Gadget/Q76083DeleteGuer", 70900002, 0, points._Q76083DeleteGuerPoint_.pos, points._Q76083DeleteGuerPoint_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc15703.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15704.alias, 3)
    end)
end

return Quest76083
