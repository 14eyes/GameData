require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40158 = class("Quest40158", QuestActorProxy)
Quest40158.defaultAlias = "Quest40158"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40158:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40158:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4015801"] = self.OnSubStart4015801,
        ["4015802"] = self.OnSubStart4015802,
        ["4015807"] = self.OnSubStart4015807,
        ["4015808"] = self.OnSubStart4015808,
        ["4015809"] = self.OnSubStart4015809,
        ["4015810"] = self.OnSubStart4015810,
        ["4015813"] = self.OnSubStart4015813,
        ["4015803"] = self.OnSubStart4015803,
        ["4015812"] = self.OnSubStart4015812,
        ["4015804"] = self.OnSubStart4015804,
        ["4015805"] = self.OnSubStart4015805,
        ["4015806"] = self.OnSubStart4015806,
        ["4015811"] = self.OnSubStart4015811
    }
end

function Quest40158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4015801"] = self.OnSubFinish4015801,
        ["4015802"] = self.OnSubFinish4015802,
        ["4015807"] = self.OnSubFinish4015807,
        ["4015808"] = self.OnSubFinish4015808,
        ["4015809"] = self.OnSubFinish4015809,
        ["4015810"] = self.OnSubFinish4015810,
        ["4015813"] = self.OnSubFinish4015813,
        ["4015803"] = self.OnSubFinish4015803,
        ["4015812"] = self.OnSubFinish4015812,
        ["4015804"] = self.OnSubFinish4015804,
        ["4015805"] = self.OnSubFinish4015805,
        ["4015806"] = self.OnSubFinish4015806,
        ["4015811"] = self.OnSubFinish4015811
    }
end

function Quest40158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4015801"] = self.OnSubFailed4015801,
        ["4015802"] = self.OnSubFailed4015802,
        ["4015807"] = self.OnSubFailed4015807,
        ["4015808"] = self.OnSubFailed4015808,
        ["4015809"] = self.OnSubFailed4015809,
        ["4015810"] = self.OnSubFailed4015810,
        ["4015813"] = self.OnSubFailed4015813,
        ["4015803"] = self.OnSubFailed4015803,
        ["4015812"] = self.OnSubFailed4015812,
        ["4015804"] = self.OnSubFailed4015804,
        ["4015805"] = self.OnSubFailed4015805,
        ["4015806"] = self.OnSubFailed4015806,
        ["4015811"] = self.OnSubFailed4015811
    }
end

function Quest40158:Start()
    print("Start")
end

function Quest40158:OnDestroy()
    print("OnDestroy")
end

function Quest40158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40158:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30532.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1057.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1036.alias, 3)
    this:ActorDestroy("tigger4015805")
    this:ActorDestroy("tigger4015806")
    this:ActorDestroy("tigger4015804")
    this:ActorDestroy("tigger4015812")
    this:DestroyNpcTrigger("Q4015801N30532Trigger")
    this:DestroyNpcTrigger("Q4015807N1049Trigger")
    this:DestroyNpcTrigger("Q4015811N1034Trigger")
    actorUtils.RemoveAnimationCacheBudgetValue()
end

function Quest40158:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40158:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40158:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40158:OnSubStart4015801(arg1)
    print("OnSubStart4015801")
    this:NpcCreateWithNpcTrigger(npcs.Npc30532.id, 4015801, 0, 20)
end

function Quest40158:OnSubFinish4015801(arg1)
    print("OnSubFinish4015801")
end

function Quest40158:OnSubFailed4015801(arg1)
    print("OnSubFailed4015801")
end

function Quest40158:OnSubStart4015802(arg1)
    print("OnSubStart4015802")
end

function Quest40158:OnSubFinish4015802(arg1)
    print("OnSubFinish4015802")
end

function Quest40158:OnSubFailed4015802(arg1)
    print("OnSubFailed4015802")
end

function Quest40158:OnSubStart4015807(arg1)
    print("OnSubStart4015807")
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1049.id, 4015807, 0, 30, 2.5)
end

function Quest40158:OnSubFinish4015807(arg1)
    print("OnSubFinish4015807")
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
end

function Quest40158:OnSubFailed4015807(arg1)
    print("OnSubFailed4015807")
end

function Quest40158:OnSubStart4015808(arg1)
    print("OnSubStart4015808")
end

function Quest40158:OnSubFinish4015808(arg1)
    print("OnSubFinish4015808")
end

function Quest40158:OnSubFailed4015808(arg1)
    print("OnSubFailed4015808")
end

function Quest40158:OnSubStart4015809(arg1)
    print("OnSubStart4015809")
end

function Quest40158:OnSubFinish4015809(arg1)
    print("OnSubFinish4015809")
end

function Quest40158:OnSubFailed4015809(arg1)
    print("OnSubFailed4015809")
end

function Quest40158:OnSubStart4015810(arg1)
    print("OnSubStart4015810")
end

function Quest40158:OnSubFinish4015810(arg1)
    print("OnSubFinish4015810")
