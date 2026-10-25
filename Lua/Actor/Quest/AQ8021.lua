require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8021 = class("Quest8021", QuestActorProxy)
Quest8021.defaultAlias = "Quest8021"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest8021:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest8021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["802106"] = self.OnSubStart802106,
        ["802107"] = self.OnSubStart802107,
        ["802108"] = self.OnSubStart802108,
        ["802109"] = self.OnSubStart802109,
        ["802110"] = self.OnSubStart802110,
        ["802111"] = self.OnSubStart802111,
        ["802112"] = self.OnSubStart802112,
        ["802113"] = self.OnSubStart802113,
        ["802101"] = self.OnSubStart802101,
        ["802115"] = self.OnSubStart802115,
        ["802102"] = self.OnSubStart802102,
        ["802103"] = self.OnSubStart802103,
        ["802104"] = self.OnSubStart802104,
        ["802105"] = self.OnSubStart802105,
        ["802114"] = self.OnSubStart802114,
        ["802116"] = self.OnSubStart802116,
        ["802117"] = self.OnSubStart802117
    }
end

function Quest8021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["802106"] = self.OnSubFinish802106,
        ["802107"] = self.OnSubFinish802107,
        ["802108"] = self.OnSubFinish802108,
        ["802109"] = self.OnSubFinish802109,
        ["802110"] = self.OnSubFinish802110,
        ["802111"] = self.OnSubFinish802111,
        ["802112"] = self.OnSubFinish802112,
        ["802113"] = self.OnSubFinish802113,
        ["802101"] = self.OnSubFinish802101,
        ["802115"] = self.OnSubFinish802115,
        ["802102"] = self.OnSubFinish802102,
        ["802103"] = self.OnSubFinish802103,
        ["802104"] = self.OnSubFinish802104,
        ["802105"] = self.OnSubFinish802105,
        ["802114"] = self.OnSubFinish802114,
        ["802116"] = self.OnSubFinish802116,
        ["802117"] = self.OnSubFinish802117
    }
end

function Quest8021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["802106"] = self.OnSubFailed802106,
        ["802107"] = self.OnSubFailed802107,
        ["802108"] = self.OnSubFailed802108,
        ["802109"] = self.OnSubFailed802109,
        ["802110"] = self.OnSubFailed802110,
        ["802111"] = self.OnSubFailed802111,
        ["802112"] = self.OnSubFailed802112,
        ["802113"] = self.OnSubFailed802113,
        ["802101"] = self.OnSubFailed802101,
        ["802115"] = self.OnSubFailed802115,
        ["802102"] = self.OnSubFailed802102,
        ["802103"] = self.OnSubFailed802103,
        ["802104"] = self.OnSubFailed802104,
        ["802105"] = self.OnSubFailed802105,
        ["802114"] = self.OnSubFailed802114,
        ["802116"] = self.OnSubFailed802116,
        ["802117"] = self.OnSubFailed802117
    }
end

function Quest8021:Start()
    print("Start")
end

function Quest8021:OnDestroy()
    print("OnDestroy")
end

function Quest8021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8021:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:DestroyQuestNpcActor(npcs.Npc14181.alias, 20226)
    elseif arg1 == 2 then
        self:SafeDestroyQuestNpc(npcs.Npc14314.alias, 20224)
    end
end

function Quest8021:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest8021:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest8021:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest8021:ButterFlyMove(arg1)
    local n = 3.5
    local tbl = {}
    local v = arg1
    for i = 1, #v - 1 do
        local dist = M.Dist(v[i], v[i + 1])
        print("\231\172\172" .. i .. "\230\174\181\231\154\132\232\183\157\231\166\187\230\152\175" .. dist)
        local n2 = dist / n
        local time = math.floor(n2 * 100) / 100
        print("\231\172\172" .. i .. "\230\174\181\231\154\132\232\183\157\231\166\187\230\151\182\233\151\180\230\152\175" .. time)
        if i == 1 then
            table.insert(tbl, {time = time, targetPos = v[i + 1], blendType = TweenEaseType.EaseInQuad})
        else
            if i ~= #v - 1 then
                table.insert(tbl, {time = time, targetPos = v[i + 1], blendType = TweenEaseType.Linear})
            else
                table.insert(tbl, {time = time, targetPos = v[i + 1], blendType = TweenEaseType.EaseOutQuad})
            end
        end
    end

    self:CreateLocalGadget(71700755, "1", v[1], {x = 0, y = 0, z = 0}, 20224, nil, nil, true, 0, true)
    self:CallDelay(0.2, function()
        this:SetLocalGadgetAction(71700755, "1", tbl)
    end)
end

