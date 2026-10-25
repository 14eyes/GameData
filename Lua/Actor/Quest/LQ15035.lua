require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15035 = class("Quest15035", QuestActorProxy)
Quest15035.defaultAlias = "Quest15035"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15035:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503501"] = self.OnSubStart1503501,
        ["1503502"] = self.OnSubStart1503502,
        ["1503503"] = self.OnSubStart1503503,
        ["1503530"] = self.OnSubStart1503530,
        ["1503504"] = self.OnSubStart1503504,
        ["1503531"] = self.OnSubStart1503531,
        ["1503505"] = self.OnSubStart1503505,
        ["1503532"] = self.OnSubStart1503532,
        ["1503506"] = self.OnSubStart1503506,
        ["1503533"] = self.OnSubStart1503533,
        ["1503507"] = self.OnSubStart1503507,
        ["1503534"] = self.OnSubStart1503534,
        ["1503508"] = self.OnSubStart1503508,
        ["1503509"] = self.OnSubStart1503509,
        ["1503510"] = self.OnSubStart1503510,
        ["1503511"] = self.OnSubStart1503511,
        ["1503529"] = self.OnSubStart1503529,
        ["1503512"] = self.OnSubStart1503512,
        ["1503513"] = self.OnSubStart1503513,
        ["1503514"] = self.OnSubStart1503514,
        ["1503535"] = self.OnSubStart1503535,
        ["1503515"] = self.OnSubStart1503515,
        ["1503536"] = self.OnSubStart1503536,
        ["1503516"] = self.OnSubStart1503516,
        ["1503537"] = self.OnSubStart1503537,
        ["1503517"] = self.OnSubStart1503517,
        ["1503518"] = self.OnSubStart1503518,
        ["1503519"] = self.OnSubStart1503519,
        ["1503520"] = self.OnSubStart1503520,
        ["1503521"] = self.OnSubStart1503521,
        ["1503522"] = self.OnSubStart1503522,
        ["1503523"] = self.OnSubStart1503523,
        ["1503524"] = self.OnSubStart1503524,
        ["1503525"] = self.OnSubStart1503525,
        ["1503526"] = self.OnSubStart1503526,
        ["1503527"] = self.OnSubStart1503527,
        ["1503528"] = self.OnSubStart1503528
    }
end

function Quest15035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503501"] = self.OnSubFinish1503501,
        ["1503502"] = self.OnSubFinish1503502,
        ["1503503"] = self.OnSubFinish1503503,
        ["1503530"] = self.OnSubFinish1503530,
        ["1503504"] = self.OnSubFinish1503504,
        ["1503531"] = self.OnSubFinish1503531,
        ["1503505"] = self.OnSubFinish1503505,
        ["1503532"] = self.OnSubFinish1503532,
        ["1503506"] = self.OnSubFinish1503506,
        ["1503533"] = self.OnSubFinish1503533,
        ["1503507"] = self.OnSubFinish1503507,
        ["1503534"] = self.OnSubFinish1503534,
        ["1503508"] = self.OnSubFinish1503508,
        ["1503509"] = self.OnSubFinish1503509,
        ["1503510"] = self.OnSubFinish1503510,
        ["1503511"] = self.OnSubFinish1503511,
        ["1503529"] = self.OnSubFinish1503529,
        ["1503512"] = self.OnSubFinish1503512,
        ["1503513"] = self.OnSubFinish1503513,
        ["1503514"] = self.OnSubFinish1503514,
        ["1503535"] = self.OnSubFinish1503535,
        ["1503515"] = self.OnSubFinish1503515,
        ["1503536"] = self.OnSubFinish1503536,
        ["1503516"] = self.OnSubFinish1503516,
        ["1503537"] = self.OnSubFinish1503537,
        ["1503517"] = self.OnSubFinish1503517,
        ["1503518"] = self.OnSubFinish1503518,
        ["1503519"] = self.OnSubFinish1503519,
        ["1503520"] = self.OnSubFinish1503520,
        ["1503521"] = self.OnSubFinish1503521,
        ["1503522"] = self.OnSubFinish1503522,
        ["1503523"] = self.OnSubFinish1503523,
        ["1503524"] = self.OnSubFinish1503524,
        ["1503525"] = self.OnSubFinish1503525,
        ["1503526"] = self.OnSubFinish1503526,
        ["1503527"] = self.OnSubFinish1503527,
        ["1503528"] = self.OnSubFinish1503528
    }
