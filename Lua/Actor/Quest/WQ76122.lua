require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76122 = class("Quest76122", QuestActorProxy)
Quest76122.defaultAlias = "Quest76122"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76122:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76122:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7612201"] = self.OnSubStart7612201,
        ["7612205"] = self.OnSubStart7612205,
        ["7612204"] = self.OnSubStart7612204,
        ["7612202"] = self.OnSubStart7612202,
        ["7612203"] = self.OnSubStart7612203,
        ["7612206"] = self.OnSubStart7612206
    }
end

function Quest76122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7612201"] = self.OnSubFinish7612201,
        ["7612205"] = self.OnSubFinish7612205,
        ["7612204"] = self.OnSubFinish7612204,
        ["7612202"] = self.OnSubFinish7612202,
        ["7612203"] = self.OnSubFinish7612203,
        ["7612206"] = self.OnSubFinish7612206
    }
end

function Quest76122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7612204"] = self.OnSubFailed7612204,
        ["7612202"] = self.OnSubFailed7612202,
        ["7612203"] = self.OnSubFailed7612203
    }
end

function Quest76122:Start()
    print("Start")
end

function Quest76122:OnDestroy()
    print("OnDestroy")
end

function Quest76122:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76122:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76122:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 20325)
    this:ActorDestroy("Q7612201Trigger")
    this:ActorDestroy("Q76122Trigger")
    this:ActorDestroy("Q76122guer")
    this:ActorDestroy("Q76122trans1")
    this:ActorDestroy("Q76122trans2")
    this:DestroyNpcTrigger("Q7612201N1318Trigger")
    this:DestroyNpcTrigger("Q7612203N1318Trigger")
    this:DestroyNpcTrigger("Q7612204N1318Trigger")
    this:CancelStoryByQuest(147612200)
end

function Quest76122:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7612201Trigger")
    this:ActorDestroy("Q76122Trigger")
    this:ActorDestroy("Q76122guer")
    this:ActorDestroy("Q76122trans1")
    this:ActorDestroy("Q76122trans2")
end

function Quest76122:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76122:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76122:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76122:OnSubStart7612201(arg1)
    print("OnSubStart7612201")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7612201, 0, 20, 0, npcs.Npc1318.id)
    actorMgr:CreateActorWithPos("Q7612201Trigger", "Actor/Gadget/Q7612201Trigger", 70900002, 0, points._Q7612201TriggerPoint_.pos, points._Q7612201TriggerPoint_.rot, true, false, 3)
end

function Quest76122:OnSubFinish7612201(arg1)
    print("OnSubFinish7612201")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
    this:ActorDestroy("Q7612201Trigger")
    this:SetNavigationByMainId(76122, true)
    this:ClearNarratorTask()
end

function Quest76122:OnSubStart7612205(arg1)
    print("OnSubStart7612205")
    actorMgr:CreateActorWithPos("Q76122trans1", "Actor/Gadget/Q76122trans1", 70900002, 0, points._Q76122trans1Point_.pos, points._Q76122trans1Point_.rot, true, false, 3)
end

function Quest76122:OnSubFinish7612205(arg1)
    print("OnSubFinish7612205")
    this:ActorDestroy("Q76122trans1")
end

function Quest76122:OnSubStart7612204(arg1)
    print("OnSubStart7612204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7612204, 0, 60, 2, npcs.Npc1318.id)
end

function Quest76122:OnSubFinish7612204(arg1)
    print("OnSubFinish7612204")
end

function Quest76122:OnSubFailed7612204(arg1)
    print("OnSubFailed7612204")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 20325)
    this:DestroyNpcTrigger("Q7612204N1318Trigger")
end

function Quest76122:OnSubStart7612202(arg1)
    print("OnSubStart7612202")
    this:DeployStoryByQuest(147612200)
end

function Quest76122:OnSubFinish7612202(arg1)
    print("OnSubFinish7612202")
end

function Quest76122:OnSubFailed7612202(arg1)
    print("OnSubFailed7612202")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 20325)
    this:CancelAllStory()
end

function Quest76122:OnSubStart7612203(arg1)
    print("OnSubStart7612203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7612203, 0, 60, 2, npcs.Npc1318.id)
    this:DeployStoryByQuest(147612200)
end

function Quest76122:OnSubFinish7612203(arg1)
    print("OnSubFinish7612203")
    this:CancelAllStory()
end

function Quest76122:OnSubFailed7612203(arg1)
    print("OnSubFailed7612203")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 20325)
    this:DestroyNpcTrigger("Q7612203N1318Trigger")
    this:CancelAllStory()
end

function Quest76122:OnSubStart7612206(arg1)
    print("OnSubStart7612206")
    actorMgr:CreateActorWithPos("Q76122Trigger", "Actor/Gadget/Q76122Trigger", 70900002, 0, points._Q76122TriggerPoint_.pos, points._Q76122TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q76122trans2", "Actor/Gadget/Q76122trans2", 70900002, 0, points._Q76122trans2Point_.pos, points._Q76122trans2Point_.rot, true, false, 20325)
end

function Quest76122:OnSubFinish7612206(arg1)
    print("OnSubFinish7612206")
    this:ActorDestroy("Q76122Trigger")
    this:CreateQuestOrphanNpc(arg1, 1318, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:CreateQuestOrphanNpc(arg1, 15380, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76122guer", "Actor/Gadget/Q76122guer", 70900002, 0, points._Q76122guerPoint_.pos, points._Q76122guerPoint_.rot, true, false, 3)
end

return Quest76122
