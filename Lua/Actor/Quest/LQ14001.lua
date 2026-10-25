require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14001 = class("Quest14001", QuestActorProxy)
Quest14001.defaultAlias = "Quest14001"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14001:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1400101"] = self.OnSubStart1400101,
        ["1400102"] = self.OnSubStart1400102,
        ["1400103"] = self.OnSubStart1400103,
        ["1400122"] = self.OnSubStart1400122,
        ["1400104"] = self.OnSubStart1400104,
        ["1400105"] = self.OnSubStart1400105,
        ["1400106"] = self.OnSubStart1400106,
        ["1400107"] = self.OnSubStart1400107,
        ["1400108"] = self.OnSubStart1400108,
        ["1400132"] = self.OnSubStart1400132,
        ["1400134"] = self.OnSubStart1400134,
        ["1400124"] = self.OnSubStart1400124,
        ["1400125"] = self.OnSubStart1400125,
        ["1400126"] = self.OnSubStart1400126,
        ["1400127"] = self.OnSubStart1400127,
        ["1400109"] = self.OnSubStart1400109,
        ["1400111"] = self.OnSubStart1400111,
        ["1400110"] = self.OnSubStart1400110,
        ["1400133"] = self.OnSubStart1400133,
        ["1400112"] = self.OnSubStart1400112,
        ["1400123"] = self.OnSubStart1400123,
        ["1400120"] = self.OnSubStart1400120,
        ["1400113"] = self.OnSubStart1400113,
        ["1400114"] = self.OnSubStart1400114,
        ["1400115"] = self.OnSubStart1400115,
        ["1400116"] = self.OnSubStart1400116,
        ["1400128"] = self.OnSubStart1400128,
        ["1400129"] = self.OnSubStart1400129,
        ["1400130"] = self.OnSubStart1400130,
        ["1400131"] = self.OnSubStart1400131,
        ["1400117"] = self.OnSubStart1400117,
        ["1400118"] = self.OnSubStart1400118,
        ["1400121"] = self.OnSubStart1400121,
        ["1400119"] = self.OnSubStart1400119
    }
end

function Quest14001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1400101"] = self.OnSubFinish1400101,
        ["1400102"] = self.OnSubFinish1400102,
        ["1400103"] = self.OnSubFinish1400103,
        ["1400122"] = self.OnSubFinish1400122,
        ["1400104"] = self.OnSubFinish1400104,
        ["1400105"] = self.OnSubFinish1400105,
        ["1400106"] = self.OnSubFinish1400106,
        ["1400107"] = self.OnSubFinish1400107,
        ["1400108"] = self.OnSubFinish1400108,
        ["1400132"] = self.OnSubFinish1400132,
        ["1400134"] = self.OnSubFinish1400134,
        ["1400124"] = self.OnSubFinish1400124,
        ["1400125"] = self.OnSubFinish1400125,
        ["1400126"] = self.OnSubFinish1400126,
        ["1400127"] = self.OnSubFinish1400127,
        ["1400109"] = self.OnSubFinish1400109,
        ["1400111"] = self.OnSubFinish1400111,
        ["1400110"] = self.OnSubFinish1400110,
        ["1400133"] = self.OnSubFinish1400133,
        ["1400112"] = self.OnSubFinish1400112,
        ["1400123"] = self.OnSubFinish1400123,
        ["1400120"] = self.OnSubFinish1400120,
        ["1400113"] = self.OnSubFinish1400113,
        ["1400114"] = self.OnSubFinish1400114,
        ["1400115"] = self.OnSubFinish1400115,
        ["1400116"] = self.OnSubFinish1400116,
        ["1400128"] = self.OnSubFinish1400128,
        ["1400129"] = self.OnSubFinish1400129,
        ["1400130"] = self.OnSubFinish1400130,
        ["1400131"] = self.OnSubFinish1400131,
        ["1400117"] = self.OnSubFinish1400117,
        ["1400118"] = self.OnSubFinish1400118,
        ["1400121"] = self.OnSubFinish1400121,
        ["1400119"] = self.OnSubFinish1400119
    }
end

function Quest14001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14001:Start()
    print("Start")
end

function Quest14001:OnDestroy()
    print("OnDestroy")
end

function Quest14001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14001:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest14001:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest14001:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest14001:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14001:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest14001:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest14001:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest14001:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest14001:uncalldelayall()
    print("uncalldelayall")
    this:UnCallFunc(self.RandomFreeStyle)
    this:UnCallFunc(self.LoopDoFreeStyle)
    this:UnCallFunc(self.DoFreeState)
end