end

function Quest15035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1503502"] = self.OnSubFailed1503502,
        ["1503504"] = self.OnSubFailed1503504,
        ["1503531"] = self.OnSubFailed1503531,
        ["1503505"] = self.OnSubFailed1503505,
        ["1503532"] = self.OnSubFailed1503532,
        ["1503506"] = self.OnSubFailed1503506,
        ["1503533"] = self.OnSubFailed1503533,
        ["1503507"] = self.OnSubFailed1503507,
        ["1503534"] = self.OnSubFailed1503534,
        ["1503508"] = self.OnSubFailed1503508,
        ["1503512"] = self.OnSubFailed1503512,
        ["1503514"] = self.OnSubFailed1503514,
        ["1503535"] = self.OnSubFailed1503535,
        ["1503515"] = self.OnSubFailed1503515,
        ["1503536"] = self.OnSubFailed1503536,
        ["1503516"] = self.OnSubFailed1503516,
        ["1503537"] = self.OnSubFailed1503537,
        ["1503517"] = self.OnSubFailed1503517,
        ["1503520"] = self.OnSubFailed1503520,
        ["1503521"] = self.OnSubFailed1503521,
        ["1503523"] = self.OnSubFailed1503523,
        ["1503524"] = self.OnSubFailed1503524,
        ["1503525"] = self.OnSubFailed1503525,
        ["1503526"] = self.OnSubFailed1503526
    }
end

function Quest15035:Start()
    print("Start")
end

function Quest15035:OnDestroy()
    print("OnDestroy")
end

function Quest15035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15035:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1503504Trigger")
    this:ActorDestroy("Q1503509Trigger")
    this:ActorDestroy("Q1503510Trigger")
    this:ActorDestroy("Q1503513Trigger")
    this:ActorDestroy("Q1503514Trigger")
    this:ActorDestroy("Q1503522Trigger")
    this:ActorDestroy("Q1503519Trigger")
    this:ActorDestroy("Q1503518Trigger")
    this:ActorDestroy("Q1503523Trigger")
    this:ActorDestroy("Q1503527Trigger")
    this:ActorDestroy("Q1503508Trigger")
end

function Quest15035:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ActorDestroy("Q1503508Trigger")
    end
end

function Quest15035:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15035:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15035:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15035:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15035:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest15035:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15035:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest15035:OnSubStart1503501(arg1)
    print("OnSubStart1503501")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest15035:OnSubFinish1503501(arg1)
    print("OnSubFinish1503501")
end

function Quest15035:OnSubStart1503502(arg1)
    print("OnSubStart1503502")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)

    this:NpcCreateWithActionSafeCall(0, npcs.Paimon.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Paimon.alias, 15035):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest15035:OnSubFinish1503502(arg1)
    print("OnSubFinish1503502")
end

function Quest15035:OnSubFailed1503502(arg1)
    print("OnSubFailed1503502")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Paimon.alias, 20272)
    end)
end

function Quest15035:OnSubStart1503503(arg1)
    print("OnSubStart1503503")
    this:NpcCreateWithNpcTrigger(npcs.Npc1311.id, 0, 49, 1503503)
    this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Paimon.alias, 15035):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest15035:OnSubFinish1503503(arg1)
    print("OnSubFinish1503503")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20272)
end

function Quest15035:OnSubStart1503530(arg1)
    print("OnSubStart1503530")
    this:CreateQuestNpc(arg1, npcs.Npc15305.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest15035:OnSubFinish1503530(arg1)
    print("OnSubFinish1503530")
    this:SafeDestroyQuestNpc(npcs.Npc15305.alias, 20272)
    this:NpcDestroyImmediately(20272, npcs.Npc1311.alias)
end

function Quest15035:OnSubStart1503504(arg1)
    print("OnSubStart1503504")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15306.id, 0, 1503504, 30, true)
    actorMgr:CreateActorWithPos("Q1503504Trigger", "Actor/Gadget/Q1503504Trigger", 70900002, 0, points._Q1503504TriggerPoint_.pos, points._Q1503504TriggerPoint_.rot, true, false, 20272)
