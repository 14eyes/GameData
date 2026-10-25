require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72278 = class("Quest72278", QuestActorProxy)
Quest72278.defaultAlias = "Quest72278"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72278:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72278:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7227827"] = self.OnSubStart7227827,
        ["7227801"] = self.OnSubStart7227801,
        ["7227802"] = self.OnSubStart7227802,
        ["7227803"] = self.OnSubStart7227803,
        ["7227804"] = self.OnSubStart7227804,
        ["7227805"] = self.OnSubStart7227805,
        ["7227806"] = self.OnSubStart7227806,
        ["7227807"] = self.OnSubStart7227807,
        ["7227808"] = self.OnSubStart7227808,
        ["7227826"] = self.OnSubStart7227826,
        ["7227809"] = self.OnSubStart7227809,
        ["7227810"] = self.OnSubStart7227810,
        ["7227811"] = self.OnSubStart7227811,
        ["7227812"] = self.OnSubStart7227812,
        ["7227813"] = self.OnSubStart7227813,
        ["7227814"] = self.OnSubStart7227814,
        ["7227815"] = self.OnSubStart7227815,
        ["7227816"] = self.OnSubStart7227816,
        ["7227817"] = self.OnSubStart7227817,
        ["7227818"] = self.OnSubStart7227818,
        ["7227819"] = self.OnSubStart7227819,
        ["7227820"] = self.OnSubStart7227820,
        ["7227821"] = self.OnSubStart7227821,
        ["7227822"] = self.OnSubStart7227822,
        ["7227823"] = self.OnSubStart7227823,
        ["7227824"] = self.OnSubStart7227824,
        ["7227825"] = self.OnSubStart7227825,
        ["7227828"] = self.OnSubStart7227828,
        ["7227829"] = self.OnSubStart7227829
    }
end

function Quest72278:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7227827"] = self.OnSubFinish7227827,
        ["7227801"] = self.OnSubFinish7227801,
        ["7227802"] = self.OnSubFinish7227802,
        ["7227803"] = self.OnSubFinish7227803,
        ["7227804"] = self.OnSubFinish7227804,
        ["7227805"] = self.OnSubFinish7227805,
        ["7227806"] = self.OnSubFinish7227806,
        ["7227807"] = self.OnSubFinish7227807,
        ["7227808"] = self.OnSubFinish7227808,
        ["7227826"] = self.OnSubFinish7227826,
        ["7227809"] = self.OnSubFinish7227809,
        ["7227810"] = self.OnSubFinish7227810,
        ["7227811"] = self.OnSubFinish7227811,
        ["7227812"] = self.OnSubFinish7227812,
        ["7227813"] = self.OnSubFinish7227813,
        ["7227814"] = self.OnSubFinish7227814,
        ["7227815"] = self.OnSubFinish7227815,
        ["7227816"] = self.OnSubFinish7227816,
        ["7227817"] = self.OnSubFinish7227817,
        ["7227818"] = self.OnSubFinish7227818,
        ["7227819"] = self.OnSubFinish7227819,
        ["7227820"] = self.OnSubFinish7227820,
        ["7227821"] = self.OnSubFinish7227821,
        ["7227822"] = self.OnSubFinish7227822,
        ["7227823"] = self.OnSubFinish7227823,
        ["7227824"] = self.OnSubFinish7227824,
        ["7227825"] = self.OnSubFinish7227825,
        ["7227828"] = self.OnSubFinish7227828,
        ["7227829"] = self.OnSubFinish7227829
    }
end

function Quest72278:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72278:Start()
    print("Start")
end

function Quest72278:OnDestroy()
    print("OnDestroy")
end

function Quest72278:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NpcDestroy(npcs.Npc10090Data.alias, 3)
    self:NpcDestroy(npcs.Npc3030Data.alias, 3)
    self:NpcDestroy(npcs.Npc1035Data.alias, 3)
    self:ActorDestroy("Q7227825Trigger1")
end

function Quest72278:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72278:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12028Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3035Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30065Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30209Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3035Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q72278Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7227801Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7227802Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7227806Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q7227808Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q7227811Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q7227815Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q7227817Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7227818Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q7227821Trigger6", 3, false)
    actorMgr:DestroyEntityActor("Q7227824Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7227825Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q7227826Trigger", 3, false)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest72278:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72278:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72278:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72278:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest72278:CustmiseFunction()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest72278:OnSubStart7227827(arg1)
    print("OnSubStart7227827")
end

function Quest72278:OnSubFinish7227827(arg1)
    print("OnSubFinish7227827")
end

