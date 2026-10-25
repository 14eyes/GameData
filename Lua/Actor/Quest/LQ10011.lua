require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10011 = class("Quest10011", QuestActorProxy)
Quest10011.defaultAlias = "Quest10011"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest10011:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest10011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1001101"] = self.OnSubStart1001101,
        ["1001102"] = self.OnSubStart1001102,
        ["1001103"] = self.OnSubStart1001103,
        ["1001104"] = self.OnSubStart1001104,
        ["1001105"] = self.OnSubStart1001105,
        ["1001117"] = self.OnSubStart1001117,
        ["1001106"] = self.OnSubStart1001106,
        ["1001107"] = self.OnSubStart1001107,
        ["1001108"] = self.OnSubStart1001108,
        ["1001109"] = self.OnSubStart1001109,
        ["1001110"] = self.OnSubStart1001110,
        ["1001111"] = self.OnSubStart1001111,
        ["1001112"] = self.OnSubStart1001112,
        ["1001113"] = self.OnSubStart1001113,
        ["1001114"] = self.OnSubStart1001114,
        ["1001115"] = self.OnSubStart1001115,
        ["1001116"] = self.OnSubStart1001116
    }
end

function Quest10011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1001101"] = self.OnSubFinish1001101,
        ["1001102"] = self.OnSubFinish1001102,
        ["1001103"] = self.OnSubFinish1001103,
        ["1001104"] = self.OnSubFinish1001104,
        ["1001105"] = self.OnSubFinish1001105,
        ["1001117"] = self.OnSubFinish1001117,
        ["1001106"] = self.OnSubFinish1001106,
        ["1001107"] = self.OnSubFinish1001107,
        ["1001108"] = self.OnSubFinish1001108,
        ["1001109"] = self.OnSubFinish1001109,
        ["1001110"] = self.OnSubFinish1001110,
        ["1001111"] = self.OnSubFinish1001111,
        ["1001112"] = self.OnSubFinish1001112,
        ["1001113"] = self.OnSubFinish1001113,
        ["1001114"] = self.OnSubFinish1001114,
        ["1001115"] = self.OnSubFinish1001115,
        ["1001116"] = self.OnSubFinish1001116
    }
end

function Quest10011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1001105"] = self.OnSubFailed1001105,
        ["1001111"] = self.OnSubFailed1001111,
        ["1001114"] = self.OnSubFailed1001114,
        ["1001115"] = self.OnSubFailed1001115
    }
end

function Quest10011:Start()
    print("Start")
end

function Quest10011:OnDestroy()
    print("OnDestroy")
end

function Quest10011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10011:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1001113Trigger", nil)
    this:ActorDestroy("Q1001110Trigger", nil)
    this:ActorDestroy("Q1001106Trigger", 10011)
    this:ActorDestroy("Q1001105Trigger", nil)
    this:ActorDestroy("Q1001105Trigger_1", 10011)
    this:ActorDestroy("Q1001104Trigger", nil)
    this:ActorDestroy("Q1001116Trigger", 10011)
end

function Quest10011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        datas.Lohen_mood = 100
        self:SetupQuestLikingBar(10011, 16638, datas.Lohen_mood, false, "", "MoveHead", -0.12, -0.12, 0)
        self:ShowQuestLikingBar(10011, 16638, datas.Lohen_mood, false, "")
    elseif arg1 == 2 then
        local lohen_mood = datas.Lohen_mood - 20
        datas.Lohen_mood = lohen_mood
        self:UpdateQuestLikingBar(datas.Lohen_mood, false, "")
    elseif arg1 == 3 then
        self:SetupQuestLikingBar(10011, 1326, datas.Lohen_mood, false, "", "BillboardAttach", -0.15, 0.12, 0)
        self:ShowQuestLikingBar(10011, 1326, datas.Lohen_mood, false, "")
    elseif arg1 == 4 then
        local lohen_mood = datas.Lohen_mood - 20
        datas.Lohen_mood = lohen_mood
        self:UpdateQuestLikingBar(datas.Lohen_mood, false, "")
    elseif arg1 == 5 then
        self:SetupQuestLikingBar(10011, 16638, datas.Lohen_mood, false, "", "BillboardAttach", -0.12, 0.04, 0)
        self:ShowQuestLikingBar(10011, 16638, datas.Lohen_mood, false, "")
    elseif arg1 == 6 then
        local lohen_mood = datas.Lohen_mood - 20
        datas.Lohen_mood = lohen_mood
        self:UpdateQuestLikingBar(datas.Lohen_mood, false, "")
    elseif arg1 == 7 then
        self:SetupQuestLikingBar(10011, 1326, datas.Lohen_mood, false, "", "BillboardAttach", -0.2, 0.2, 0)
        self:ShowQuestLikingBar(10011, 1326, datas.Lohen_mood, false, "")
    elseif arg1 == 8 then
        local lohen_mood = datas.Lohen_mood - 20
        datas.Lohen_mood = lohen_mood
        self:UpdateQuestLikingBar(datas.Lohen_mood, false, "")
    elseif arg1 == 9 then
        self:SetupQuestLikingBar(10011, 1326, datas.Lohen_mood, false, "", "BillboardAttach", 0.1, 0.25, 0)
    elseif arg1 == 10 then
        self:ShowQuestLikingBar(10011, 1326, datas.Lohen_mood, false, "")
        local lohen_mood = datas.Lohen_mood - 20
        datas.Lohen_mood = lohen_mood
        self:UpdateQuestLikingBar(datas.Lohen_mood, true, "")
    elseif arg1 == 11 then
        self:HideQuestLikingBar()
    end