end

function Quest15035:OnSubFinish1503504(arg1)
    print("OnSubFinish1503504")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:ActorDestroy("Q1503504Trigger")
end

function Quest15035:OnSubFailed1503504(arg1)
    print("OnSubFailed1503504")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:ActorDestroy("Q1503504Trigger")
    this:DestroyNpcTrigger("Q1503504N15306Trigger")
end

function Quest15035:OnSubStart1503531(arg1)
    print("OnSubStart1503531")
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503531(arg1)
    print("OnSubFinish1503531")
end

function Quest15035:OnSubFailed1503531(arg1)
    print("OnSubFailed1503531")
    this:CancelStoryByQuest(121503500)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503505(arg1)
    print("OnSubStart1503505")
    this:CreateNpcWithCameraLookTrigger("Q1503505N15306Trigger", 1503505, 15306, 0, 40, 1503505, false)
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503505(arg1)
    print("OnSubFinish1503505")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
end

function Quest15035:OnSubFailed1503505(arg1)
    print("OnSubFailed1503505")
    this:CancelStoryByQuest(121503500)
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:DestroyNpcTrigger("Q1503505N15306Trigger")
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503532(arg1)
    print("OnSubStart1503532")
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503532(arg1)
    print("OnSubFinish1503532")
end

function Quest15035:OnSubFailed1503532(arg1)
    print("OnSubFailed1503532")
    this:CancelStoryByQuest(121503500)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503506(arg1)
    print("OnSubStart1503506")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503506)
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503506(arg1)
    print("OnSubFinish1503506")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
end

function Quest15035:OnSubFailed1503506(arg1)
    print("OnSubFailed1503506")
    this:CancelStoryByQuest(121503500)
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:DestroyNpcTrigger("Q1503506N15306Trigger")
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503533(arg1)
    print("OnSubStart1503533")
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503533(arg1)
    print("OnSubFinish1503533")
end

function Quest15035:OnSubFailed1503533(arg1)
    print("OnSubFailed1503533")
    this:CancelStoryByQuest(121503500)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503507(arg1)
    print("OnSubStart1503507")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503507)
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503507(arg1)
    print("OnSubFinish1503507")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
end

function Quest15035:OnSubFailed1503507(arg1)
    print("OnSubFailed1503507")
    this:CancelStoryByQuest(121503500)
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:DestroyNpcTrigger("Q1503507N15306Trigger")
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503534(arg1)
    print("OnSubStart1503534")
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503534(arg1)
    print("OnSubFinish1503534")
end

function Quest15035:OnSubFailed1503534(arg1)
    print("OnSubFailed1503534")
    this:CancelStoryByQuest(121503500)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503508(arg1)
    print("OnSubStart1503508")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503508)
    this:DeployStoryByQuest(121503500)
    actorMgr:CreateActorWithPos("Q1503508Trigger", "Actor/Gadget/Q1503508Trigger", 70900002, 0, points._Q1503508TriggerPoint_.pos, points._Q1503508TriggerPoint_.rot, true, false, 20272)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503508(arg1)
    print("OnSubFinish1503508")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:CancelStoryByQuest(121503500)
    this:ActorDestroy("Q1503508Trigger")
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFailed1503508(arg1)
    print("OnSubFailed1503508")
    this:CancelStoryByQuest(121503500)
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:ActorDestroy("Q1503508Trigger")
    this:DestroyNpcTrigger("Q1503508N15306Trigger")
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503501", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503509(arg1)
    print("OnSubStart1503509")
    actorMgr:CreateActorWithPos("Q1503509Trigger", "Actor/Gadget/Q1503509Trigger", 70900002, 0, points._Q1503509TriggerPoint_.pos, points._Q1503509TriggerPoint_.rot, true, false, 20272)
    actorMgr:CreateActorWithPos("Q1503519Trigger", "Actor/Gadget/Q1503519Trigger", 70900002, 0, points._Q1503519TriggerPoint_.pos, points._Q1503519TriggerPoint_.rot, true, false, 20272)