function Quest72278:OnSubStart7227801(arg1)
    print("OnSubStart7227801")
    self:NpcCreate(arg1, npcs.Npc1018Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc10090Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc10090Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7227801Trigger", "Actor/Gadget/Q7227801Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227801_N1018").pos, sceneData:GetDummyPoint(3, "Q7227801_N1018").rot, true, false, 3)
end

function Quest72278:OnSubFinish7227801(arg1)
    print("OnSubFinish7227801")
    self:NpcDestroy(npcs.Npc10090Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)

    self:ActorDestroy("Q7227801Trigger")
end

function Quest72278:OnSubStart7227802(arg1)
    print("OnSubStart7227802")
    self:NpcCreate(arg1, npcs.Npc1018Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7227802Trigger", "Actor/Gadget/Q7227802Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227803_N10000005").pos, sceneData:GetDummyPoint(3, "Q7227803_N10000005").rot, true, false, 3)
end

function Quest72278:OnSubFinish7227802(arg1)
    print("OnSubFinish7227802")
    self:NpcDestroy(npcs.Npc1018Data.alias, 3)
    self:ActorDestroy("Q7227802Trigger")
end

function Quest72278:OnSubStart7227803(arg1)
    print("OnSubStart7227803")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
    self:NpcCreate(arg1, npcs.Npc12029Data.id, 2)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest72278:OnSubFinish7227803(arg1)
    print("OnSubFinish7227803")
end

function Quest72278:OnSubStart7227804(arg1)
    print("OnSubStart7227804")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc10090Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc10090Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc12029Data.id, 2)
    end)
end

function Quest72278:OnSubFinish7227804(arg1)
    print("OnSubFinish7227804")
end

function Quest72278:OnSubStart7227805(arg1)
    print("OnSubStart7227805")
    actorMgr:CreateActorWithPos("Q72278Trigger", "Actor/Gadget/Q72278Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227803_N10090").pos, sceneData:GetDummyPoint(3, "Q7227803_N10090").rot, true, false, 3)
end

function Quest72278:OnSubFinish7227805(arg1)
    print("OnSubFinish7227805")
    self:NpcDestroy(npcs.Npc10090Data.alias, 3)
    self:NpcDestroy(npcs.Npc12029Data.alias, 3)
    self:ActorDestroy("Q72278Trigger")
end

function Quest72278:OnSubStart7227806(arg1)
    print("OnSubStart7227806")
    self:NpcCreate(arg1, npcs.Npc1035Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1160, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12028Data.id, 4)
    self:NpcCreate(arg1, npcs.Npc12027Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12027Data.alias):DoFreeStyle(1060, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7227806Trigger1", "Actor/Gadget/Q7227806Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227805_N10000005").pos, sceneData:GetDummyPoint(3, "Q7227805_N10000005").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3035Data.alias, 1, true)
end

function Quest72278:OnSubFinish7227806(arg1)
    print("OnSubFinish7227806")
    self:ActorDestroy("Q7227806Trigger1")
end

function Quest72278:OnSubStart7227807(arg1)
    print("OnSubStart7227807")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
end

function Quest72278:OnSubFinish7227807(arg1)
    print("OnSubFinish7227807")
    self:NpcDestroy(npcs.Npc10090Data.alias, 3)
    self:NpcDestroy(npcs.Npc1035Data.alias, 3)
end

function Quest72278:OnSubStart7227808(arg1)
    print("OnSubStart7227808")
    self:NpcCreate(arg1, npcs.Npc12029Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12029Data.alias):DoFreeStyle(1050, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12028Data.id, 4)
    self:NpcCreate(arg1, npcs.Npc12027Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12027Data.alias):DoFreeStyle(1060, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc30065Data.id, 7)
    self:GetQuestNpcActor(npcs.Npc30065Data.alias):DoFreeStyle(4010, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7227808Trigger2", "Actor/Gadget/Q7227808Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7227808").pos, sceneData:GetDummyPoint(3, "guide_Q7227808").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3035Data.alias, 1, true)
end

function Quest72278:OnSubFinish7227808(arg1)
    print("OnSubFinish7227808")
    self:NpcDestroy(npcs.Npc12029Data.alias, 3)
    self:NpcDestroy(npcs.Npc12028Data.alias, 3)
    self:NpcDestroy(npcs.Npc12027Data.alias, 3)
    self:ActorDestroy("Q7227808Trigger2")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1)
    self:LightNotifyTo(npcs.Npc3035Data.alias, 0, true)
end

function Quest72278:OnSubStart7227826(arg1)
    print("OnSubStart7227826")
    actorMgr:CreateActorWithPos("Q7227826Trigger", "Actor/Gadget/Q7227826Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7227808").pos, sceneData:GetDummyPoint(3, "guide_Q7227808").rot, true, false, 3)
