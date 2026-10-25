require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4011 = class("Quest4011", QuestActorProxy)
Quest4011.defaultAlias = "Quest4011"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4011:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["401101"] = self.OnSubStart401101,
        ["401102"] = self.OnSubStart401102,
        ["401103"] = self.OnSubStart401103,
        ["401104"] = self.OnSubStart401104,
        ["401105"] = self.OnSubStart401105,
        ["401106"] = self.OnSubStart401106,
        ["401111"] = self.OnSubStart401111,
        ["401107"] = self.OnSubStart401107,
        ["401108"] = self.OnSubStart401108,
        ["401110"] = self.OnSubStart401110,
        ["401109"] = self.OnSubStart401109
    }
end

function Quest4011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["401101"] = self.OnSubFinish401101,
        ["401102"] = self.OnSubFinish401102,
        ["401103"] = self.OnSubFinish401103,
        ["401104"] = self.OnSubFinish401104,
        ["401105"] = self.OnSubFinish401105,
        ["401106"] = self.OnSubFinish401106,
        ["401111"] = self.OnSubFinish401111,
        ["401107"] = self.OnSubFinish401107,
        ["401108"] = self.OnSubFinish401108,
        ["401110"] = self.OnSubFinish401110,
        ["401109"] = self.OnSubFinish401109
    }
end

function Quest4011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4011:Start()
    print("Start")
end

function Quest4011:OnDestroy()
    print("OnDestroy")
end

function Quest4011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4011:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4011:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 401111)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 401110)
    end
end

function Quest4011:OnSubStart401101(arg1)
    print("OnSubStart401101")
    if this:GetQuestVar(401101, 1) == 0 then
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithId)
        end)

        this:SetQuestVarByMainId(1, 1)
    end

    actorMgr:CreateActorWithPos("Q401101Trigger", "Actor/Gadget/Q401101Trigger", 70900002, 0, points.TPos_Q401101Trigger.pos, points.TPos_Q401101Trigger.rot, true, false, 3)
end

function Quest4011:OnSubFinish401101(arg1)
    print("OnSubFinish401101")
    this:SafeDestroyQuestNpc(npcs.Npc13554Data.alias, 3)
end

function Quest4011:OnSubStart401102(arg1)
    print("OnSubStart401102")
    actorMgr:CreateActorWithPos("Q401102Trigger", "Actor/Gadget/Q401102Trigger", 70900002, 0, points.TPos_Q401102Trigger.pos, points.TPos_Q401102Trigger.rot, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc5005Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5004Data.alias, 1, true)
end

function Quest4011:OnSubFinish401102(arg1)
    print("OnSubFinish401102")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterBeginDialog", 1403)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc5005Data.alias, 3)
    this:ClearNarratorTask()
    this:LightNotifyTo(npcs.Npc5005Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5004Data.alias, 0, true)
end

function Quest4011:OnSubStart401103(arg1)
    print("OnSubStart401103")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    actorMgr:CreateActorWithPos("Q401103Trigger", "Actor/Gadget/Q401103Trigger", 70900002, 0, points.TPos_Q401103Trigger.pos, points.TPos_Q401103Trigger.rot, true, false, 1083)
end

function Quest4011:OnSubFinish401103(arg1)
    print("OnSubFinish401103")
end

function Quest4011:OnSubStart401104(arg1)
    print("OnSubStart401104")
    actorMgr:CreateActorWithPos("Q401104Trigger", "Actor/Gadget/Q401104Trigger", 70900002, 0, points.TPos_Q401104Trigger.pos, points.TPos_Q401104Trigger.rot, true, false, 1083)
end

function Quest4011:OnSubFinish401104(arg1)
    print("OnSubFinish401104")
end

function Quest4011:OnSubStart401105(arg1)
    print("OnSubStart401105")
    this:DailyNpcSafeHideSelf(npcs.Npc5055Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401105Trigger", "Actor/Gadget/Q401105Trigger", 70900002, 0, points.TPos_Q401105Trigger.pos, points.TPos_Q401105Trigger.rot, true, false, 3)
end

function Quest4011:OnSubFinish401105(arg1)
    print("OnSubFinish401105")
end

function Quest4011:OnSubStart401106(arg1)
    print("OnSubStart401106")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1070Data.alias)
    questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13545Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5055Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401106Trigger", "Actor/Gadget/Q401106Trigger", 70900002, 0, points.TPos_Q401106Trigger.pos, points.TPos_Q401106Trigger.rot, true, false, 3)
    questNpcActor:DisableInteeHeadCtrl(true)
    if this:GetQuestVar(401101, 2) == 0 then
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithId_01, nil, 4011)
        end)

        this:SetQuestVarByMainId(2, 1)
    end
end

function Quest4011:OnSubFinish401106(arg1)
    print("OnSubFinish401106")
    this:LightNotifyTo(npcs.Npc5055Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13545Data.alias, 3)
end

function Quest4011:OnSubStart401111(arg1)
    print("OnSubStart401111")
end

function Quest4011:OnSubFinish401111(arg1)
    print("OnSubFinish401111")
end

function Quest4011:OnSubStart401107(arg1)
    print("OnSubStart401107")
    actorMgr:CreateActorWithPos("Q401107Triggerkaiche", "Actor/Gadget/Q401107Triggerkaiche", 70900002, 0, points.TPos_Q401107Triggerkaiche.pos, points.TPos_Q401107Triggerkaiche.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401107Trigger", "Actor/Gadget/Q401107Trigger", 70900002, 0, points.TPos_Q401107Trigger.pos, points.TPos_Q401107Trigger.rot, true, false, 3)
end

function Quest4011:OnSubFinish401107(arg1)
    print("OnSubFinish401107")
    this:ActorDestroy("Q401107Triggerkaiche")
end

function Quest4011:OnSubStart401108(arg1)
    print("OnSubStart401108")
    this:CreateQuestNpc(arg1, npcs.Npc5271Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13462Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13462Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q401108Trigger", "Actor/Gadget/Q401108Trigger", 70900002, 0, points.TPos_Q401108Trigger.pos, points.TPos_Q401108Trigger.rot, true, false, 3)
end

function Quest4011:OnSubFinish401108(arg1)
    print("OnSubFinish401108")
    this:DestroyQuestNpcActor(npcs.Npc5271Data.alias, 3)
    this:TransmitPlayerById(arg1, 1)
end

function Quest4011:OnSubStart401110(arg1)
    print("OnSubStart401110")
end

function Quest4011:OnSubFinish401110(arg1)
    print("OnSubFinish401110")
end

function Quest4011:OnSubStart401109(arg1)
    print("OnSubStart401109")
    this:CreateQuestNpc(arg1, npcs.Npc13462Data.id, 0)
    actorMgr:CreateActorWithPos("Q401109Trigger", "Actor/Gadget/Q401109Trigger", 70900002, 0, {x = 4364.56, y = 348.74, z = 4528.47}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest4011:OnSubFinish401109(arg1)
    print("OnSubFinish401109")
    this:SafeDestroyQuestNpc(npcs.Npc13462Data.alias, 3)
end

return Quest4011