end

function Quest15035:OnSubFinish1503509(arg1)
    print("OnSubFinish1503509")
    this:ActorDestroy("Q1503509Trigger")
    this:ActorDestroy("Q1503519Trigger")
    this:TransmitPlayerWithQuestIdByData(1503509, 2, datas.TransmitData, nil, nil, nil)
end

function Quest15035:OnSubStart1503510(arg1)
    print("OnSubStart1503510")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)

    actorMgr:CreateActorWithPos("Q1503522Trigger", "Actor/Gadget/Q1503522Trigger", 70900002, 0, points._Q1503522TriggerPoint_.pos, points._Q1503522TriggerPoint_.rot, true, false, 20272)
end

function Quest15035:OnSubFinish1503510(arg1)
    print("OnSubFinish1503510")
    this:ActorDestroy("Q1503522Trigger")
end

function Quest15035:OnSubStart1503511(arg1)
    print("OnSubStart1503511")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest15035:OnSubFinish1503511(arg1)
    print("OnSubFinish1503511")
    this:ShowBlackScreenWithDialogText(0, 3, 0.5, nil, nil, nil, 150359901, false, true)
end

function Quest15035:OnSubStart1503529(arg1)
    print("OnSubStart1503529")
    this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest15035:OnSubFinish1503529(arg1)
    print("OnSubFinish1503529")
end

function Quest15035:OnSubStart1503512(arg1)
    print("OnSubStart1503512")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503512, 0, 49, 1, npcs.Npc1311.id)
end

function Quest15035:OnSubFinish1503512(arg1)
    print("OnSubFinish1503512")
end

function Quest15035:OnSubFailed1503512(arg1)
    print("OnSubFailed1503512")
    this:DestroyQuestNpcActor(npcs.Npc1311.alias, 20272)
    this:DestroyNpcTrigger("Q1503512N1311Trigger")
end

function Quest15035:OnSubStart1503513(arg1)
    print("OnSubStart1503513")
    this:CreateQuestNpc(arg1, npcs.Npc15305.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest15035:OnSubFinish1503513(arg1)
    print("OnSubFinish1503513")
    this:NpcDestroyImmediately(20272, npcs.Npc15305.alias)
    this:NpcDestroyImmediately(20272, npcs.Npc1311.alias)
end

function Quest15035:OnSubStart1503514(arg1)
    print("OnSubStart1503514")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15306.id, 0, 1503514, 30, true)
    actorMgr:CreateActorWithPos("Q1503514Trigger", "Actor/Gadget/Q1503514Trigger", 70900002, 0, points._Q1503514TriggerPoint_.pos, points._Q1503514TriggerPoint_.rot, true, false, 20272)
end

function Quest15035:OnSubFinish1503514(arg1)
    print("OnSubFinish1503514")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:ActorDestroy("Q1503514Trigger")
end

function Quest15035:OnSubFailed1503514(arg1)
    print("OnSubFailed1503514")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:ActorDestroy("Q1503514Trigger")
    this:DestroyNpcTrigger("Q1503514N15306Trigger")
end

function Quest15035:OnSubStart1503535(arg1)
    print("OnSubStart1503535")
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503535(arg1)
    print("OnSubFinish1503535")
end

function Quest15035:OnSubFailed1503535(arg1)
    print("OnSubFailed1503535")
    this:CancelStoryByQuest(121503500)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503515(arg1)
    print("OnSubStart1503515")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503515)
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503515(arg1)
    print("OnSubFinish1503515")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
end

function Quest15035:OnSubFailed1503515(arg1)
    print("OnSubFailed1503515")
    this:CancelStoryByQuest(121503500)
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:DestroyNpcTrigger("Q1503515N15306Trigger")
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503536(arg1)
    print("OnSubStart1503536")
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503536(arg1)
    print("OnSubFinish1503536")
