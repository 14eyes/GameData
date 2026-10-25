require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13031 = class("Quest13031", QuestActorProxy)
Quest13031.defaultAlias = "Quest13031"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest13031:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest13031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1303101"] = self.OnSubStart1303101,
        ["1303102"] = self.OnSubStart1303102,
        ["1303103"] = self.OnSubStart1303103,
        ["1303104"] = self.OnSubStart1303104,
        ["1303105"] = self.OnSubStart1303105,
        ["1303106"] = self.OnSubStart1303106,
        ["1303107"] = self.OnSubStart1303107,
        ["1303114"] = self.OnSubStart1303114,
        ["1303115"] = self.OnSubStart1303115,
        ["1303108"] = self.OnSubStart1303108,
        ["1303109"] = self.OnSubStart1303109,
        ["1303124"] = self.OnSubStart1303124,
        ["1303125"] = self.OnSubStart1303125,
        ["1303121"] = self.OnSubStart1303121,
        ["1303122"] = self.OnSubStart1303122,
        ["1303123"] = self.OnSubStart1303123,
        ["1303127"] = self.OnSubStart1303127,
        ["1303110"] = self.OnSubStart1303110,
        ["1303111"] = self.OnSubStart1303111,
        ["1303112"] = self.OnSubStart1303112,
        ["1303116"] = self.OnSubStart1303116,
        ["1303113"] = self.OnSubStart1303113,
        ["1303126"] = self.OnSubStart1303126,
        ["1303117"] = self.OnSubStart1303117,
        ["1303120"] = self.OnSubStart1303120,
        ["1303118"] = self.OnSubStart1303118,
        ["1303119"] = self.OnSubStart1303119
    }
end

function Quest13031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1303101"] = self.OnSubFinish1303101,
        ["1303102"] = self.OnSubFinish1303102,
        ["1303103"] = self.OnSubFinish1303103,
        ["1303104"] = self.OnSubFinish1303104,
        ["1303105"] = self.OnSubFinish1303105,
        ["1303106"] = self.OnSubFinish1303106,
        ["1303107"] = self.OnSubFinish1303107,
        ["1303114"] = self.OnSubFinish1303114,
        ["1303115"] = self.OnSubFinish1303115,
        ["1303108"] = self.OnSubFinish1303108,
        ["1303109"] = self.OnSubFinish1303109,
        ["1303124"] = self.OnSubFinish1303124,
        ["1303125"] = self.OnSubFinish1303125,
        ["1303121"] = self.OnSubFinish1303121,
        ["1303122"] = self.OnSubFinish1303122,
        ["1303123"] = self.OnSubFinish1303123,
        ["1303127"] = self.OnSubFinish1303127,
        ["1303110"] = self.OnSubFinish1303110,
        ["1303111"] = self.OnSubFinish1303111,
        ["1303112"] = self.OnSubFinish1303112,
        ["1303116"] = self.OnSubFinish1303116,
        ["1303113"] = self.OnSubFinish1303113,
        ["1303126"] = self.OnSubFinish1303126,
        ["1303117"] = self.OnSubFinish1303117,
        ["1303120"] = self.OnSubFinish1303120,
        ["1303118"] = self.OnSubFinish1303118,
        ["1303119"] = self.OnSubFinish1303119
    }
end

function Quest13031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1303102"] = self.OnSubFailed1303102,
        ["1303103"] = self.OnSubFailed1303103,
        ["1303104"] = self.OnSubFailed1303104,
        ["1303105"] = self.OnSubFailed1303105
    }
end

function Quest13031:Start()
    print("Start")
end

function Quest13031:OnDestroy()
    print("OnDestroy")
end

function Quest13031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13031:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4042Data.alias, 3)
    this:SafeDestroyQuestNpc(nil, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13278Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4078Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4105Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4102Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4080Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4077Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13261Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13299Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13300Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13301Data.alias, 3)
    this:SafeDestroyQuestNpc(nil, 3)
    actorMgr:DestroyEntityActor("Q13031Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q13031Trigger1", 0, false)
    actorMgr:DestroyEntityActor("Q13031Trigger2", 0, false)
end

function Quest13031:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13031:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest13031:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13031:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest13031:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13031:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeOnInteraction")
    print("InvokeLuaAccept")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 1303117)
    elseif arg1 == 2 then
        actor:FinishQuestID(false, 1303120)
    end
end