function Quest14001:LoopDoFreeStyle()
    print("LoopDoFreeStyle")
    if self:GetSubQuestState(1400115) == 2 then
        self:RandomFreeStyle()
        self:CallDelay(5, Quest14001.DoFreeState)
        self:CallDelay(5, Quest14001.LoopDoFreeStyle)
    end
end

function Quest14001:DoFreeState()
    print("DoFreeState")
    self:GetQuestNpcActor(npcs.Npc13388Data.alias):DoFreeStateTrigger()
end

function Quest14001:DungeonFail()
    print("DungeonFail")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 20187)
    this:SafeDestroyQuestNpc(npcs.Npc13388Data.alias, 20187)
    this:SafeDestroyQuestNpc(npcs.Npc13451Data.alias, 20187)
    this:SafeDestroyQuestNpc(npcs.Npc13452Data.alias, 20187)
    this:SafeDestroyQuestNpc(npcs.Npc13453Data.alias, 20187)
    this:SafeDestroyQuestNpc(npcs.Npc13454Data.alias, 20187)
    this:SafeDestroyQuestNpc(npcs.Npc13475Data.alias, 20187)
    actorMgr:DestroyEntityActor("Q1400109Trigger", 20187, false)
    actorMgr:DestroyEntityActor("Q1400113Trigger", 20187, false)
    actorMgr:DestroyEntityActor("Q1400120N1005Trigger", 20187, false)
    actorMgr:DestroyEntityActor("Q1400114N1005Trigger", 20187, false)
    this:uncalldelayall()
end

function Quest14001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1400110 then
        actorUtils.FinishQuestID(false, 1400110)
    elseif arg1 == 1400132 then
        actorUtils.FinishQuestID(false, 1400132)
    elseif arg1 == 1400120 then
        actorUtils.FinishQuestID(false, 1400120)
    end
end

function Quest14001:RandomFreeStyle()
    print("RandomFreeStyle")
    if self:GetSubQuestState(1400115) == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc13388Data.alias)
        local n = math.random(1, 4)
        if n == 1 then
            questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
        elseif n == 2 then
            questNpcActor:DoFreeStyle(1141, true, nil, true, true, false, false)
        elseif n == 3 then
            questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, false)
        elseif n == 4 then
            questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
        end
    end
end

function Quest14001:OnSubStart1400101(arg1)
    print("OnSubStart1400101")
    this:CreateQuestNpc(arg1, npcs.Npc13389Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13390Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13391Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14001:OnSubFinish1400101(arg1)
    print("OnSubFinish1400101")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyWithDither(npcs.Npc13389Data.alias, 3)
        this:NpcDestroyWithDither(npcs.Npc13390Data.alias, 3)
        this:NpcDestroyWithDither(npcs.Npc13391Data.alias, 3)
    end)
end

function Quest14001:OnSubStart1400102(arg1)
    print("OnSubStart1400102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1071Data.id, 1400102, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13387Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14001:OnSubFinish1400102(arg1)
    print("OnSubFinish1400102")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1071Data.alias)
end

function Quest14001:OnSubStart1400103(arg1)
    print("OnSubStart1400103")
    this:NpcCreateWithNpcTrigger(npcs.Npc13388Data.id, 1400103, 0, 15)
    this:GetQuestNpcActor(npcs.Npc13388Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14001:OnSubFinish1400103(arg1)
    print("OnSubFinish1400103")
    this:NpcDestroyWithBlackscreen(1084, npcs.Npc13388Data.alias)
end

function Quest14001:OnSubStart1400122(arg1)
    print("OnSubStart1400122")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc13440Data.id, 1400122, 0, 8)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13440Data.alias)
        questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13387Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest14001:OnSubFinish1400122(arg1)
    print("OnSubFinish1400122")
    this:SafeDestroyQuestNpc(npcs.Npc13440Data.alias, 3)
end

function Quest14001:OnSubStart1400104(arg1)
    print("OnSubStart1400104")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1071Data.id, 1400104, 0, 15, 1)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14001:OnSubFinish1400104(arg1)
    print("OnSubFinish1400104")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1071Data.alias)
end

function Quest14001:OnSubStart1400105(arg1)
    print("OnSubStart1400105")
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14001:OnSubFinish1400105(arg1)
    print("OnSubFinish1400105")
end

function Quest14001:OnSubStart1400106(arg1)
    print("OnSubStart1400106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13393Data.id, 1400106, 0, 20, 1)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14001:OnSubFinish1400106(arg1)
    print("OnSubFinish1400106")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13393Data.alias)
end