end

function Quest72278:OnSubFinish7227826(arg1)
    print("OnSubFinish7227826")
    self:ActorDestroy("Q7227826Trigger")
end

function Quest72278:OnSubStart7227809(arg1)
    print("OnSubStart7227809")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
    self:NpcCreate(arg1, npcs.Npc1035Data.id, 2)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest72278:OnSubFinish7227809(arg1)
    print("OnSubFinish7227809")
    self:NpcDestroy(npcs.Npc30065Data.alias, 3)
end

function Quest72278:OnSubStart7227810(arg1)
    print("OnSubStart7227810")
    self:NpcCreate(arg1, npcs.Npc10090Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc1035Data.id, 2)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10090Data.alias, 72278)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData4, 50, 20, -1, function(arg1)
        print("FinishSubQuest7227810")
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:Standby()
        actorUtils.FinishQuestID(false, 7227810)
    end, nil, nil, nil, self.CustmiseFunction, nil, true)

    local v = self:GetQuestNpcActor(npcs.Npc10090Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:SetWalkSpeedRatio(1)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc1035Data.alias, 72278)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor2, datas.RoutePointsData5, 50, 20, -1, function(arg1)
        print("FinishSubQuest7227810")
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:Standby()
        actorUtils.FinishQuestID(false, 7227810)
    end, nil, nil, nil, self.CustmiseFunction, nil, true)

    local questNpcActor3 = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
    questNpcActor3:DisableInteeHeadCtrl(true)
    questNpcActor3:SetWalkSpeedRatio(0.9)
end

function Quest72278:OnSubFinish7227810(arg1)
    print("OnSubFinish7227810")
end

function Quest72278:OnSubStart7227811(arg1)
    print("OnSubStart7227811")
end

function Quest72278:OnSubFinish7227811(arg1)
    print("OnSubFinish7227811")
end

function Quest72278:OnSubStart7227812(arg1)
    print("OnSubStart7227812")
end

function Quest72278:OnSubFinish7227812(arg1)
    print("OnSubFinish7227812")
end

function Quest72278:OnSubStart7227813(arg1)
    print("OnSubStart7227813")
end

function Quest72278:OnSubFinish7227813(arg1)
    print("OnSubFinish7227813")
end

function Quest72278:OnSubStart7227814(arg1)
    print("OnSubStart7227814")
end

function Quest72278:OnSubFinish7227814(arg1)
    print("OnSubFinish7227814")
end

function Quest72278:OnSubStart7227815(arg1)
    print("OnSubStart7227815")
end

function Quest72278:OnSubFinish7227815(arg1)
    print("OnSubFinish7227815")
end

function Quest72278:OnSubStart7227816(arg1)
    print("OnSubStart7227816")
    actorMgr:CreateActorWithPos("Q7227815Trigger5", "Actor/Gadget/Q7227815Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7227815").pos, sceneData:GetDummyPoint(3, "guide_Q7227815").rot, true, false, 3)
end

function Quest72278:OnSubFinish7227816(arg1)
    print("OnSubFinish7227816")
    self:NpcDestroy(npcs.Npc10090Data.alias, 3)
    self:NpcDestroy(npcs.Npc1035Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
        arg1:GetQuestNpcActor(npcs.Npc10090Data.alias):EnableHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc1035Data.alias):EnableHeadCtrl(true)
    end)

    self:ActorDestroy("Q7227815Trigger5")
end

function Quest72278:OnSubStart7227817(arg1)
    print("OnSubStart7227817")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc10090Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc10090Data.alias):DoFreeStyle(1050, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc1035Data.id, 2)
        arg1_2:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
        actorMgr:CreateActorWithPos("Q7227817Trigger", "Actor/Gadget/Q7227817Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227805_N10000005").pos, sceneData:GetDummyPoint(3, "Q7227805_N10000005").rot, true, false, 3)
        arg1_2:NotifyTo(npcs.Npc3035Data.alias, 1, true)
    end)
end

function Quest72278:OnSubFinish7227817(arg1)
    print("OnSubFinish7227817")
    self:ActorDestroy("Q7227817Trigger")
end

function Quest72278:OnSubStart7227818(arg1)
    print("OnSubStart7227818")
    actorMgr:CreateActorWithPos("Q7227818Trigger1", "Actor/Gadget/Q7227818Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227805_N10000005").pos, sceneData:GetDummyPoint(3, "Q7227805_N10000005").rot, true, false, 3)
