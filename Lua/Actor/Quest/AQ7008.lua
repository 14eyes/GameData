require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7008 = class("Quest7008", QuestActorProxy)
Quest7008.defaultAlias = "Quest7008"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7008:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["700801"] = self.OnSubStart700801,
        ["700803"] = self.OnSubStart700803,
        ["700802"] = self.OnSubStart700802,
        ["700806"] = self.OnSubStart700806,
        ["700804"] = self.OnSubStart700804,
        ["700807"] = self.OnSubStart700807,
        ["700808"] = self.OnSubStart700808,
        ["700816"] = self.OnSubStart700816,
        ["700817"] = self.OnSubStart700817,
        ["700818"] = self.OnSubStart700818,
        ["700809"] = self.OnSubStart700809,
        ["700810"] = self.OnSubStart700810,
        ["700811"] = self.OnSubStart700811,
        ["700812"] = self.OnSubStart700812,
        ["700805"] = self.OnSubStart700805,
        ["700819"] = self.OnSubStart700819,
        ["700814"] = self.OnSubStart700814,
        ["700815"] = self.OnSubStart700815,
        ["700813"] = self.OnSubStart700813
    }
end

function Quest7008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["700801"] = self.OnSubFinish700801,
        ["700803"] = self.OnSubFinish700803,
        ["700802"] = self.OnSubFinish700802,
        ["700806"] = self.OnSubFinish700806,
        ["700804"] = self.OnSubFinish700804,
        ["700807"] = self.OnSubFinish700807,
        ["700808"] = self.OnSubFinish700808,
        ["700816"] = self.OnSubFinish700816,
        ["700817"] = self.OnSubFinish700817,
        ["700818"] = self.OnSubFinish700818,
        ["700809"] = self.OnSubFinish700809,
        ["700810"] = self.OnSubFinish700810,
        ["700811"] = self.OnSubFinish700811,
        ["700812"] = self.OnSubFinish700812,
        ["700805"] = self.OnSubFinish700805,
        ["700819"] = self.OnSubFinish700819,
        ["700814"] = self.OnSubFinish700814,
        ["700815"] = self.OnSubFinish700815,
        ["700813"] = self.OnSubFinish700813
    }
end

function Quest7008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["700803"] = self.OnSubFailed700803,
        ["700802"] = self.OnSubFailed700802,
        ["700808"] = self.OnSubFailed700808,
        ["700816"] = self.OnSubFailed700816,
        ["700817"] = self.OnSubFailed700817,
        ["700818"] = self.OnSubFailed700818,
        ["700811"] = self.OnSubFailed700811,
        ["700812"] = self.OnSubFailed700812
    }
end

function Quest7008:Start()
    print("Start")
end

function Quest7008:OnDestroy()
    print("OnDestroy")
end

function Quest7008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7008:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q700801TrnasmitOut", 7008)
    this:ActorDestroy("Q700804DreamIn", 7008)
    this:ActorDestroy("Q700809DreamOut", 7008)
end

function Quest7008:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 700819 then
        actorUtils.FinishQuestID(false, 700819)
    end
end

function Quest7008:ActorDestroy(arg1, arg2)
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

function Quest7008:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7008:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7008:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7008:OnSubStart700801(arg1)
    print("OnSubStart700801")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1334.id, 0, 700801, 60, true)
    actorMgr:CreateActorWithPos("Q700801TrnasmitOut", "Actor/Gadget/Q700801TrnasmitOut", 70900002, 0, points._Q700801TrnasmitOutPoint_.pos, points._Q700801TrnasmitOutPoint_.rot, true, false, 20352, nil, 0, 7008)
    this:DeployStoryByQuest(110700802)
end

function Quest7008:OnSubFinish700801(arg1)
    print("OnSubFinish700801")
    this:NpcDestroyImmediately(20352, npcs.Npc1334.alias)
    this:ActorDestroy("Q700801TrnasmitOut", 7008)
end

function Quest7008:OnSubStart700803(arg1)
    print("OnSubStart700803")
    this:DeployStoryByQuest(110700802)
end

function Quest7008:OnSubFinish700803(arg1)
    print("OnSubFinish700803")
end

function Quest7008:OnSubFailed700803(arg1)
    print("OnSubFailed700803")
    this:RecycleAllRes()
    this:CancelAllStory()
end

function Quest7008:OnSubStart700802(arg1)
    print("OnSubStart700802")
    this:NpcCreateWithNpcTrigger(npcs.Npc17256.id, 0, 30, 700802)
    this:DeployStoryByQuest(110700802)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest7008:OnSubFinish700802(arg1)
    print("OnSubFinish700802")
    this:NpcDestroyImmediately(20352, npcs.Npc17256.alias)
    this:CancelStoryByQuest(110700802)
end

function Quest7008:OnSubFailed700802(arg1)
    print("OnSubFailed700802")
    this:RecycleAllRes()
end

function Quest7008:OnSubStart700806(arg1)
    print("OnSubStart700806")
end

function Quest7008:OnSubFinish700806(arg1)
    print("OnSubFinish700806")
end

function Quest7008:OnSubStart700804(arg1)
    print("OnSubStart700804")
    this:CreateQuestNpc(arg1, npcs.Npc16642.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16642.alias, 7008):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc1335.id, 0, 7, 700804)
    this:CreateQuestNpc(arg1, npcs.Npc16641.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16641.alias, 7008):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16641.alias, 7008):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7008):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7008):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7008):DisableInteeHeadCtrl(true)
