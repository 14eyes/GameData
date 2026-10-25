require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5010 = class("Quest5010", QuestActorProxy)
Quest5010.defaultAlias = "Quest5010"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5010:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["501001"] = self.OnSubStart501001,
        ["501002"] = self.OnSubStart501002,
        ["501006"] = self.OnSubStart501006,
        ["501007"] = self.OnSubStart501007,
        ["501009"] = self.OnSubStart501009,
        ["501003"] = self.OnSubStart501003,
        ["501008"] = self.OnSubStart501008,
        ["501004"] = self.OnSubStart501004,
        ["501005"] = self.OnSubStart501005
    }
end

function Quest5010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["501001"] = self.OnSubFinish501001,
        ["501002"] = self.OnSubFinish501002,
        ["501006"] = self.OnSubFinish501006,
        ["501007"] = self.OnSubFinish501007,
        ["501009"] = self.OnSubFinish501009,
        ["501003"] = self.OnSubFinish501003,
        ["501008"] = self.OnSubFinish501008,
        ["501004"] = self.OnSubFinish501004,
        ["501005"] = self.OnSubFinish501005
    }
end

function Quest5010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["501006"] = self.OnSubFailed501006, ["501007"] = self.OnSubFailed501007}
end

function Quest5010:Start()
    print("Start")
end

function Quest5010:OnDestroy()
    print("OnDestroy")
end

function Quest5010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5010:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5010:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5010:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5010:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5010:OnSubStart501001(arg1)
    print("OnSubStart501001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501001, 0, 30, 1, npcs.Npc1089.id)
    this:LevelLoadFinishSafeCall(function(arg1_2)
        if sceneData.currSceneID == 20241 then
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData_4, nil, nil, nil)
        end
    end)

    actorMgr:CreateActorWithPos("Q501001Trigger", "Actor/Gadget/Q501001Trigger", 70900002, 0, points._Q501001TriggerPoint_.pos, points._Q501001TriggerPoint_.rot, true, false, 1095)
    this:DeployStoryByQuest(110500900)
end

function Quest5010:OnSubFinish501001(arg1)
    print("OnSubFinish501001")
    this:DestroyQuestNpcActorByAlias(npcs.Npc1089.alias, false)
    this:DestroyQuestNpcActorByAlias(npcs.Npc14235.alias, false)
end

function Quest5010:OnSubStart501002(arg1)
    print("OnSubStart501002")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1089.id, arg1)
    this:NpcCreateWithNpcTrigger(npcs.Npc1087.id, 0, 18, 501002)
    this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 5010):DoFreeStyle(1342, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14235.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc14434.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14433.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14433.alias, 5010):DoFreeStyle(1283, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5010)
    local realAlias = this:GetRealAlias(npcs.Npc14433.alias)
    questNpcActor:LookAtTarget(realAlias, datas.lookParam, false)
    local v = this:GetQuestNpcActor(npcs.Npc1087.alias, 5010)
    local realAlias2 = this:GetRealAlias(npcs.Npc14433.alias)
    v:LookAtTarget(realAlias2, datas.lookParam, false)
    this:GetQuestNpcActor(npcs.Npc14433.alias, 5010):LookAt({x = -1959.534, y = 64.999, z = 9054.555})
    this:CreateLocalGadget(70711654, "0", {x = -1959.231, y = 64.974, z = 9054.062}, {x = 0, y = 90, z = 0}, 3, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1089.alias, 5010):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14235.alias, 5010):DisableInteeHeadCtrl(true)
    end)

    this:DeployStoryByQuest(110500900)
end

function Quest5010:OnSubFinish501002(arg1)
    print("OnSubFinish501002")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 1095)
    this:GetQuestNpcActor(npcs.Npc1089.alias, 5010):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14235.alias, 5010):DisableInteeHeadCtrl(false)
end

function Quest5010:OnSubStart501006(arg1)
    print("OnSubStart501006")
    this:NpcCreateWithNpcTrigger(npcs.Npc1088.id, 0, 8, 501006)
    this:CreateQuestNpc(arg1, npcs.Npc6047.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
end

function Quest5010:OnSubFinish501006(arg1)
    print("OnSubFinish501006")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:DailyNpcSafeHideSelf(npcs.Npc6047.alias, true, 1)
    end)
end

function Quest5010:OnSubFailed501006(arg1)
    print("OnSubFailed501006")
    this:DestroyNpcTrigger("Q501006N1088Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14221.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc6047.alias, 3)
end

function Quest5010:OnSubStart501007(arg1)
    print("OnSubStart501007")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 6, 501007)
    this:CreateQuestNpc(arg1, npcs.Npc14807.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14808.id, 0, false, 0)
end