end

function Quest72278:OnSubFinish7227818(arg1)
    print("OnSubFinish7227818")
    self:NpcDestroy(npcs.Npc10090Data.alias, 3)
    self:NpcDestroy(npcs.Npc1035Data.alias, 3)
    self:ActorDestroy("Q7227818Trigger1")
end

function Quest72278:OnSubStart7227819(arg1)
    print("OnSubStart7227819")
    self:NotifyTo(npcs.Npc3035Data.alias, 1, true)
end

function Quest72278:OnSubFinish7227819(arg1)
    print("OnSubFinish7227819")
end

function Quest72278:OnSubStart7227820(arg1)
    print("OnSubStart7227820")
    self:NpcCreate(arg1, npcs.Npc30209Data.id, 4)
    actorMgr:CreateActorWithPos("Q7227811Trigger3", "Actor/Gadget/Q7227811Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227819").pos, sceneData:GetDummyPoint(3, "Q7227819").rot, true, false, 3)
end

function Quest72278:OnSubFinish7227820(arg1)
    print("OnSubFinish7227820")
    self:NpcDestroy(npcs.Npc10090Data.alias, 3)
    self:NpcDestroy(npcs.Npc1035Data.alias, 3)
    self:NpcDestroy(npcs.Npc30209Data.alias, 3)
    self:ActorDestroy("Q7227811Trigger3")
end

function Quest72278:OnSubStart7227821(arg1)
    print("OnSubStart7227821")
    self:NpcCreate(arg1, npcs.Npc3030Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc3030Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7227821Trigger6", "Actor/Gadget/Q7227821Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7227821").pos, sceneData:GetDummyPoint(3, "guide_Q7227821").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3035Data.alias, 1, true)
end

function Quest72278:OnSubFinish7227821(arg1)
    print("OnSubFinish7227821")
    self:NpcDestroy(npcs.Npc1018Data.alias, 3)
    self:NpcDestroy(npcs.Npc10090Data.alias, 3)
    self:NpcDestroy(npcs.Npc1035Data.alias, 3)
    self:NpcDestroy(npcs.Npc1034Data.alias, 3)
    self:NpcDestroy(npcs.Npc3030Data.alias, 3)
    self:ActorDestroy("Q7227821Trigger6")
    self:LightNotifyTo(npcs.Npc3035Data.alias, 0, true)
end

function Quest72278:OnSubStart7227822(arg1)
    print("OnSubStart7227822")
end

function Quest72278:OnSubFinish7227822(arg1)
    print("OnSubFinish7227822")
end

function Quest72278:OnSubStart7227823(arg1)
    print("OnSubStart7227823")
end

function Quest72278:OnSubFinish7227823(arg1)
    print("OnSubFinish7227823")
end

function Quest72278:OnSubStart7227824(arg1)
    print("OnSubStart7227824")
    self:NpcCreate(arg1, npcs.Npc10090Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10090Data.alias):DoFreeStyle(1060, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc1035Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1130, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc3030Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc3030Data.alias):DoFreeStyle(1130, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7227824Trigger", "Actor/Gadget/Q7227824Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227825_N10000005").pos, sceneData:GetDummyPoint(3, "Q7227825_N10000005").rot, true, false, 3)
end

function Quest72278:OnSubFinish7227824(arg1)
    print("OnSubFinish7227824")
    self:ActorDestroy("Q7227824Trigger")
end

function Quest72278:OnSubStart7227825(arg1)
    print("OnSubStart7227825")
    actorMgr:CreateActorWithPos("Q7227825Trigger1", "Actor/Gadget/Q7227825Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227825_N10090").pos, sceneData:GetDummyPoint(3, "Q7227825_N10090").rot, true, false, 3)
end

function Quest72278:OnSubFinish7227825(arg1)
    print("OnSubFinish7227825")
    self:NpcDestroy(npcs.Npc10090Data.alias, 3)
    self:NpcDestroy(npcs.Npc1035Data.alias, 3)
    self:NpcDestroy(npcs.Npc3030Data.alias, 3)
    self:ActorDestroy("Q7227825Trigger1")
end

function Quest72278:OnSubStart7227828(arg1)
    print("OnSubStart7227828")
end

function Quest72278:OnSubFinish7227828(arg1)
    print("OnSubFinish7227828")
end

function Quest72278:OnSubStart7227829(arg1)
    print("OnSubStart7227829")
end

function Quest72278:OnSubFinish7227829(arg1)
    print("OnSubFinish7227829")
end

return Quest72278
