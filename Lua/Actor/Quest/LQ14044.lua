require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14044 = class("Quest14044", QuestActorProxy)
Quest14044.defaultAlias = "Quest14044"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14044:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1404401"] = self.OnSubStart1404401,
        ["1404402"] = self.OnSubStart1404402,
        ["1404403"] = self.OnSubStart1404403,
        ["1404419"] = self.OnSubStart1404419,
        ["1404404"] = self.OnSubStart1404404,
        ["1404405"] = self.OnSubStart1404405,
        ["1404421"] = self.OnSubStart1404421,
        ["1404407"] = self.OnSubStart1404407,
        ["1404422"] = self.OnSubStart1404422,
        ["1404406"] = self.OnSubStart1404406,
        ["1404408"] = self.OnSubStart1404408,
        ["1404409"] = self.OnSubStart1404409,
        ["1404420"] = self.OnSubStart1404420,
        ["1404414"] = self.OnSubStart1404414,
        ["1404415"] = self.OnSubStart1404415,
        ["1404410"] = self.OnSubStart1404410,
        ["1404417"] = self.OnSubStart1404417,
        ["1404418"] = self.OnSubStart1404418,
        ["1404411"] = self.OnSubStart1404411,
        ["1404412"] = self.OnSubStart1404412,
        ["1404423"] = self.OnSubStart1404423,
        ["1404413"] = self.OnSubStart1404413,
        ["1404416"] = self.OnSubStart1404416
    }
end

function Quest14044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1404401"] = self.OnSubFinish1404401,
        ["1404402"] = self.OnSubFinish1404402,
        ["1404403"] = self.OnSubFinish1404403,
        ["1404419"] = self.OnSubFinish1404419,
        ["1404404"] = self.OnSubFinish1404404,
        ["1404405"] = self.OnSubFinish1404405,
        ["1404421"] = self.OnSubFinish1404421,
        ["1404407"] = self.OnSubFinish1404407,
        ["1404422"] = self.OnSubFinish1404422,
        ["1404406"] = self.OnSubFinish1404406,
        ["1404408"] = self.OnSubFinish1404408,
        ["1404409"] = self.OnSubFinish1404409,
        ["1404420"] = self.OnSubFinish1404420,
        ["1404414"] = self.OnSubFinish1404414,
        ["1404415"] = self.OnSubFinish1404415,
        ["1404410"] = self.OnSubFinish1404410,
        ["1404417"] = self.OnSubFinish1404417,
        ["1404418"] = self.OnSubFinish1404418,
        ["1404411"] = self.OnSubFinish1404411,
        ["1404412"] = self.OnSubFinish1404412,
        ["1404423"] = self.OnSubFinish1404423,
        ["1404413"] = self.OnSubFinish1404413,
        ["1404416"] = self.OnSubFinish1404416
    }
end

function Quest14044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1404405"] = self.OnSubFailed1404405,
        ["1404421"] = self.OnSubFailed1404421,
        ["1404410"] = self.OnSubFailed1404410
    }
end

function Quest14044:Start()
    print("Start")
end

function Quest14044:OnDestroy()
    print("OnDestroy")
end

function Quest14044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14044:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1404401Trigger_Finish")
    this:ActorDestroy("Q1404405Trigger_1")
    this:ActorDestroy("Q1404403Trigger")
    this:ActorDestroy("Q1404403Trigger_1")
    this:ActorDestroy("Q1404401Trigger_Narrative")
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, true)
    this:BanCrowdNpc(1084, 2, datas.InstanceIDList, false, true)
    this:BanCrowdNpc(3401, 11, 110025, false, true)
    this:BanCrowdNpc(3401, 5, 50009, false, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n4 = 3401
    local n5 = 17
    local tbl2 = {}
    local n6 = 170002
    tbl2[1] = 170001
    tbl2[2] = n6
    func(v4, n4, n5, tbl2, false, true)
end

function Quest14044:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 140441901 then
        actorUtils.FinishQuestID(false, 1404419)
    elseif arg1 == 140442201 then
        actorUtils.FinishQuestID(false, 1404422)
    end
end

function Quest14044:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest14044:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest14044:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest14044:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest14044:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest14044:OnSubStart1404401(arg1)
    print("OnSubStart1404401")
    this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14044):DoFreeStyle(8013, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1404401Trigger_Finish", "Actor/Gadget/Q1404401Trigger_Finish", 70900002, 0, points._Q1404401Trigger_FinishPoint_.pos, points._Q1404401Trigger_FinishPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1404401Trigger_Narrative", "Actor/Gadget/Q1404401Trigger_Narrative", 70900002, 0, points._Q1404401Trigger_NarrativePoint_.pos, points._Q1404401Trigger_NarrativePoint_.rot, true, false, 3)
end

function Quest14044:OnSubFinish1404401(arg1)
    print("OnSubFinish1404401")
    this:ActorDestroy("Q1404401Trigger_Finish")
    this:ActorDestroy("Q1404401Trigger_Narrative")
end