function Quest13031:OnSubStart1303101(arg1)
    print("OnSubStart1303101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303101, 1, 10, 1)
    this:ClearNarratorTask()
end

function Quest13031:OnSubFinish1303101(arg1)
    print("OnSubFinish1303101")
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
end

function Quest13031:OnSubStart1303102(arg1)
    print("OnSubStart1303102")
    actorMgr:CreateActorWithPos("Q13031Trigger", "Actor/Gadget/Q13031Trigger", 70900002, 0, {x = -1356.766, y = 158.574, z = 2367.489}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest13031:OnSubFinish1303102(arg1)
    print("OnSubFinish1303102")
    this:ActorDestroy("Q13031Trigger")
end

function Quest13031:OnSubFailed1303102(arg1)
    print("OnSubFailed1303102")
    this:ActorDestroy("Q13031Trigger")
end

function Quest13031:OnSubStart1303103(arg1)
    print("OnSubStart1303103")
    actorMgr:CreateActorWithPos("Q13031Trigger1", "Actor/Gadget/Q13031Trigger1", 70900002, 0, {x = -1481.142, y = 230.144, z = 2462.969}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest13031:OnSubFinish1303103(arg1)
    print("OnSubFinish1303103")
    this:ActorDestroy("Q13031Trigger1")
end

function Quest13031:OnSubFailed1303103(arg1)
    print("OnSubFailed1303103")
    this:ActorDestroy("Q13031Trigger")
    this:ActorDestroy("Q13031Trigger1")
end

function Quest13031:OnSubStart1303104(arg1)
    print("OnSubStart1303104")
    actorMgr:CreateActorWithPos("Q13031Trigger2", "Actor/Gadget/Q13031Trigger2", 70900002, 0, {x = -1525.368, y = 305.592, z = 2346.544}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest13031:OnSubFinish1303104(arg1)
    print("OnSubFinish1303104")
    this:ActorDestroy("Q13031Trigger2")
end

function Quest13031:OnSubFailed1303104(arg1)
    print("OnSubFailed1303104")
    this:ActorDestroy("Q13031Trigger")
    this:ActorDestroy("Q13031Trigger1")
    this:ActorDestroy("Q13031Trigger2")
end

function Quest13031:OnSubStart1303105(arg1)
    print("OnSubStart1303105")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303105, 1, 15, 1)
end

function Quest13031:OnSubFinish1303105(arg1)
    print("OnSubFinish1303105")
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest13031:OnSubFailed1303105(arg1)
    print("OnSubFailed1303105")
    this:ActorDestroy("Q13031Trigger")
    this:ActorDestroy("Q13031Trigger1")
    this:ActorDestroy("Q13031Trigger2")
    this:ClearNpcTriggerByQuestId(1303105)
end

function Quest13031:OnSubStart1303106(arg1)
    print("OnSubStart1303106")
    this:CreateQuestNpc(arg1, npcs.Npc4042Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4043Data.alias, 1, true)
end

function Quest13031:OnSubFinish1303106(arg1)
    print("OnSubFinish1303106")
end

function Quest13031:OnSubStart1303107(arg1)
    print("OnSubStart1303107")
    this:CreateQuestNpc(arg1, npcs.Npc4042Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13278Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc4043Data.alias, 1, true)
end

function Quest13031:OnSubFinish1303107(arg1)
    print("OnSubFinish1303107")
    this:LightNotifyTo(npcs.Npc4043Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13278Data.alias, 3)
end

function Quest13031:OnSubStart1303114(arg1)
    print("OnSubStart1303114")
    this:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc4078Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc4102Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc4102Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc4080Data.id, 6)
    this:GetQuestNpcActor(npcs.Npc4080Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc4077Data.id, 7)
    this:GetQuestNpcActor(npcs.Npc4077Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4102Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4077Data.alias):DisableInteeHeadCtrl(true)
end

function Quest13031:OnSubFinish1303114(arg1)
    print("OnSubFinish1303114")
end

function Quest13031:OnSubStart1303115(arg1)
    print("OnSubStart1303115")
    this:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc4105Data.id, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4105Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4102Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4080Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4077Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest13031:OnSubFinish1303115(arg1)
    print("OnSubFinish1303115")
end

function Quest13031:OnSubStart1303108(arg1)
    print("OnSubStart1303108")
    this:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13261Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13261Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1303108TalkTrigger", "Actor/Gadget/Q1303108TalkTrigger", 70900002, 0, {x = -269.995, y = 228.981, z = 2977.552}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:GetQuestNpcActor(npcs.Npc4105Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4102Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4080Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4077Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest13031:OnSubFinish1303108(arg1)
    print("OnSubFinish1303108")
    this:ActorDestroy("Q1303108TalkTrigger")
    this:LightNotifyTo(npcs.Npc4044Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc4042Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4078Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4105Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4102Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4080Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4077Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13261Data.alias, 3)
end

function Quest13031:OnSubStart1303109(arg1)
    print("OnSubStart1303109")
    this:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13261Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13299Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13300Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc13301Data.id, 5)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):LookAt({x = -274.249, y = 230.394, z = 2979.276})
    end)
end

function Quest13031:OnSubFinish1303109(arg1)
    print("OnSubFinish1303109")
end

function Quest13031:OnSubStart1303124(arg1)
    print("OnSubStart1303124")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13261Data.id, 2)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):LookAt({x = -274.249, y = 230.394, z = 2979.276})
    end)
end

function Quest13031:OnSubFinish1303124(arg1)
    print("OnSubFinish1303124")
end

function Quest13031:OnSubStart1303125(arg1)
    print("OnSubStart1303125")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13261Data.id, 2)
    actorMgr:CreateActorWithPos("Q13031TriggerQQ", "Actor/Gadget/Q13031TriggerQQ", 70900002, 0, {x = -235.51, y = 212.293, z = 3058.458}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):LookAt({x = -274.249, y = 230.394, z = 2979.276})
    end)