end

function Quest10011:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest10011:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest10011:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest10011:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest10011:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest10011:OnSubStart1001101(arg1)
    print("OnSubStart1001101")
    this:NpcCreateWithNpcTrigger(npcs.Gaia.id, 0, 20, 1001101)
    this:GetQuestNpcActor(npcs.Gaia.alias, 10011):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc1429.alias, 1, true)
    this:NotifyTo(npcs.Npc1451.alias, 1, true)
    this:NotifyTo(npcs.Npc1453.alias, 1, true)
    this:NotifyTo(npcs.Npc1525.alias, 1, true)
    this:NotifyTo(npcs.Npc1601.alias, 1, true)
    this:NotifyTo(npcs.Npc1642.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1447.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1433.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1603.id, 0, false, 0)
    this:NotifyTo(npcs.Npc1405.alias, 1, true)
end

function Quest10011:OnSubFinish1001101(arg1)
    print("OnSubFinish1001101")
    this:NpcDestroyImmediately(3, npcs.Npc1447.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1433.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1603.alias)
end

function Quest10011:OnSubStart1001102(arg1)
    print("OnSubStart1001102")
    this:CreateQuestNpc(arg1, npcs.Gaia.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Gaia.alias, 10011):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Gaia.alias, 10011):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1326.id, 0, 1001102, 9, true)
    this:NotifyTo(npcs.Npc1429.alias, 1, true)
    this:NotifyTo(npcs.Npc1451.alias, 1, true)
    this:NotifyTo(npcs.Npc1453.alias, 1, true)
    this:NotifyTo(npcs.Npc1525.alias, 1, true)
    this:NotifyTo(npcs.Npc1601.alias, 1, true)
    this:NotifyTo(npcs.Npc1642.alias, 1, true)
    this:NotifyTo(npcs.Npc1405.alias, 1, true)
end

function Quest10011:OnSubFinish1001102(arg1)
    print("OnSubFinish1001102")
    this:NpcDestroyImmediately(3, npcs.Gaia.alias)
    this:NpcDestroyImmediately(1004, npcs.Npc1326.alias)
    this:LightNotifyTo(npcs.Npc1429.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1451.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1453.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1525.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1601.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1642.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1405.alias, 0, true)
end

function Quest10011:OnSubStart1001103(arg1)
    print("OnSubStart1001103")
    this:NpcCreateWithNpcTrigger(npcs.Npc16498.id, 0, 15, 1001103)
    this:GetQuestNpcActor(npcs.Npc16498.alias, 10011):DoFreeStyle(4270, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16498.alias, 10011):DisableInteeHeadCtrl(true)
end

function Quest10011:OnSubFinish1001103(arg1)
    print("OnSubFinish1001103")
end

function Quest10011:OnSubStart1001104(arg1)
    print("OnSubStart1001104")
    this:CreateQuestNpc(arg1, npcs.Npc16498.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1001104Trigger", "Actor/Gadget/Q1001104Trigger", 70900002, 0, points._Q1001104TriggerPoint_.pos, points._Q1001104TriggerPoint_.rot, true, false, 3, nil, 0, 10011)
end

function Quest10011:OnSubFinish1001104(arg1)
    print("OnSubFinish1001104")
    this:ActorDestroy("Q1001104Trigger", nil)
end

function Quest10011:OnSubStart1001105(arg1)
    print("OnSubStart1001105")
    actorMgr:CreateActorWithPos("Q1001105Trigger", "Actor/Gadget/Q1001105Trigger", 70900002, 0, points._Q1001105TriggerPoint_.pos, points._Q1001105TriggerPoint_.rot, true, false, 20351, nil, 0, 10011)
    actorMgr:CreateActorWithPos("Q1001105Trigger_1", "Actor/Gadget/Q1001105Trigger_1", 70900002, 0, points._Q1001105Trigger_1Point_.pos, points._Q1001105Trigger_1Point_.rot, true, false, 20351, nil, 0, 10011)
end

function Quest10011:OnSubFinish1001105(arg1)
    print("OnSubFinish1001105")
    this:ActorDestroy("Q1001105Trigger", 10011)
    this:ActorDestroy("Q1001105Trigger_1", 10011)
end

function Quest10011:OnSubFailed1001105(arg1)
    print("OnSubFailed1001105")
    this:RecycleAllRes()
end

function Quest10011:OnSubStart1001117(arg1)
    print("OnSubStart1001117")
    this:ActorDestroy("Q1001104Trigger", 10011)
    actorMgr:CreateActorWithPos("Q1001106Trigger", "Actor/Gadget/Q1001106Trigger", 70900002, 0, points._Q1001106TriggerPoint_.pos, points._Q1001106TriggerPoint_.rot, true, false, 20351, nil, 0, 10011)
end

function Quest10011:OnSubFinish1001117(arg1)
    print("OnSubFinish1001117")
    this:ActorDestroy("Q1001106Trigger", 10011)
end

function Quest10011:OnSubStart1001106(arg1)
    print("OnSubStart1001106")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16498.id, 0, 1001106, 15, true)