end

function Quest7008:OnSubFinish700804(arg1)
    print("OnSubFinish700804")
    this:NpcDestroyImmediately(20352, npcs.Npc16642.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1335.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16641.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1331.alias)
end

function Quest7008:OnSubStart700807(arg1)
    print("OnSubStart700807")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1335.id, 0, 700807, 30, true)
    actorMgr:CreateActorWithPos("Q700804DreamIn", "Actor/Gadget/Q700804DreamIn", 70900002, 0, points._Q700804DreamInPoint_.pos, points._Q700804DreamInPoint_.rot, true, false, 20352, nil, 0, 7008)
end

function Quest7008:OnSubFinish700807(arg1)
    print("OnSubFinish700807")
    this:NpcDestroyImmediately(20352, npcs.Npc1335.alias)
    this:ActorDestroy("Q700804DreamIn", 7008)
end

function Quest7008:OnSubStart700808(arg1)
    print("OnSubStart700808")
end

function Quest7008:OnSubFinish700808(arg1)
    print("OnSubFinish700808")
end

function Quest7008:OnSubFailed700808(arg1)
    print("OnSubFailed700808")
    this:RecycleAllRes()
end

function Quest7008:OnSubStart700816(arg1)
    print("OnSubStart700816")
end

function Quest7008:OnSubFinish700816(arg1)
    print("OnSubFinish700816")
end

function Quest7008:OnSubFailed700816(arg1)
    print("OnSubFailed700816")
    this:RecycleAllRes()
end

function Quest7008:OnSubStart700817(arg1)
    print("OnSubStart700817")
end

function Quest7008:OnSubFinish700817(arg1)
    print("OnSubFinish700817")
end

function Quest7008:OnSubFailed700817(arg1)
    print("OnSubFailed700817")
    this:RecycleAllRes()
end

function Quest7008:OnSubStart700818(arg1)
    print("OnSubStart700818")
    this:DeployStoryByQuest(110700805)
end

function Quest7008:OnSubFinish700818(arg1)
    print("OnSubFinish700818")
    this:CancelStoryByQuest(110700805)
end

function Quest7008:OnSubFailed700818(arg1)
    print("OnSubFailed700818")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110700805)
end

function Quest7008:OnSubStart700809(arg1)
    print("OnSubStart700809")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1335.id, 0, 700809, 30, true)
end

function Quest7008:OnSubFinish700809(arg1)
    print("OnSubFinish700809")
    this:NpcDestroyImmediately(20352, npcs.Npc1335.alias)
end

function Quest7008:OnSubStart700810(arg1)
    print("OnSubStart700810")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc16642.id, 0, 700810, 40, true)
    actorMgr:CreateActorWithPos("Q700809DreamOut", "Actor/Gadget/Q700809DreamOut", 70900002, 0, points._Q700809DreamOutPoint_.pos, points._Q700809DreamOutPoint_.rot, true, false, 20352, nil, 0, 7008)
end

function Quest7008:OnSubFinish700810(arg1)
    print("OnSubFinish700810")
    this:NpcDestroyImmediately(20352, npcs.Npc16642.alias)
    this:ActorDestroy("Q700809DreamOut", 7008)
end

function Quest7008:OnSubStart700811(arg1)
    print("OnSubStart700811")
    this:CreateQuestNpc(arg1, npcs.Npc1333.id, 0, false, 0)
end

function Quest7008:OnSubFinish700811(arg1)
    print("OnSubFinish700811")
end

function Quest7008:OnSubFailed700811(arg1)
    print("OnSubFailed700811")
    this:RecycleAllRes()
end

function Quest7008:OnSubStart700812(arg1)
    print("OnSubStart700812")
    if sceneData.currSceneID == 20352 then
        this:RequestInteraction(npcs.Npc1333.alias, "", true)
    end
end

function Quest7008:OnSubFinish700812(arg1)
    print("OnSubFinish700812")
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
end

function Quest7008:OnSubFailed700812(arg1)
    print("OnSubFailed700812")
    this:RecycleAllRes()
end

function Quest7008:OnSubStart700805(arg1)
    print("OnSubStart700805")
end

function Quest7008:OnSubFinish700805(arg1)
    print("OnSubFinish700805")
end

function Quest7008:OnSubStart700819(arg1)
    print("OnSubStart700819")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1333.id, 0, 700819, 30, true)
end

function Quest7008:OnSubFinish700819(arg1)
    print("OnSubFinish700819")
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
end

function Quest7008:OnSubStart700814(arg1)
    print("OnSubStart700814")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1333.id, 0, 700814, 30, true)
end

function Quest7008:OnSubFinish700814(arg1)
    print("OnSubFinish700814")
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
end

function Quest7008:OnSubStart700815(arg1)
    print("OnSubStart700815")
    if sceneData.currSceneID == 20352 then
        this:TransmitPlayerWithQuestIdByData(700815, 1, datas.TransmitDataWithBlack, nil, nil, nil)
    end
end

function Quest7008:OnSubFinish700815(arg1)
    print("OnSubFinish700815")
end

function Quest7008:OnSubStart700813(arg1)
    print("OnSubStart700813")
end

function Quest7008:OnSubFinish700813(arg1)
    print("OnSubFinish700813")
end

return Quest7008