end

function Quest13031:OnSubFinish1303125(arg1)
    print("OnSubFinish1303125")
    this:ActorDestroy("Q13031TriggerQQ")
end

function Quest13031:OnSubStart1303121(arg1)
    print("OnSubStart1303121")
end

function Quest13031:OnSubFinish1303121(arg1)
    print("OnSubFinish1303121")
end

function Quest13031:OnSubStart1303122(arg1)
    print("OnSubStart1303122")
end

function Quest13031:OnSubFinish1303122(arg1)
    print("OnSubFinish1303122")
end

function Quest13031:OnSubStart1303123(arg1)
    print("OnSubStart1303123")
end

function Quest13031:OnSubFinish1303123(arg1)
    print("OnSubFinish1303123")
end

function Quest13031:OnSubStart1303127(arg1)
    print("OnSubStart1303127")
end

function Quest13031:OnSubFinish1303127(arg1)
    print("OnSubFinish1303127")
    this:ActorDestroy("Q13031TriggerQQ")
end

function Quest13031:OnSubStart1303110(arg1)
    print("OnSubStart1303110")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):LookAt({x = -274.249, y = 230.394, z = 2979.276})
    end)
end

function Quest13031:OnSubFinish1303110(arg1)
    print("OnSubFinish1303110")
    this:SafeDestroyQuestNpc(npcs.Npc13299Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13300Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13301Data.alias, 3)
end

function Quest13031:OnSubStart1303111(arg1)
    print("OnSubStart1303111")
    actorMgr:CreateActorWithPos("Q13031TriggerQQ", "Actor/Gadget/Q13031TriggerQQ", 70900002, 0, {x = -235.51, y = 212.293, z = 3058.458}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):LookAt({x = -274.249, y = 230.394, z = 2979.276})
    end)
end

function Quest13031:OnSubFinish1303111(arg1)
    print("OnSubFinish1303111")
end

function Quest13031:OnSubStart1303112(arg1)
    print("OnSubStart1303112")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):LookAt({x = -274.249, y = 230.394, z = 2979.276})
    end)
end

function Quest13031:OnSubFinish1303112(arg1)
    print("OnSubFinish1303112")
end

function Quest13031:OnSubStart1303116(arg1)
    print("OnSubStart1303116")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13261Data.alias):DisableInteeHeadCtrl(true)
        this:NpcDestroy(npcs.Npc13299Data.alias, 3)
        this:NpcDestroy(npcs.Npc13300Data.alias, 3)
        this:NpcDestroy(npcs.Npc13301Data.alias, 3)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):LookAt({x = -274.249, y = 230.394, z = 2979.276})
    end)
end

function Quest13031:OnSubFinish1303116(arg1)
    print("OnSubFinish1303116")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsIdNone, 0, nil, nil)
end

function Quest13031:OnSubStart1303113(arg1)
    print("OnSubStart1303113")
    this:CreateQuestNpc(arg1, npcs.Npc13261Data.id, 2)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13261Data.alias)
        questNpcActor:SitOnChair(8010, true)
        actorMgr:CreateActorWithPos("Q1303113TalkTrigger", "Actor/Gadget/Q1303113TalkTrigger", 70900002, 0, points.TPos_Q1303113TalkTrigger.pos, points.TPos_Q1303113TalkTrigger.rot, true, false, 3)
        questNpcActor:DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(false)
    end)
end

function Quest13031:OnSubFinish1303113(arg1)
    print("OnSubFinish1303113")
    this:ActorDestroy("Q1303113TalkTrigger")
    this:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13261Data.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsIdNone, 0, nil, nil)
end

function Quest13031:OnSubStart1303126(arg1)
    print("OnSubStart1303126")
    actorMgr:CreateActorWithPos("Q13031tpTrigger", "Actor/Gadget/Q13031tpTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1303201").pos, sceneData:GetDummyPoint(3, "Q1303201").rot, true, false, 3)
end

function Quest13031:OnSubFinish1303126(arg1)
    print("OnSubFinish1303126")
    this:ActorDestroy("Q13031tpTrigger")
end

function Quest13031:OnSubStart1303117(arg1)
    print("OnSubStart1303117")
end

function Quest13031:OnSubFinish1303117(arg1)
    print("OnSubFinish1303117")
end

function Quest13031:OnSubStart1303120(arg1)
    print("OnSubStart1303120")
end

function Quest13031:OnSubFinish1303120(arg1)
    print("OnSubFinish1303120")
end

function Quest13031:OnSubStart1303118(arg1)
    print("OnSubStart1303118")
end

function Quest13031:OnSubFinish1303118(arg1)
    print("OnSubFinish1303118")
end

function Quest13031:OnSubStart1303119(arg1)
    print("OnSubStart1303119")
end

function Quest13031:OnSubFinish1303119(arg1)
    print("OnSubFinish1303119")
end

return Quest13031