function Quest8021:QQPerformance()
    self:GetQuestNpcActor(npcs.Npc14124.alias, 8021):DoFreeStyle(6, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc14125.alias, 8021):DoFreeStyle(7, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc14126.alias, 8021):DoFreeStyle(7, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc14127.alias, 8021):DoFreeStyle(7, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc14128.alias, 8021):DoFreeStyle(5, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc14129.alias, 8021):DoFreeStyle(6, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc14130.alias, 8021):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest8021:Dungeon2FailDo()
    self:ActorDestroy("Q802104N1025Trigger")
    self:ActorDestroy("Q802104N1026Trigger")
    self:ActorDestroy("Q802102N14181Trigger")
    self:ActorDestroy("Q802101Trigger1")
    this:DestroyQuestNpcActor(npcs.Npc1025.alias, 20226)
    this:DestroyQuestNpcActor(npcs.Npc1026.alias, 20226)
end

function Quest8021:OnSubStart802106(arg1)
    print("OnSubStart802106")
    actorMgr:CreateActorWithPos("Q802106_Trigger1", "Actor/Gadget/Q802106_Trigger1", 70900002, 0, points.Q802106_Trigger1.pos, points.Q802106_Trigger1.rot, true, false, 20224)
end

function Quest8021:OnSubFinish802106(arg1)
    print("OnSubFinish802106")
end

function Quest8021:OnSubFailed802106(arg1)
    print("OnSubFailed802106")
end

function Quest8021:OnSubStart802107(arg1)
    print("OnSubStart802107")
    this:NpcCreateWithNpcTrigger(npcs.Npc14124.id, 802107, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Npc14125.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14126.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14127.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14128.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14129.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14130.id, 0, false, 0)
    this:ButterFlyMove(datas.ButterFlyData1)
    this:QQPerformance()
end

function Quest8021:OnSubFinish802107(arg1)
    print("OnSubFinish802107")
end

function Quest8021:OnSubFailed802107(arg1)
    print("OnSubFailed802107")
end

function Quest8021:OnSubStart802108(arg1)
    print("OnSubStart802108")
    this:NpcCreateWithNpcTrigger(npcs.Npc14127.id, 802108, 0, 15)
    this:ButterFlyMove(datas.ButterFlyData2)
    this:QQPerformance()
end

function Quest8021:OnSubFinish802108(arg1)
    print("OnSubFinish802108")
end

function Quest8021:OnSubFailed802108(arg1)
    print("OnSubFailed802108")
end

function Quest8021:OnSubStart802109(arg1)
    print("OnSubStart802109")
    this:NpcCreateWithNpcTrigger(npcs.Npc14129.id, 802109, 0, 15)
    this:ButterFlyMove(datas.ButterFlyData3)
    this:QQPerformance()
end

function Quest8021:OnSubFinish802109(arg1)
    print("OnSubFinish802109")
    this:ButterFlyMove(datas.ButterFlyData4)
end

function Quest8021:OnSubFailed802109(arg1)
    print("OnSubFailed802109")
end

function Quest8021:OnSubStart802110(arg1)
    print("OnSubStart802110")
    this:CreateQuestNpc(arg1, npcs.Npc14313.id, 0, false, 0)
    this:QQPerformance()
end

function Quest8021:OnSubFinish802110(arg1)
    print("OnSubFinish802110")
    this:SafeDestroyQuestNpc(npcs.Npc14128.alias, 20224)
end

function Quest8021:OnSubFailed802110(arg1)
    print("OnSubFailed802110")
end

function Quest8021:OnSubStart802111(arg1)
    print("OnSubStart802111")
    this:CreateQuestNpc(arg1, npcs.Npc14314.id, 0, false, 0)
    this:QQPerformance()
end

function Quest8021:OnSubFinish802111(arg1)
    print("OnSubFinish802111")
    this:SafeDestroyQuestNpc(npcs.Npc14314.alias, 20224)
end

function Quest8021:OnSubFailed802111(arg1)
    print("OnSubFailed802111")
end

function Quest8021:OnSubStart802112(arg1)
    print("OnSubStart802112")
    this:QQPerformance()
end

function Quest8021:OnSubFinish802112(arg1)
    print("OnSubFinish802112")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20224)
    this:SafeDestroyQuestNpc(npcs.Npc14314.alias, 20224)
end

function Quest8021:OnSubFailed802112(arg1)
    print("OnSubFailed802112")
end

function Quest8021:OnSubStart802113(arg1)
    print("OnSubStart802113")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14074.id, 0, false, 0)
        this:NpcCreateWithNpcTrigger(npcs.Npc14075.id, 802113, 0, 10)
        this:QQPerformance()
    end)
end

function Quest8021:OnSubFinish802113(arg1)
    print("OnSubFinish802113")
    this:SafeDestroyQuestNpc(npcs.Npc14074.alias, 20224)
    this:SafeDestroyQuestNpc(npcs.Npc14075.alias, 20224)
    this:SafeDestroyQuestNpc(npcs.Npc14313.alias, 20224)
    this:SafeDestroyQuestNpc(npcs.Npc14124.alias, 20224)
    this:SafeDestroyQuestNpc(npcs.Npc14125.alias, 20224)
    this:SafeDestroyQuestNpc(npcs.Npc14126.alias, 20224)
    this:SafeDestroyQuestNpc(npcs.Npc14127.alias, 20224)
    this:SafeDestroyQuestNpc(npcs.Npc14128.alias, 20224)
    this:SafeDestroyQuestNpc(npcs.Npc14130.alias, 20224)
    this:ActionSafeCall(function(arg1)
        this:PlayerEnterDungeonWithData(1290, 1212, 802113, 0, datas.DungeonUI, nil, nil)
    end)