end

function Quest15035:OnSubFailed1503536(arg1)
    print("OnSubFailed1503536")
    this:CancelStoryByQuest(121503500)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503516(arg1)
    print("OnSubStart1503516")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503516)
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503516(arg1)
    print("OnSubFinish1503516")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
end

function Quest15035:OnSubFailed1503516(arg1)
    print("OnSubFailed1503516")
    this:CancelStoryByQuest(121503500)
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:DestroyNpcTrigger("Q1503516N15306Trigger")
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503537(arg1)
    print("OnSubStart1503537")
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503537(arg1)
    print("OnSubFinish1503537")
end

function Quest15035:OnSubFailed1503537(arg1)
    print("OnSubFailed1503537")
    this:CancelStoryByQuest(121503500)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503517(arg1)
    print("OnSubStart1503517")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503517)
    this:DeployStoryByQuest(121503500)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFinish1503517(arg1)
    print("OnSubFinish1503517")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:CancelStoryByQuest(121503500)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubFailed1503517(arg1)
    print("OnSubFailed1503517")
    this:CancelStoryByQuest(121503500)
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:DestroyNpcTrigger("Q1503517N15306Trigger")
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503502", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
end

function Quest15035:OnSubStart1503518(arg1)
    print("OnSubStart1503518")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15305.id, 0, 1503518, 30, true)
    actorMgr:CreateActorWithPos("Q1503518Trigger", "Actor/Gadget/Q1503518Trigger", 70900002, 0, points._Q1503518TriggerPoint_.pos, points._Q1503518TriggerPoint_.rot, true, false, 20272)
end

function Quest15035:OnSubFinish1503518(arg1)
    print("OnSubFinish1503518")
    this:NpcDestroyImmediately(20272, npcs.Npc15305.alias)
    this:ActorDestroy("Q1503518Trigger")
end

function Quest15035:OnSubStart1503519(arg1)
    print("OnSubStart1503519")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest15035:OnSubFinish1503519(arg1)
    print("OnSubFinish1503519")
end

function Quest15035:OnSubStart1503520(arg1)
    print("OnSubStart1503520")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)

    this:NpcCreateWithActionSafeCall(0, npcs.Paimon.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Paimon.alias, 15035):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest15035:OnSubFinish1503520(arg1)
    print("OnSubFinish1503520")
end

function Quest15035:OnSubFailed1503520(arg1)
    print("OnSubFailed1503520")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Paimon.alias, 20272)
    end)
end

function Quest15035:OnSubStart1503521(arg1)
    print("OnSubStart1503521")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503521, 0, 49, 1, npcs.Npc1311.id)
end

function Quest15035:OnSubFinish1503521(arg1)
    print("OnSubFinish1503521")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20272)
end

function Quest15035:OnSubFailed1503521(arg1)
    print("OnSubFailed1503521")
    this:DestroyQuestNpcActor(npcs.Npc1311.alias, 20272)
    this:DestroyQuestNpcActor(npcs.Paimon.alias, 20272)
    this:DestroyNpcTrigger("Q1503521N1311Trigger")
end

function Quest15035:OnSubStart1503522(arg1)
    print("OnSubStart1503522")
    this:CreateQuestNpc(arg1, npcs.Npc15305.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15035):DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest15035:OnSubFinish1503522(arg1)
    print("OnSubFinish1503522")
    this:NpcDestroyImmediately(20272, npcs.Npc15305.alias)
    this:NpcDestroyImmediately(20272, npcs.Npc1311.alias)
end