function Quest14001:OnSubStart1400107(arg1)
    print("OnSubStart1400107")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13387Data.id, 0)
        this:NpcCreateWithNpcTrigger(npcs.Npc1072Data.id, 1400107, 0, 5)
        this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    end)
end

function Quest14001:OnSubFinish1400107(arg1)
    print("OnSubFinish1400107")
end

function Quest14001:OnSubStart1400108(arg1)
    print("OnSubStart1400108")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1071Data.id, 1400108, 0, 5, 1)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13387Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    end)
end

function Quest14001:OnSubFinish1400108(arg1)
    print("OnSubFinish1400108")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
end

function Quest14001:OnSubStart1400132(arg1)
    print("OnSubStart1400132")
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
end

function Quest14001:OnSubFinish1400132(arg1)
    print("OnSubFinish1400132")
end

function Quest14001:OnSubStart1400134(arg1)
    print("OnSubStart1400134")
    this:DungeonFail()
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
end

function Quest14001:OnSubFinish1400134(arg1)
    print("OnSubFinish1400134")
    this:SafeDestroyQuestNpc(npcs.Npc13387Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
end

function Quest14001:OnSubStart1400124(arg1)
    print("OnSubStart1400124")
end

function Quest14001:OnSubFinish1400124(arg1)
    print("OnSubFinish1400124")
end

function Quest14001:OnSubStart1400125(arg1)
    print("OnSubStart1400125")
end

function Quest14001:OnSubFinish1400125(arg1)
    print("OnSubFinish1400125")
end

function Quest14001:OnSubStart1400126(arg1)
    print("OnSubStart1400126")
end

function Quest14001:OnSubFinish1400126(arg1)
    print("OnSubFinish1400126")
end

function Quest14001:OnSubStart1400127(arg1)
    print("OnSubStart1400127")
end

function Quest14001:OnSubFinish1400127(arg1)
    print("OnSubFinish1400127")
end

function Quest14001:OnSubStart1400109(arg1)
    print("OnSubStart1400109")
    actorMgr:CreateActorWithPos("Q1400109Trigger", "Actor/Gadget/Q1400109Trigger", 70900002, 0, points.TPos_Q1400109Trigger.pos, points.TPos_Q1400109Trigger.rot, true, false, 20187)
end

function Quest14001:OnSubFinish1400109(arg1)
    print("OnSubFinish1400109")
    this:ActorDestroy("Q1400109Trigger")
end

function Quest14001:OnSubStart1400111(arg1)
    print("OnSubStart1400111")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1071Data.id, 1400111, 0, 10, 1)
end

function Quest14001:OnSubFinish1400111(arg1)
    print("OnSubFinish1400111")
    this:NpcDestroyWithBlackscreen(20187, npcs.Npc1071Data.alias)
end

function Quest14001:OnSubStart1400110(arg1)
    print("OnSubStart1400110")
end

function Quest14001:OnSubFinish1400110(arg1)
    print("OnSubFinish1400110")
end

function Quest14001:OnSubStart1400133(arg1)
    print("OnSubStart1400133")
end

function Quest14001:OnSubFinish1400133(arg1)
    print("OnSubFinish1400133")
end

function Quest14001:OnSubStart1400112(arg1)
    print("OnSubStart1400112")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1071Data.id, 1400112, 0, 40, 1)
end

function Quest14001:OnSubFinish1400112(arg1)
    print("OnSubFinish1400112")
end

function Quest14001:OnSubStart1400123(arg1)
    print("OnSubStart1400123")
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1071Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14001:OnSubFinish1400123(arg1)
    print("OnSubFinish1400123")
end

function Quest14001:OnSubStart1400120(arg1)
    print("OnSubStart1400120")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13392Data.id, 1400120, 0, 25, 1)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14001:OnSubFinish1400120(arg1)
    print("OnSubFinish1400120")
    this:SafeDestroyQuestNpc(npcs.Npc13392Data.alias, 20187)
end

function Quest14001:OnSubStart1400113(arg1)
    print("OnSubStart1400113")
    this:CreateQuestNpc(arg1, npcs.Npc13451Data.id, 0)
    actorMgr:CreateActorWithPos("Q1400113Trigger", "Actor/Gadget/Q1400113Trigger", 70900002, 0, points.TPos_Q1400113Trigger.pos, points.TPos_Q1400113Trigger.rot, true, false, 20187)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14001:OnSubFinish1400113(arg1)
    print("OnSubFinish1400113")
    this:NpcDestroy(npcs.Npc13451Data.alias, 20187)
    this:ActorDestroy("Q1400113Trigger")
end

