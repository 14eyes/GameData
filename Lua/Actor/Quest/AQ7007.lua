require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7007 = class("Quest7007", QuestActorProxy)
Quest7007.defaultAlias = "Quest7007"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7007:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["700701"] = self.OnSubStart700701,
        ["700706"] = self.OnSubStart700706,
        ["700707"] = self.OnSubStart700707,
        ["700708"] = self.OnSubStart700708,
        ["700705"] = self.OnSubStart700705,
        ["700709"] = self.OnSubStart700709,
        ["700710"] = self.OnSubStart700710,
        ["700711"] = self.OnSubStart700711,
        ["700712"] = self.OnSubStart700712,
        ["700713"] = self.OnSubStart700713,
        ["700714"] = self.OnSubStart700714,
        ["700715"] = self.OnSubStart700715,
        ["700704"] = self.OnSubStart700704,
        ["700703"] = self.OnSubStart700703,
        ["700702"] = self.OnSubStart700702
    }
end

function Quest7007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["700701"] = self.OnSubFinish700701,
        ["700706"] = self.OnSubFinish700706,
        ["700707"] = self.OnSubFinish700707,
        ["700708"] = self.OnSubFinish700708,
        ["700705"] = self.OnSubFinish700705,
        ["700709"] = self.OnSubFinish700709,
        ["700710"] = self.OnSubFinish700710,
        ["700711"] = self.OnSubFinish700711,
        ["700712"] = self.OnSubFinish700712,
        ["700713"] = self.OnSubFinish700713,
        ["700714"] = self.OnSubFinish700714,
        ["700715"] = self.OnSubFinish700715,
        ["700704"] = self.OnSubFinish700704,
        ["700703"] = self.OnSubFinish700703,
        ["700702"] = self.OnSubFinish700702
    }
end

function Quest7007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["700714"] = self.OnSubFailed700714}
end

function Quest7007:Start()
    print("Start")
end

function Quest7007:OnDestroy()
    print("OnDestroy")
end

function Quest7007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7007:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q700701TransmitOut", 7007)
    this:ActorDestroy("Q7007DreamTransmit", 7007)
    this:ActorDestroy("Q7007DreamKaiche02", 7007)
end

function Quest7007:ActorDestroy(arg1, arg2)
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

function Quest7007:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7007:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7007:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7007:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7007:OnSubStart700701(arg1)
    print("OnSubStart700701")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1332.id, 0, 700701, 60, true)
    actorMgr:CreateActorWithPos("Q700701TransmitOut", "Actor/Gadget/Q700701TransmitOut", 70900002, 0, points._Q700701TransmitOutPoint_.pos, points._Q700701TransmitOutPoint_.rot, true, false, 20352, nil, 0, 7007)
end

function Quest7007:OnSubFinish700701(arg1)
    print("OnSubFinish700701")
    this:NpcDestroyImmediately(20352, npcs.Npc1332.alias)
    this:ActorDestroy("Q700701TransmitOut", 7007)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("ZDAQBookPhotoObserveStatic")
    end, true)
end

function Quest7007:OnSubStart700706(arg1)
    print("OnSubStart700706")
    this:CreateQuestNpc(arg1, npcs.Npc1333.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7007):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7007):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1331.id, 0, 3, 700706)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7007):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest7007:OnSubFinish700706(arg1)
    print("OnSubFinish700706")
end

function Quest7007:OnSubStart700707(arg1)
    print("OnSubStart700707")
    this:CreateQuestNpc(arg1, npcs.Npc1334.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1332.id, 0, 7, 700707)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7007):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest7007:OnSubFinish700707(arg1)
    print("OnSubFinish700707")
end

function Quest7007:OnSubStart700708(arg1)
    print("OnSubStart700708")
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc16642.id, 0, 7, 700708)
    this:GetQuestNpcActor(npcs.Npc16642.alias, 7007):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest7007:OnSubFinish700708(arg1)
    print("OnSubFinish700708")
    this:NpcDestroyImmediately(20352, npcs.Npc1335.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16642.alias)
end

function Quest7007:OnSubStart700705(arg1)
    print("OnSubStart700705")
    this:CreateQuestNpc(arg1, npcs.Npc16641.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16641.alias, 7007):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16645.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16645.alias, 7007):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7007):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7007):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest7007:OnSubFinish700705(arg1)
    print("OnSubFinish700705")
    this:NpcDestroyImmediately(20352, npcs.Npc16641.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16645.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1331.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1334.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataWithBlack, nil, nil, nil)