function Quest5010:OnSubFinish501007(arg1)
    print("OnSubFinish501007")
    this:SafeDestroyQuestNpc(npcs.Npc14807.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14808.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcById(501003, npcs.Npc1095.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5010):DoFreeStyle(1220, true, nil, true, true, false, true)
    end)
end

function Quest5010:OnSubFailed501007(arg1)
    print("OnSubFailed501007")
    this:DestroyNpcTrigger("Q501007N1095Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14807.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14808.alias, 3)
end

function Quest5010:OnSubStart501009(arg1)
    print("OnSubStart501009")
    this:NpcCreateWithNpcTrigger(npcs.Npc1096.id, 0, 30, 501009)
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q501009Trigger", "Actor/Gadget/Q501009Trigger", 70900002, 0, points._Q501009TriggerPoint_.pos, points._Q501009TriggerPoint_.rot, true, false, 1099)
end

function Quest5010:OnSubFinish501009(arg1)
    print("OnSubFinish501009")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 1099)
end

function Quest5010:OnSubStart501003(arg1)
    print("OnSubStart501003")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14433.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14434.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14433.alias, 5010):DoFreeStyle(1283, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14434.alias, 5010):DoFreeStyle(4100, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14433.alias, 5010):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14434.alias, 5010):DisableInteeHeadCtrl(true)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc14439.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6021.alias, true, 1)
    this:CreateLocalGadget(70711654, "0", {x = -1959.231, y = 64.974, z = 9054.062}, {x = 0, y = 90, z = 0}, 3, nil, nil, false, 0, true)
    if this:GetSubQuestState(501007) == 3 then
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5010):DoFreeStyle(1220, true, nil, true, true, false, true)
    end

    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1099
    local n2 = 3
    local tbl = {}
    local n3 = 30003
    tbl[1] = 30001
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, true)
    this:BanCrowdNpc(3501, 11, {110009}, true)
    if this:GetSubQuestState(501006) == 3 then
        this:DailyNpcSafeHideSelf(npcs.Npc6047.alias, true, 1)
    end

    this:DeployStoryByQuest(110500900)
end

function Quest5010:OnSubFinish501003(arg1)
    print("OnSubFinish501003")
    this:SafeDestroyQuestNpc(npcs.Npc14433.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14434.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14439.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:LightNotifyTo(npcs.Npc6047.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6021.alias, 0, true)
    this:RemoveLocalGadget(70711654, "0")
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1099
    local n2 = 3
    local tbl = {}
    local n3 = 30003
    tbl[1] = 30001
    tbl[2] = n3
    banCrowdNpc(v2, n, n2, tbl, false)
    this:BanCrowdNpc(3501, 11, {110009}, false)
end

function Quest5010:OnSubStart501008(arg1)
    print("OnSubStart501008")
    this:DeployStoryByQuest(110500900)
    actorMgr:CreateActorWithPos("Q501008Trigger", "Actor/Gadget/Q501008Trigger", 70900002, 0, points._Q501008TriggerPoint_.pos, points._Q501008TriggerPoint_.rot, true, false, 1099)
end

function Quest5010:OnSubFinish501008(arg1)
    print("OnSubFinish501008")
    this:ActorDestroy("Q501008Trigger")
end

function Quest5010:OnSubStart501004(arg1)
    print("OnSubStart501004")
    this:NpcCreateWithNpcTrigger(npcs.Npc14383.id, 0, 30, 501004)
    this:DeployStoryByQuest(110500900)
    actorMgr:CreateActorWithPos("Q501004Trigger", "Actor/Gadget/Q501004Trigger", 70900002, 0, points._Q501004TriggerPoint_.pos, points._Q501004TriggerPoint_.rot, true, false, 20241)
end

function Quest5010:OnSubFinish501004(arg1)
    print("OnSubFinish501004")
    this:SafeDestroyQuestNpc(npcs.Npc14383.alias, 20241)
    this:TransmitPlayerByData(arg1, 6, datas.TransmitBlank5010, nil, nil, nil)
end

function Quest5010:OnSubStart501005(arg1)
    print("OnSubStart501005")
    actorMgr:CreateActorWithPos("Q501005Nargger", "Actor/Gadget/Q501005Nargger", 70900002, 0, points._Q501005NarggerPoint_.pos, points._Q501005NarggerPoint_.rot, true, false, 1099)
    this:BanCrowdNpc(1099, 3, nil, true)
    this:DeployStoryByQuest(110500900)
end

function Quest5010:OnSubFinish501005(arg1)
    print("OnSubFinish501005")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14426.alias, 3)
    this:ActorDestroy("Q501005Nargger")
    this:ClearNarratorTask()
    this:CancelStoryByQuest(110500900)
    this:BanCrowdNpc(1099, 3, nil, false)
end

return Quest5010