function Quest14001:OnSubStart1400114(arg1)
    print("OnSubStart1400114")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc13392Data.id, 1400114, 0, 5, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:ClearNarratorTask()
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14001:OnSubFinish1400114(arg1)
    print("OnSubFinish1400114")
    this:NpcDestroyWithBlackscreen(20187, npcs.Npc1071Data.alias)
    this:DestroyQuestNpcActor(npcs.Npc13392Data.alias, 20187)
end

function Quest14001:OnSubStart1400115(arg1)
    print("OnSubStart1400115")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13388Data.id, 0)
    this:LoopDoFreeStyle()
end

function Quest14001:OnSubFinish1400115(arg1)
    print("OnSubFinish1400115")
    this:NpcDestroyWithBlackscreen(20187, npcs.Npc13388Data.alias)
    this:uncalldelayall()
end

function Quest14001:OnSubStart1400116(arg1)
    print("OnSubStart1400116")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1071Data.id, 1400116, 0, 20, 1)
end

function Quest14001:OnSubFinish1400116(arg1)
    print("OnSubFinish1400116")
    this:NpcDestroyWithBlackscreen(20187, npcs.Npc1071Data.alias)
end

function Quest14001:OnSubStart1400128(arg1)
    print("OnSubStart1400128")
    this:CreateQuestNpc(arg1, npcs.Npc13452Data.id, 0)
end

function Quest14001:OnSubFinish1400128(arg1)
    print("OnSubFinish1400128")
    this:DestroyQuestNpcActor(npcs.Npc13452Data.alias, 20187)
end

function Quest14001:OnSubStart1400129(arg1)
    print("OnSubStart1400129")
    this:CreateQuestNpc(arg1, npcs.Npc13453Data.id, 0)
end

function Quest14001:OnSubFinish1400129(arg1)
    print("OnSubFinish1400129")
    this:DestroyQuestNpcActor(npcs.Npc13453Data.alias, 20187)
end

function Quest14001:OnSubStart1400130(arg1)
    print("OnSubStart1400130")
    this:CreateQuestNpc(arg1, npcs.Npc13454Data.id, 0)
end

function Quest14001:OnSubFinish1400130(arg1)
    print("OnSubFinish1400130")
    this:DestroyQuestNpcActor(npcs.Npc13454Data.alias, 20187)
end

function Quest14001:OnSubStart1400131(arg1)
    print("OnSubStart1400131")
    this:CreateQuestNpc(arg1, npcs.Npc13475Data.id, 0)
end

function Quest14001:OnSubFinish1400131(arg1)
    print("OnSubFinish1400131")
    this:DestroyQuestNpcActor(npcs.Npc13475Data.alias, 20187)
end

function Quest14001:OnSubStart1400117(arg1)
    print("OnSubStart1400117")
    this:CreateQuestNpc(arg1, npcs.Npc13388Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13388Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest14001:OnSubFinish1400117(arg1)
    print("OnSubFinish1400117")
    this:DestroyQuestNpcActor(npcs.Npc13388Data.alias, 3)
    actorUtils.FinishQuestID(false, 1400128)
    actorUtils.FinishQuestID(false, 1400129)
    actorUtils.FinishQuestID(false, 1400130)
    actorUtils.FinishQuestID(false, 1400131)
end

function Quest14001:OnSubStart1400118(arg1)
    print("OnSubStart1400118")
    this:CreateQuestNpcWithTriggerBlackEx("Q1400118Trigger_N13388", 1400118, npcs.Npc13388Data.id, 0, 20, 0, 1, 0.5, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13387Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
end

function Quest14001:OnSubFinish1400118(arg1)
    print("OnSubFinish1400118")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13388Data.alias)
end

function Quest14001:OnSubStart1400121(arg1)
    print("OnSubStart1400121")
    this:NpcCreateWithNpcTrigger(npcs.Npc13387Data.id, 1400121, 0, 5)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
end

function Quest14001:OnSubFinish1400121(arg1)
    print("OnSubFinish1400121")
    this:TransmitPlayerWithDialogTextByQuestId(1400121, 1, datas.DialogsId, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1072Data.alias)
end

function Quest14001:OnSubStart1400119(arg1)
    print("OnSubStart1400119")
    this:CreateQuestNpcWithTriggerBlackEx("Q1400119Trigger_N13387", 1400119, npcs.Npc13387Data.id, 0, 20, 0, 1, 0.5, 1)
end

function Quest14001:OnSubFinish1400119(arg1)
    print("OnSubFinish1400119")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13387Data.alias)
    this:NarratorOnlyTaskByData(datas.NarratorWithId04, nil, 14001)
end

return Quest14001
