require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40108 = class("Quest40108", QuestActorProxy)
Quest40108.defaultAlias = "Quest40108"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40108:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40108:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4010801"] = self.OnSubStart4010801,
        ["4010802"] = self.OnSubStart4010802,
        ["4010803"] = self.OnSubStart4010803,
        ["4010804"] = self.OnSubStart4010804,
        ["4010805"] = self.OnSubStart4010805,
        ["4010806"] = self.OnSubStart4010806,
        ["4010807"] = self.OnSubStart4010807,
        ["4010808"] = self.OnSubStart4010808,
        ["4010809"] = self.OnSubStart4010809,
        ["4010810"] = self.OnSubStart4010810,
        ["4010811"] = self.OnSubStart4010811,
        ["4010821"] = self.OnSubStart4010821,
        ["4010812"] = self.OnSubStart4010812,
        ["4010813"] = self.OnSubStart4010813,
        ["4010814"] = self.OnSubStart4010814,
        ["4010820"] = self.OnSubStart4010820,
        ["4010817"] = self.OnSubStart4010817,
        ["4010818"] = self.OnSubStart4010818,
        ["4010819"] = self.OnSubStart4010819
    }
end

function Quest40108:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4010801"] = self.OnSubFinish4010801,
        ["4010802"] = self.OnSubFinish4010802,
        ["4010803"] = self.OnSubFinish4010803,
        ["4010804"] = self.OnSubFinish4010804,
        ["4010805"] = self.OnSubFinish4010805,
        ["4010806"] = self.OnSubFinish4010806,
        ["4010807"] = self.OnSubFinish4010807,
        ["4010808"] = self.OnSubFinish4010808,
        ["4010809"] = self.OnSubFinish4010809,
        ["4010810"] = self.OnSubFinish4010810,
        ["4010811"] = self.OnSubFinish4010811,
        ["4010821"] = self.OnSubFinish4010821,
        ["4010812"] = self.OnSubFinish4010812,
        ["4010813"] = self.OnSubFinish4010813,
        ["4010814"] = self.OnSubFinish4010814,
        ["4010820"] = self.OnSubFinish4010820,
        ["4010817"] = self.OnSubFinish4010817,
        ["4010818"] = self.OnSubFinish4010818,
        ["4010819"] = self.OnSubFinish4010819
    }
end

function Quest40108:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40108:Start()
    print("Start")
end

function Quest40108:OnDestroy()
    print("OnDestroy")
end

function Quest40108:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40108:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40108:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2036Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30360Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30361Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2002Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2084Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2034Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2143Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2084Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4010803Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4010814Trigger", 3, false)
end

function Quest40108:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40108:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40108:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest40108:OnSubStart4010801(arg1)
    print("OnSubStart4010801")
    this:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
end

function Quest40108:OnSubFinish4010801(arg1)
    print("OnSubFinish4010801")
    this:NarratorOnlyTaskByData(datas.NarratorWithId4010801)
end

function Quest40108:OnSubStart4010802(arg1)
    print("OnSubStart4010802")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2143Data.id, 4010802, 2, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
end

function Quest40108:OnSubFinish4010802(arg1)
    print("OnSubFinish4010802")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
end

function Quest40108:OnSubStart4010803(arg1)
    print("OnSubStart4010803")
    this:CreateQuestNpc(arg1, npcs.Npc2036Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc2035Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2034Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2002Data.id, 4)
    actorMgr:CreateActorWithPos("Q4010803Trigger", "Actor/Gadget/Q4010803Trigger", 70900002, 0, points.TPos_Q4010803Trigger.pos, points.TPos_Q4010803Trigger.rot, true, false, 3)
end

function Quest40108:OnSubFinish4010803(arg1)
    print("OnSubFinish4010803")
end

function Quest40108:OnSubStart4010804(arg1)
    print("OnSubStart4010804")
    this:DailyNpcSafeHideSelf(npcs.Npc2034Data.alias, 1, true)
end

function Quest40108:OnSubFinish4010804(arg1)
    print("OnSubFinish4010804")
end

function Quest40108:OnSubStart4010805(arg1)
    print("OnSubStart4010805")
    this:DailyNpcSafeHideSelf(npcs.Npc2034Data.alias, 1, true)
end

function Quest40108:OnSubFinish4010805(arg1)
    print("OnSubFinish4010805")
end

function Quest40108:OnSubStart4010806(arg1)
    print("OnSubStart4010806")
    this:DailyNpcSafeHideSelf(npcs.Npc2034Data.alias, 1, true)
end

function Quest40108:OnSubFinish4010806(arg1)
    print("OnSubFinish4010806")
end

function Quest40108:OnSubStart4010807(arg1)
    print("OnSubStart4010807")
    this:DailyNpcSafeHideSelf(npcs.Npc2034Data.alias, 1, true)