function Quest14044:OnSubStart1404402(arg1)
    print("OnSubStart1404402")
    this:DailyNpcSafeHideSelf(npcs.Npc5050.alias, true, 1)
    this:RequestInteraction(npcs.Npc1075.alias, "", true)
    this:BanCrowdNpc(3401, 5, 50009, true, true)
    this:ClearNarratorTask()
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 17
    local tbl = {}
    local n3 = 170002
    tbl[1] = 170001
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404402(arg1)
    print("OnSubFinish1404402")
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 3)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 17
    local tbl = {}
    local n3 = 170002
    tbl[1] = 170001
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, nil)
    this:ActionSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:QuestNarratorTask(datas.NarratorWithId_1404402, nil)
    end)
end

function Quest14044:OnSubStart1404403(arg1)
    print("OnSubStart1404403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1308.id, 0, 1404403, 60, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    this:LightNotifyTo(npcs.Npc5050.alias, 0, true)
    actorMgr:CreateActorWithPos("Q1404403Trigger_1", "Actor/Gadget/Q1404403Trigger_1", 70900002, 0, points._Q1404403Trigger_1Point_.pos, points._Q1404403Trigger_1Point_.rot, true, false, 1084)
    this:BanCrowdNpc(3401, 5, 50009, false, nil)
    this:BanCrowdNpc(3401, 11, 110025, true, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404403(arg1)
    print("OnSubFinish1404403")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 3)
    this:ClearNarratorTask()
    this:ActorDestroy("Q1404403Trigger_1")
end

function Quest14044:OnSubStart1404419(arg1)
    print("OnSubStart1404419")
end

function Quest14044:OnSubFinish1404419(arg1)
    print("OnSubFinish1404419")
    this:DailyNpcSafeHideSelf(npcs.Npc5071.alias, true, 1)
end

function Quest14044:OnSubStart1404404(arg1)
    print("OnSubStart1404404")
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    this:LightNotifyTo(npcs.Npc5071.alias, 0, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
    this:BanCrowdNpc(3401, 11, 110025, true, true)
end

function Quest14044:OnSubFinish1404404(arg1)
    print("OnSubFinish1404404")
    this:BanCrowdNpc(3401, 11, 110025, false, nil)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false, nil)
end

function Quest14044:OnSubStart1404405(arg1)
    print("OnSubStart1404405")
    this:DailyNpcSafeHideSelf(npcs.Npc5095.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5089.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5093.alias, true, 1)
    this:LightNotifyTo(npcs.Npc5064.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5068.alias, 0, true)
    this:BanCrowdNpc(1084, 2, datas.InstanceIDList, true, true)
    this:CallDelayByQuest("1", 1, function(arg1)
        this:DeployStoryByQuest(121404405)
        actorMgr:CreateActorWithPos("Q1404405Trigger_1", "Actor/Gadget/Q1404405Trigger_1", 70900002, 0, points._Q1404405Trigger_1Point_.pos, points._Q1404405Trigger_1Point_.rot, true, false, 1084)
    end)
end

function Quest14044:OnSubFinish1404405(arg1)
    print("OnSubFinish1404405")
    this:CancelStoryByQuest(121404405)
end

function Quest14044:OnSubFailed1404405(arg1)
    print("OnSubFailed1404405")
    this:CancelStoryByQuest(121404405)
    this:ClearNarratorTask()
    this:ActorDestroy("Q1404405Trigger_1")
    this:BanCrowdNpc(1084, 2, datas.InstanceIDList, false, nil)
    this:LightNotifyTo(npcs.Npc5095.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5089.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5093.alias, 0, true)
end

function Quest14044:OnSubStart1404421(arg1)
    print("OnSubStart1404421")
    this:DailyNpcSafeHideSelf(npcs.Npc5089.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5095.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5093.alias, true, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1308.id, 0, 1404421, 30, false)
    this:ClearNarratorTask()
    this:BanCrowdNpc(1084, 2, datas.InstanceIDList, true, true)
end

function Quest14044:OnSubFinish1404421(arg1)
    print("OnSubFinish1404421")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 1084)
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1404406, nil)
    end)
end

function Quest14044:OnSubFailed1404421(arg1)
    print("OnSubFailed1404421")
    this:ClearNarratorTask()
end

function Quest14044:OnSubStart1404407(arg1)
    print("OnSubStart1404407")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1404407, 0, 5, 1, npcs.Npc1308.id)
    this:CreateQuestNpc(arg1, npcs.Npc5092.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5089.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5095.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5093.alias, true, 1)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
    this:BanCrowdNpc(1084, 2, datas.InstanceIDList, true, true)
    this:BanCrowdNpc(3401, 11, 110024, true, true)
    local v3 = this
    local v4 = v3
    local func = v3.BanCrowdNpc
    local n4 = 3401
    local n5 = 11
    local tbl2 = {}
    local n6 = 110021
    tbl2[1] = 110005
    tbl2[2] = n6
    func(v4, n4, n5, tbl2, true, true)
end

