require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76678 = class("Quest76678", QuestActorProxy)
Quest76678.defaultAlias = "Quest76678"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76678:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76678:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7667807"] = self.OnSubStart7667807,
        ["7667801"] = self.OnSubStart7667801,
        ["7667803"] = self.OnSubStart7667803,
        ["7667804"] = self.OnSubStart7667804,
        ["7667805"] = self.OnSubStart7667805,
        ["7667806"] = self.OnSubStart7667806,
        ["7667802"] = self.OnSubStart7667802
    }
end

function Quest76678:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7667807"] = self.OnSubFinish7667807,
        ["7667801"] = self.OnSubFinish7667801,
        ["7667803"] = self.OnSubFinish7667803,
        ["7667804"] = self.OnSubFinish7667804,
        ["7667805"] = self.OnSubFinish7667805,
        ["7667806"] = self.OnSubFinish7667806,
        ["7667802"] = self.OnSubFinish7667802
    }
end

function Quest76678:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7667806"] = self.OnSubFailed7667806}
end

function Quest76678:Start()
    print("Start")
end

function Quest76678:OnDestroy()
    print("OnDestroy")
end

function Quest76678:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76678:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76678:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15703.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15704.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15832.alias, 3)
    this:ActorDestroy("Q76678guer")
    this:ActorDestroy("Q7667807Trigger")
    this:DestroyNpcTrigger("Q7667802N1318Trigger")
    this:DestroyNpcTrigger("Q7667803N1318Trigger")
    this:DestroyNpcTrigger("Q7667805N1318Trigger")
    this:CancelStoryByQuest(147611902)
    this:CancelRangeStoryByQuest(147667800)
end

function Quest76678:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76678guer")
    this:ActorDestroy("Q7667807Trigger")
end

function Quest76678:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76678:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76678:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76678:OnSubStart7667807(arg1)
    print("OnSubStart7667807")
    actorMgr:CreateActorWithPos("Q7667807Trigger", "Actor/Gadget/Q7667807Trigger", 70900002, 0, points._Q7667807TriggerPoint_.pos, points._Q7667807TriggerPoint_.rot, true, false, 3)
end

function Quest76678:OnSubFinish7667807(arg1)
    print("OnSubFinish7667807")
    this:ActorDestroy("Q7667807Trigger")
    this:SetNavigationByMainId(76678, true)
end

function Quest76678:OnSubStart7667801(arg1)
    print("OnSubStart7667801")
    this:DeployRangeStoryByQuest(147667800, 3, {x = 2132.296, y = 108.913, z = 11201.92}, 60, 80)
end

function Quest76678:OnSubFinish7667801(arg1)
    print("OnSubFinish7667801")
    this:CancelRangeStoryByQuest(147667800)
end

function Quest76678:OnSubStart7667803(arg1)
    print("OnSubStart7667803")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7667803)
end

function Quest76678:OnSubFinish7667803(arg1)
    print("OnSubFinish7667803")
    this:NpcDestroyImmediately(3, npcs.Npc15703.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15704.alias)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76678guer", "Actor/Gadget/Q76678guer", 70900002, 0, points._Q76678guerPoint_.pos, points._Q76678guerPoint_.rot, true, false, 3)
end

function Quest76678:OnSubStart7667804(arg1)
    print("OnSubStart7667804")
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15832.id, 0, false, 0)
end

function Quest76678:OnSubFinish7667804(arg1)
    print("OnSubFinish7667804")
    this:SafeDestroyQuestNpc(npcs.Npc15832.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76678guer", "Actor/Gadget/Q76678guer", 70900002, 0, points._Q76678guerPoint_.pos, points._Q76678guerPoint_.rot, true, false, 3)
end

function Quest76678:OnSubStart7667805(arg1)
    print("OnSubStart7667805")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7667805)
end

function Quest76678:OnSubFinish7667805(arg1)
    print("OnSubFinish7667805")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76678guer", "Actor/Gadget/Q76678guer", 70900002, 0, points._Q76678guerPoint_.pos, points._Q76678guerPoint_.rot, true, false, 3)
end

function Quest76678:OnSubStart7667806(arg1)
    print("OnSubStart7667806")
    this:DeployStoryByQuest(147611902)
end

function Quest76678:OnSubFinish7667806(arg1)
    print("OnSubFinish7667806")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:CancelAllStory()
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1318_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        actorMgr:CreateActorWithPos("Q76678guer", "Actor/Gadget/Q76678guer", 70900002, 0, points._Q76678guerPoint_.pos, points._Q76678guerPoint_.rot, true, false, 3)
    end, nil, nil, 0, false, true)
end

function Quest76678:OnSubFailed7667806(arg1)
    print("OnSubFailed7667806")
    this:CancelAllStory()
end

function Quest76678:OnSubStart7667802(arg1)
    print("OnSubStart7667802")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7667802)
    this:CreateQuestNpc(arg1, npcs.Npc15703.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15704.id, 0, false, 0)
end

function Quest76678:OnSubFinish7667802(arg1)
    print("OnSubFinish7667802")
    this:SafeDestroyQuestNpc(npcs.Npc15703.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15704.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76678guer", "Actor/Gadget/Q76678guer", 70900002, 0, points._Q76678guerPoint_.pos, points._Q76678guerPoint_.rot, true, false, 3)
end

return Quest76678