end

function Quest40108:OnSubFinish4010807(arg1)
    print("OnSubFinish4010807")
end

function Quest40108:OnSubStart4010808(arg1)
    print("OnSubStart4010808")
    this:CreateQuestNpc(arg1, npcs.Npc2036Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc2035Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2034Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2002Data.id, 4)
end

function Quest40108:OnSubFinish4010808(arg1)
    print("OnSubFinish4010808")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc2036Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2002Data.alias, 3)
end

function Quest40108:OnSubStart4010809(arg1)
    print("OnSubStart4010809")
    this:LightNotifyTo(npcs.Npc2034Data.alias, 0, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1032Data.id, 4010809, 2, 40)
end

function Quest40108:OnSubFinish4010809(arg1)
    print("OnSubFinish4010809")
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
end

function Quest40108:OnSubStart4010810(arg1)
    print("OnSubStart4010810")
    this:NpcCreateWithNpcTrigger(npcs.Npc1069Data.id, 4010810, 3, 5)
end

function Quest40108:OnSubFinish4010810(arg1)
    print("OnSubFinish4010810")
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
end

function Quest40108:OnSubStart4010811(arg1)
    print("OnSubStart4010811")
    this:NpcCreateWithNpcTrigger(npcs.Npc1021Data.id, 4010811, 4, 18)
    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc2084Data.alias, 1, true)
end

function Quest40108:OnSubFinish4010811(arg1)
    print("OnSubFinish4010811")
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
end

function Quest40108:OnSubStart4010821(arg1)
    print("OnSubStart4010821")
    this:NpcCreateWithNpcTrigger(npcs.Npc1021Data.id, 4010821, 2, 18)
    this:DailyNpcSafeHideSelf(npcs.Npc2084Data.alias, 1, true)
end

function Quest40108:OnSubFinish4010821(arg1)
    print("OnSubFinish4010821")
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
end

function Quest40108:OnSubStart4010812(arg1)
    print("OnSubStart4010812")
    this:NpcCreateWithNpcTrigger(npcs.Npc1023Data.id, 4010812, 3, 8)
    this:CreateQuestNpc(arg1, npcs.Npc30360Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc30360Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc2084Data.alias, 1, true)
end

function Quest40108:OnSubFinish4010812(arg1)
    print("OnSubFinish4010812")
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30360Data.alias, 3)
end

function Quest40108:OnSubStart4010813(arg1)
    print("OnSubStart4010813")
    this:LightNotifyTo(npcs.Npc2084Data.alias, 0, true)
end

function Quest40108:OnSubFinish4010813(arg1)
    print("OnSubFinish4010813")
    this:NarratorOnlyTaskByData(datas.NarratorWithId4010802)
end

function Quest40108:OnSubStart4010814(arg1)
    print("OnSubStart4010814")
    actorMgr:CreateActorWithPos("Q4010814Trigger", "Actor/Gadget/Q4010814Trigger", 70900002, 0, points.TPos_Q4010814Trigger.pos, points.TPos_Q4010814Trigger.rot, true, false, 3)
end

function Quest40108:OnSubFinish4010814(arg1)
    print("OnSubFinish4010814")
    this:ClearNarratorTask()
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId4010803)
    end)
end

function Quest40108:OnSubStart4010820(arg1)
    print("OnSubStart4010820")
end

function Quest40108:OnSubFinish4010820(arg1)
    print("OnSubFinish4010820")
end

function Quest40108:OnSubStart4010817(arg1)
    print("OnSubStart4010817")
    this:NpcCreateWithNpcTrigger(npcs.Npc1023Data.id, 4010817, 3, 50)
end

function Quest40108:OnSubFinish4010817(arg1)
    print("OnSubFinish4010817")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30360Data.alias, 3)
end

function Quest40108:OnSubStart4010818(arg1)
    print("OnSubStart4010818")
    this:NpcCreateWithNpcTrigger(npcs.Npc30361Data.id, 4010818, 5, 8)
    this:GetQuestNpcActor(npcs.Npc30361Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
end

function Quest40108:OnSubFinish4010818(arg1)
    print("OnSubFinish4010818")
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30360Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30361Data.alias, 3)
end

function Quest40108:OnSubStart4010819(arg1)
    print("OnSubStart4010819")
    this:NpcCreateWithNpcTrigger(npcs.Npc1021Data.id, 4010819, 3, 20)
    this:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc2039Data.id, 6)
    this:GetQuestNpcActor(npcs.Npc2039Data.alias):SitOnChair(0)
end

function Quest40108:OnSubFinish4010819(arg1)
    print("OnSubFinish4010819")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2039Data.alias, 3)
end

return Quest40108