end

function Quest7007:OnSubStart700709(arg1)
    print("OnSubStart700709")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1334.id, 0, 700709, 30, true)
end

function Quest7007:OnSubFinish700709(arg1)
    print("OnSubFinish700709")
end

function Quest7007:OnSubStart700710(arg1)
    print("OnSubStart700710")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1334.id, 0, 700710, 10, true)
end

function Quest7007:OnSubFinish700710(arg1)
    print("OnSubFinish700710")
    this:NpcDestroyImmediately(20352, npcs.Npc1334.alias)
end

function Quest7007:OnSubStart700711(arg1)
    print("OnSubStart700711")
    this:NpcCreateWithNpcTriggerAndBlackscreen(700711, 0, 5, 1, npcs.Npc1332.id)
    this:CreateQuestNpc(arg1, npcs.Npc16641.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16641.alias, 7007):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16641.alias, 7007):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 7007):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7007):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1333.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7007):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16642.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16642.alias, 7007):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16642.alias, 7007):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1334.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1334.alias, 7007):DisableInteeHeadCtrl(true)
end

function Quest7007:OnSubFinish700711(arg1)
    print("OnSubFinish700711")
    this:NpcDestroyImmediately(20352, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16641.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1335.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1331.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16642.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1334.alias)
end

function Quest7007:OnSubStart700712(arg1)
    print("OnSubStart700712")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1332.id, 0, 700712, 40, true)
    this:DeployStoryByQuest(110700712)
end

function Quest7007:OnSubFinish700712(arg1)
    print("OnSubFinish700712")
    this:NpcDestroyImmediately(20352, npcs.Npc1332.alias)
    this:CancelStoryByQuest(110700712)
end

function Quest7007:OnSubStart700713(arg1)
    print("OnSubStart700713")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1334.id, 0, 700713, 30, true)
    actorMgr:CreateActorWithPos("Q7007DreamTransmit", "Actor/Gadget/Q7007DreamTransmit", 70900002, 0, points._Q7007DreamTransmitPoint_.pos, points._Q7007DreamTransmitPoint_.rot, true, false, 20352, nil, 0, 7007)
end

function Quest7007:OnSubFinish700713(arg1)
    print("OnSubFinish700713")
    this:NpcDestroyImmediately(20352, npcs.Npc1334.alias)
    this:ActorDestroy("Q7007DreamTransmit", 7007)
end

function Quest7007:OnSubStart700714(arg1)
    print("OnSubStart700714")
    this:QuestNarratorTask(datas.Q7007DreamKaiche01, nil)
    actorMgr:CreateActorWithPos("Q7007DreamKaiche02", "Actor/Gadget/Q7007DreamKaiche02", 70900002, 0, points._Q7007DreamKaiche02Point_.pos, points._Q7007DreamKaiche02Point_.rot, true, false, 20352, nil, 0, 7007)
end

function Quest7007:OnSubFinish700714(arg1)
    print("OnSubFinish700714")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:ActorDestroy("Q7007DreamKaiche02", 7007)
end

function Quest7007:OnSubFailed700714(arg1)
    print("OnSubFailed700714")
    this:RecycleAllRes()
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:ActorDestroy("Q7007DreamKaiche02", 7007)
end

function Quest7007:OnSubStart700715(arg1)
    print("OnSubStart700715")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1334.id, 0, 700715, 30, true)
end

function Quest7007:OnSubFinish700715(arg1)
    print("OnSubFinish700715")
    this:NpcDestroyImmediately(20352, npcs.Npc1334.alias)
end

function Quest7007:OnSubStart700704(arg1)
    print("OnSubStart700704")
end

function Quest7007:OnSubFinish700704(arg1)
    print("OnSubFinish700704")
end

function Quest7007:OnSubStart700703(arg1)
    print("OnSubStart700703")
    this:CreateQuestNpc(arg1, npcs.Npc16641.id, 0, false, 0)
end

function Quest7007:OnSubFinish700703(arg1)
    print("OnSubFinish700703")
end

function Quest7007:OnSubStart700702(arg1)
    print("OnSubStart700702")
    this:CreateQuestNpc(arg1, npcs.Npc1334.id, 0, false, 0)
end

function Quest7007:OnSubFinish700702(arg1)
    print("OnSubFinish700702")
end

return Quest7007
