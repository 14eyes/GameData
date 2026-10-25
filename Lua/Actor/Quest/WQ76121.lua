require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76121 = class("Quest76121", QuestActorProxy)
Quest76121.defaultAlias = "Quest76121"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76121:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76121:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7612101"] = self.OnSubStart7612101, ["7612102"] = self.OnSubStart7612102}
end

function Quest76121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7612101"] = self.OnSubFinish7612101, ["7612102"] = self.OnSubFinish7612102}
end

function Quest76121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76121:Start()
    print("Start")
end

function Quest76121:OnDestroy()
    print("OnDestroy")
end

function Quest76121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76121:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:ActorDestroy("Q76121guer")
    this:DestroyNpcTrigger("Q7612101N1318Trigger")
end

function Quest76121:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76121guer")
end

function Quest76121:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76121:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76121:OnSubStart7612101(arg1)
    print("OnSubStart7612101")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7612101)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76121):DoFreeStyle(8010, true, nil, true, true, false, false)
end

function Quest76121:OnSubFinish7612101(arg1)
    print("OnSubFinish7612101")
    this:SetNavigationByMainId(76121, true)
end

function Quest76121:OnSubStart7612102(arg1)
    print("OnSubStart7612102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7612102)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76121):DoFreeStyle(8010, true, nil, true, true, false, false)
end

function Quest76121:OnSubFinish7612102(arg1)
    print("OnSubFinish7612102")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76121guer", "Actor/Gadget/Q76121guer", 70900002, 0, points._Q76121guerPoint_.pos, points._Q76121guerPoint_.rot, true, false, 3)
end

return Quest76121