function Quest14044:OnSubFinish1404407(arg1)
    print("OnSubFinish1404407")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5092.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc5089.alias, 1084)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2207, nil)
        this:ClearNarratorTask()
        this:QuestNarratorTask(datas.NarratorWithId_1404407, nil)
        this:BanCrowdNpc(1084, 2, datas.InstanceIDList, false)
        this:BanCrowdNpc(3401, 11, 110024, false)
        local v = this
        local v2 = v
        local banCrowdNpc = v.BanCrowdNpc
        local n = 3401
        local n2 = 11
        local tbl = {}
        local n3 = 110021
        tbl[1] = 110005
        tbl[2] = n3
        banCrowdNpc(v2, n, n2, tbl, false)
    end)
end

function Quest14044:OnSubStart1404422(arg1)
    print("OnSubStart1404422")
end

function Quest14044:OnSubFinish1404422(arg1)
    print("OnSubFinish1404422")
end

function Quest14044:OnSubStart1404406(arg1)
    print("OnSubStart1404406")
end

function Quest14044:OnSubFinish1404406(arg1)
    print("OnSubFinish1404406")
end

function Quest14044:OnSubStart1404408(arg1)
    print("OnSubStart1404408")
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    this:LightNotifyTo(npcs.Npc5095.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5093.alias, 0, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404408(arg1)
    print("OnSubFinish1404408")
end

function Quest14044:OnSubStart1404409(arg1)
    print("OnSubStart1404409")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1404409, 0, 15, 0, npcs.Npc1308.id)
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404409(arg1)
    print("OnSubFinish1404409")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2208, nil)
        this:ClearNarratorTask()
        this:QuestNarratorTask(datas.NarratorWithId_1404408, nil)
    end)
end

function Quest14044:OnSubStart1404420(arg1)
    print("OnSubStart1404420")
end

function Quest14044:OnSubFinish1404420(arg1)
    print("OnSubFinish1404420")
end

function Quest14044:OnSubStart1404414(arg1)
    print("OnSubStart1404414")
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404414(arg1)
    print("OnSubFinish1404414")
end

function Quest14044:OnSubStart1404415(arg1)
    print("OnSubStart1404415")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1404415, 0, 15, 0, npcs.Npc1308.id)
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404415(arg1)
    print("OnSubFinish1404415")
    this:SafeDestroyQuestNpc(npcs.Npc1308.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2209, nil)
        this:ClearNarratorTask()
        this:QuestNarratorTask(datas.NarratorWithId_1404409, nil)
    end)
end

function Quest14044:OnSubStart1404410(arg1)
    print("OnSubStart1404410")
    this:CreateQuestNpc(arg1, npcs.Npc15257.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404410(arg1)
    print("OnSubFinish1404410")
    this:SafeDestroyQuestNpc(npcs.Npc15257.alias, 3)
end

function Quest14044:OnSubFailed1404410(arg1)
    print("OnSubFailed1404410")
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1404410_Flavor_Failed, nil)
    end)
end

function Quest14044:OnSubStart1404417(arg1)
    print("OnSubStart1404417")
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
end

function Quest14044:OnSubFinish1404417(arg1)
    print("OnSubFinish1404417")
end

function Quest14044:OnSubStart1404418(arg1)
    print("OnSubStart1404418")
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
end

function Quest14044:OnSubFinish1404418(arg1)
    print("OnSubFinish1404418")
end

function Quest14044:OnSubStart1404411(arg1)
    print("OnSubStart1404411")
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(1404411, 0, 10, 0, npcs.Npc1308.id)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404411(arg1)
    print("OnSubFinish1404411")
    this:ClearNarratorTask()
end

function Quest14044:OnSubStart1404412(arg1)
    print("OnSubStart1404412")
    this:CreateQuestNpc(arg1, npcs.Npc1308.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404412(arg1)
    print("OnSubFinish1404412")
end

function Quest14044:OnSubStart1404423(arg1)
    print("OnSubStart1404423")
    actorUtils.FinishQuestID(false, 1404423)
end

function Quest14044:OnSubFinish1404423(arg1)
    print("OnSubFinish1404423")
end

function Quest14044:OnSubStart1404413(arg1)
    print("OnSubStart1404413")
    this:DailyNpcSafeHideSelf(npcs.Npc5071.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest14044:OnSubFinish1404413(arg1)
    print("OnSubFinish1404413")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1404411, nil)
    end)
end

function Quest14044:OnSubStart1404416(arg1)
    print("OnSubStart1404416")
    this:CreateQuestNpc(arg1, npcs.Npc1308.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14044):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14044):SitOnChair(8061, true)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14044):DoFreeStyle(8061, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15202.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15202.alias, 14044):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc15202.alias, 14044):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15203.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15203.alias, 14044):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc15203.alias, 14044):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5071.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5072.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5064.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14044):SitOnChair(8061, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 3401
    local n2 = 26
    local tbl = {}
    local n3 = 260001
    tbl[1] = 260002
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true, true)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14044):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15202.alias, 14044):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15203.alias, 14044):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14044):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc1308.alias, 14044):DisableInteeHeadCtrl(true)
end

function Quest14044:OnSubFinish1404416(arg1)
    print("OnSubFinish1404416")
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15202.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15203.alias, 3)
end

return Quest14044