end

function Quest40158:OnSubFailed4015810(arg1)
    print("OnSubFailed4015810")
end

function Quest40158:OnSubStart4015813(arg1)
    print("OnSubStart4015813")
    this:CreateQuestNpc(arg1, npcs.Npc1037.id, 0)
    this:GetQuestNpcActor(npcs.Npc1037.alias, 40158):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1039.id, 0)
    this:GetQuestNpcActor(npcs.Npc1039.alias, 40158):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1033.id, 0)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40158):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1035.id, 0)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40158):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 40158):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1057.id, 0)
    this:GetQuestNpcActor(npcs.Npc1057.alias, 40158):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40158):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40158):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1037.alias, 40158):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1057.alias, 40158):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1039.alias, 40158):DisableInteeHeadCtrl(true)
end

function Quest40158:OnSubFinish4015813(arg1)
    print("OnSubFinish4015813")
end

function Quest40158:OnSubFailed4015813(arg1)
    print("OnSubFailed4015813")
end

function Quest40158:OnSubStart4015803(arg1)
    print("OnSubStart4015803")
    this:CreateQuestNpc(arg1, npcs.Npc30532.id, 0)
    this:ActionSafeCall(function(arg1)
        if this:GetQuestVar(4015803, 0) == 0 then
            this:QuestNarratorTask(datas.NarratorWithId4015890, function(arg1)
                this:SetQuestVarByMainId(0, 1)
            end)
        end
    end)

    this:GetQuestNpcActor(npcs.Npc1037.alias, 40158):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1039.alias, 40158):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40158):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40158):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 40158):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1057.alias, 40158):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40158):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40158):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1037.alias, 40158):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1057.alias, 40158):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1039.alias, 40158):DisableInteeHeadCtrl(true)
end

function Quest40158:OnSubFinish4015803(arg1)
    print("OnSubFinish4015803")
    this:ClearNarratorTask()
end

function Quest40158:OnSubFailed4015803(arg1)
    print("OnSubFailed4015803")
end

function Quest40158:OnSubStart4015812(arg1)
    print("OnSubStart4015812")
    actorMgr:CreateActorWithPos("tigger4015812", "Actor/Gadget/tigger4015812", 70900002, 0, points.tiggerPoint4015812.pos, points.tiggerPoint4015812.rot, true, false, 3)
end

function Quest40158:OnSubFinish4015812(arg1)
    print("OnSubFinish4015812")
    this:SafeDestroyQuestNpc(npcs.Npc30532.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1057.alias, 3)
end

function Quest40158:OnSubFailed4015812(arg1)
    print("OnSubFailed4015812")
end

function Quest40158:OnSubStart4015804(arg1)
    print("OnSubStart4015804")
    actorMgr:CreateActorWithPos("tigger4015804", "Actor/Gadget/tigger4015804", 70900002, 0, points.tiggerPoint4015805.pos, points.tiggerPoint4015805.rot, true, false, 3)
end

function Quest40158:OnSubFinish4015804(arg1)
    print("OnSubFinish4015804")
end

function Quest40158:OnSubFailed4015804(arg1)
    print("OnSubFailed4015804")
    this:ActorDestroy("tigger4015804")
end

function Quest40158:OnSubStart4015805(arg1)
    print("OnSubStart4015805")
    this:CreateQuestNpc(arg1, npcs.Npc1033.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1035.id, 0)
    actorMgr:CreateActorWithPos("tigger4015805", "Actor/Gadget/tigger4015805", 70900002, 0, points.tiggerPoint4015805.pos, points.tiggerPoint4015805.rot, true, false, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc30532.id, 0)
    end)
end

function Quest40158:OnSubFinish4015805(arg1)
    print("OnSubFinish4015805")
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30532.alias, 3)
end

function Quest40158:OnSubFailed4015805(arg1)
    print("OnSubFailed4015805")
end

function Quest40158:OnSubStart4015806(arg1)
    print("OnSubStart4015806")
    this:CreateQuestNpc(arg1, npcs.Npc1037.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1039.id, 0)
    actorMgr:CreateActorWithPos("tigger4015806", "Actor/Gadget/tigger4015806", 70900002, 0, points.tiggerPoint4015806.pos, points.tiggerPoint4015806.rot, true, false, 3)
end

function Quest40158:OnSubFinish4015806(arg1)
    print("OnSubFinish4015806")
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039.alias, 3)
end

function Quest40158:OnSubFailed4015806(arg1)
    print("OnSubFailed4015806")
end

function Quest40158:OnSubStart4015811(arg1)
    print("OnSubStart4015811")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1034.id, 4015811, 0, 79, 2.5)
    this:CreateQuestNpc(arg1, npcs.Npc1036.id, 0)
end

function Quest40158:OnSubFinish4015811(arg1)
    print("OnSubFinish4015811")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1036.alias, 3)
end

function Quest40158:OnSubFailed4015811(arg1)
    print("OnSubFailed4015811")
end

return Quest40158