end

function Quest8021:OnSubFailed802113(arg1)
    print("OnSubFailed802113")
end

function Quest8021:OnSubStart802101(arg1)
    print("OnSubStart802101")
    this:DisableMainPageWithConfigByQuest(false, "DisableTorrentMainQuest")
    actorMgr:CreateActorWithPos("Q802101Trigger1", "Actor/Gadget/Q802101Trigger1", 70900002, 0, points.Q802101Trigger1.pos, points.Q802101Trigger1.rot, true, false, 20226)
end

function Quest8021:OnSubFinish802101(arg1)
    print("OnSubFinish802101")
    this:ActorDestroy("Q802101Trigger1")
end

function Quest8021:OnSubFailed802101(arg1)
    print("OnSubFailed802101")
end

function Quest8021:OnSubStart802115(arg1)
    print("OnSubStart802115")
end

function Quest8021:OnSubFinish802115(arg1)
    print("OnSubFinish802115")
    globalActor:PlayerEnterDungeon(1290, 1212, true, nil, 1)
end

function Quest8021:OnSubFailed802115(arg1)
    print("OnSubFailed802115")
end

function Quest8021:OnSubStart802102(arg1)
    print("OnSubStart802102")
    this:CreateQuestNpc(arg1, npcs.Npc14075.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14075.alias, 8021):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc14181.id, 0, 802102, 50, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
end

function Quest8021:OnSubFinish802102(arg1)
    print("OnSubFinish802102")
    this:SafeDestroyQuestNpc(npcs.Npc14075.alias, 20226)
    this:SafeDestroyQuestNpc(npcs.Npc14181.alias, 20226)
    this:ActorDestroy("Q802102N14181Trigger")
end

function Quest8021:OnSubFailed802102(arg1)
    print("OnSubFailed802102")
    this:Dungeon2FailDo()
end

function Quest8021:OnSubStart802103(arg1)
    print("OnSubStart802103")
    this:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(80210901, function(arg1)
            actorUtils.FinishQuestID(false, 802103)
        end, nil, nil, false)
    end)
end

function Quest8021:OnSubFinish802103(arg1)
    print("OnSubFinish802103")
end

function Quest8021:OnSubFailed802103(arg1)
    print("OnSubFailed802103")
    this:Dungeon2FailDo()
end

function Quest8021:OnSubStart802104(arg1)
    print("OnSubStart802104")
    if actorUtils.IsMalePlayer() then
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1026.id, 0, 802104, 50, true)
    else
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1025.id, 0, 802104, 50, true)
    end

    this:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
end

function Quest8021:OnSubFinish802104(arg1)
    print("OnSubFinish802104")
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 20226)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 20226)
    this:ActionSafeCall(function(arg1_2)
        this:DisableMainPageWithConfigByQuest(false, "DisableTorrentMainQuest")
        this:TransmitPlayerWithTextById(arg1, 1, datas.Emptytextmap, 1, nil, nil, nil)
    end)
end

function Quest8021:OnSubFailed802104(arg1)
    print("OnSubFailed802104")
    this:Dungeon2FailDo()
end

function Quest8021:OnSubStart802105(arg1)
    print("OnSubStart802105")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc4329.id, 0, 802105, 10, true)
end

function Quest8021:OnSubFinish802105(arg1)
    print("OnSubFinish802105")
    this:SafeDestroyQuestNpc(npcs.Npc4329.alias, 3)
end

function Quest8021:OnSubFailed802105(arg1)
    print("OnSubFailed802105")
end

function Quest8021:OnSubStart802114(arg1)
    print("OnSubStart802114")
    this:NpcCreateWithNpcTrigger(npcs.Npc14074.id, 802114, 0, 10)
    this:GetQuestNpcActor(npcs.Npc14074.alias, 8021):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest8021:OnSubFinish802114(arg1)
    print("OnSubFinish802114")
    this:SafeDestroyQuestNpc(npcs.Npc14074.alias, 3)
end

function Quest8021:OnSubFailed802114(arg1)
    print("OnSubFailed802114")
end

function Quest8021:OnSubStart802116(arg1)
    print("OnSubStart802116")
    actorUtils.FinishQuestID(false, 802116)
end

function Quest8021:OnSubFinish802116(arg1)
    print("OnSubFinish802116")
end

function Quest8021:OnSubFailed802116(arg1)
    print("OnSubFailed802116")
end

function Quest8021:OnSubStart802117(arg1)
    print("OnSubStart802117")
    actorUtils.FinishQuestID(false, 802117)
end

function Quest8021:OnSubFinish802117(arg1)
    print("OnSubFinish802117")
end

function Quest8021:OnSubFailed802117(arg1)
    print("OnSubFailed802117")
end

return Quest8021