end

function Quest10011:OnSubFinish1001106(arg1)
    print("OnSubFinish1001106")
    this:NpcDestroyImmediately(3, npcs.Npc16498.alias)
end

function Quest10011:OnSubStart1001107(arg1)
    print("OnSubStart1001107")
    this:NpcCreateWithNpcTrigger(npcs.Npc1788.id, 0, 18, 1001107)
    this:GetQuestNpcActor(npcs.Npc1788.alias, 10011):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1774.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1773.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1773.alias, 10011):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16617.id, 0, false, 0)
    this:HideQuestLikingBar()
end

function Quest10011:OnSubFinish1001107(arg1)
    print("OnSubFinish1001107")
    this:NpcDestroyImmediately(3, npcs.Npc1788.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1774.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1773.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16617.alias)
end

function Quest10011:OnSubStart1001108(arg1)
    print("OnSubStart1001108")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001108, 0, 20, 1, npcs.Npc1326.id)
end

function Quest10011:OnSubFinish1001108(arg1)
    print("OnSubFinish1001108")
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1001108, nil, nil, nil)
end

function Quest10011:OnSubStart1001109(arg1)
    print("OnSubStart1001109")
    this:NpcCreateWithNpcTrigger(npcs.Npc1019.id, 0, 15, 1001109)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 10011):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest10011:OnSubFinish1001109(arg1)
    print("OnSubFinish1001109")
    this:NpcDestroyImmediately(3, npcs.Npc1019.alias)
end

function Quest10011:OnSubStart1001110(arg1)
    print("OnSubStart1001110")
    actorMgr:CreateActorWithPos("Q1001110Trigger", "Actor/Gadget/Q1001110Trigger", 70900002, 0, points._Q1001110TriggerPoint_.pos, points._Q1001110TriggerPoint_.rot, true, false, 3, nil, 0, 10011)
end

function Quest10011:OnSubFinish1001110(arg1)
    print("OnSubFinish1001110")
    this:ActorDestroy("Q1001110Trigger", 10011)
end

function Quest10011:OnSubStart1001111(arg1)
    print("OnSubStart1001111")
    actorUtils.ShowReminder(1004570000)
end

function Quest10011:OnSubFinish1001111(arg1)
    print("OnSubFinish1001111")
end

function Quest10011:OnSubFailed1001111(arg1)
    print("OnSubFailed1001111")
    this:RecycleAllRes()
end

function Quest10011:OnSubStart1001112(arg1)
    print("OnSubStart1001112")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001112, 0, 40, 1, npcs.Npc1326.id)
end

function Quest10011:OnSubFinish1001112(arg1)
    print("OnSubFinish1001112")
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
end

function Quest10011:OnSubStart1001113(arg1)
    print("OnSubStart1001113")
    actorMgr:CreateActorWithPos("Q1001113Trigger", "Actor/Gadget/Q1001113Trigger", 70900002, 0, points._Q1001113TriggerPoint_.pos, points._Q1001113TriggerPoint_.rot, true, false, 3, nil, 0, 10011)
end

function Quest10011:OnSubFinish1001113(arg1)
    print("OnSubFinish1001113")
    this:ActorDestroy("Q1001113Trigger", 10011)
end

function Quest10011:OnSubStart1001114(arg1)
    print("OnSubStart1001114")
end

function Quest10011:OnSubFinish1001114(arg1)
    print("OnSubFinish1001114")
end

function Quest10011:OnSubFailed1001114(arg1)
    print("OnSubFailed1001114")
    this:RecycleAllRes()
end

function Quest10011:OnSubStart1001115(arg1)
    print("OnSubStart1001115")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001115, 0, 100, 1, npcs.Npc1326.id)
end

function Quest10011:OnSubFinish1001115(arg1)
    print("OnSubFinish1001115")
    this:NpcDestroyImmediately(20362, npcs.Npc1326.alias)
end

function Quest10011:OnSubFailed1001115(arg1)
    print("OnSubFailed1001115")
    this:RecycleAllRes()
end

function Quest10011:OnSubStart1001116(arg1)
    print("OnSubStart1001116")
    actorMgr:CreateActorWithPos("Q1001116Trigger", "Actor/Gadget/Q1001116Trigger", 70900002, 0, points._Q1001116TriggerPoint_.pos, points._Q1001116TriggerPoint_.rot, true, false, 20362, nil, 0, 10011)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1326.id, 0, 1001116, 20, true)
end

function Quest10011:OnSubFinish1001116(arg1)
    print("OnSubFinish1001116")
    this:ActorDestroy("Q1001116Trigger", 10011)
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
end

return Quest10011