function Quest15035:OnSubStart1503523(arg1)
    print("OnSubStart1503523")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15306.id, 0, 1503523, 30, true)
    actorMgr:CreateActorWithPos("Q1503523Trigger", "Actor/Gadget/Q1503523Trigger", 70900002, 0, points._Q1503523TriggerPoint_.pos, points._Q1503523TriggerPoint_.rot, true, false, 20272)
    globalActor:SpawnAttachInFixedAreaEx("1503503", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503503", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
end

function Quest15035:OnSubFinish1503523(arg1)
    print("OnSubFinish1503523")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:ActorDestroy("Q1503523Trigger")
end

function Quest15035:OnSubFailed1503523(arg1)
    print("OnSubFailed1503523")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:ActorDestroy("Q1503523Trigger")
    this:DestroyNpcTrigger("Q1503523N15306Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15302.alias, 20272)
    this:DestroyQuestNpcActor(npcs.Npc15301.alias, 20272)
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
end

function Quest15035:OnSubStart1503524(arg1)
    print("OnSubStart1503524")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 7, 1503524)
    this:CreateQuestNpc(arg1, npcs.Npc15301.id, 0, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc15302.id, 0, true, 1)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
    globalActor:SpawnAttachInFixedAreaEx("1503503", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503503", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
end

function Quest15035:OnSubFinish1503524(arg1)
    print("OnSubFinish1503524")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:NpcDestroyWithDither(20272, npcs.Npc15301.alias)
    this:NpcDestroyWithDither(20272, npcs.Npc15302.alias)
end

function Quest15035:OnSubFailed1503524(arg1)
    print("OnSubFailed1503524")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:DestroyNpcTrigger("Q1503524N15306Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15302.alias, 20272)
    this:DestroyQuestNpcActor(npcs.Npc15301.alias, 20272)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
end

function Quest15035:OnSubStart1503525(arg1)
    print("OnSubStart1503525")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 5, 1503525)
    this:CreateLocalGadget(74018022, "1", points.Q1503525_Gadget74018022_1_Point.pos, points.Q1503525_Gadget74018022_1_Point.rot, 20272, nil, nil, true, 0, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
    globalActor:SpawnAttachInFixedAreaEx("1503503", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503503", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
end

function Quest15035:OnSubFinish1503525(arg1)
    print("OnSubFinish1503525")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:RemoveLocalGadget(74018022, "1")
end

function Quest15035:OnSubFailed1503525(arg1)
    print("OnSubFailed1503525")
    this:DestroyNpcTrigger("Q1503525N15306Trigger")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:RemoveLocalGadget(74018022, "1")
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
end

function Quest15035:OnSubStart1503526(arg1)
    print("OnSubStart1503526")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 5, 1503526)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
    globalActor:SpawnAttachInFixedAreaEx("1503503", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:SpawnAttachInFixedAreaEx("1503503", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
end

function Quest15035:OnSubFinish1503526(arg1)
    print("OnSubFinish1503526")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
end

function Quest15035:OnSubFailed1503526(arg1)
    print("OnSubFailed1503526")
    this:DestroyNpcTrigger("Q1503526N15306Trigger")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:RemoveLocalGadget(74018023, "1")
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerBoy_Crystal", 10000005, nil, nil, nil, {20272}, true)
    globalActor:UnSpawnAttachInFixedArea("1503503", "AvatarItem_PlayerGirl_Crystal", 10000007, nil, nil, nil, {20272}, true)
end

function Quest15035:OnSubStart1503527(arg1)
    print("OnSubStart1503527")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1311.id, 0, 1503527, 30, true)
    actorMgr:CreateActorWithPos("Q1503527Trigger", "Actor/Gadget/Q1503527Trigger", 70900002, 0, points._Q1503527TriggerPoint_.pos, points._Q1503527TriggerPoint_.rot, true, false, 20272)
end

function Quest15035:OnSubFinish1503527(arg1)
    print("OnSubFinish1503527")
    this:NpcDestroyImmediately(20272, npcs.Npc1311.alias)
    this:ActorDestroy("Q1503527Trigger")
end

function Quest15035:OnSubStart1503528(arg1)
    print("OnSubStart1503528")
    actorMgr:CreateActorWithPos("Q1503513Trigger", "Actor/Gadget/Q1503513Trigger", 70900002, 0, points._Q1503513TriggerPoint_.pos, points._Q1503513TriggerPoint_.rot, true, false, 20272)
end

function Quest15035:OnSubFinish1503528(arg1)
    print("OnSubFinish1503528")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1503601, nil)
    end)

    this:ActorDestroy("Q1503513Trigger")
end

return Quest15035
