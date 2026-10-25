require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7006 = class("Quest7006", QuestActorProxy)
Quest7006.defaultAlias = "Quest7006"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7006:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["700601"] = self.OnSubStart700601,
        ["700602"] = self.OnSubStart700602,
        ["700611"] = self.OnSubStart700611,
        ["700603"] = self.OnSubStart700603,
        ["700604"] = self.OnSubStart700604,
        ["700605"] = self.OnSubStart700605,
        ["700609"] = self.OnSubStart700609,
        ["700606"] = self.OnSubStart700606,
        ["700610"] = self.OnSubStart700610,
        ["700607"] = self.OnSubStart700607,
        ["700608"] = self.OnSubStart700608
    }
end

function Quest7006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["700601"] = self.OnSubFinish700601,
        ["700602"] = self.OnSubFinish700602,
        ["700611"] = self.OnSubFinish700611,
        ["700603"] = self.OnSubFinish700603,
        ["700604"] = self.OnSubFinish700604,
        ["700605"] = self.OnSubFinish700605,
        ["700609"] = self.OnSubFinish700609,
        ["700606"] = self.OnSubFinish700606,
        ["700610"] = self.OnSubFinish700610,
        ["700607"] = self.OnSubFinish700607,
        ["700608"] = self.OnSubFinish700608
    }
end

function Quest7006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["700610"] = self.OnSubFailed700610,
        ["700607"] = self.OnSubFailed700607,
        ["700608"] = self.OnSubFailed700608
    }
end

function Quest7006:Start()
    print("Start")
end

function Quest7006:OnDestroy()
    print("OnDestroy")
end

function Quest7006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7006:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q700601TransmitOut", 7006)
    this:ActorDestroy("Q700606Transmit", 7006)
end

function Quest7006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 700611 then
        actorUtils.FinishQuestID(false, 700611)
    end
end

function Quest7006:ActorDestroy(arg1, arg2)
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

function Quest7006:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7006:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7006:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7006:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7006:OnSubStart700601(arg1)
    print("OnSubStart700601")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16645.id, 0, 700601, 60, true)
    actorMgr:CreateActorWithPos("Q700601TransmitOut", "Actor/Gadget/Q700601TransmitOut", 70900002, 0, points._Q700601TransmitOutPoint_.pos, points._Q700601TransmitOutPoint_.rot, true, false, 20352, nil, 0, 7006)
end

function Quest7006:OnSubFinish700601(arg1)
    print("OnSubFinish700601")
    this:NpcDestroyImmediately(20352, npcs.Npc16645.alias)
    this:ActorDestroy("Q700601TransmitOut", 7006)
end

function Quest7006:OnSubStart700602(arg1)
    print("OnSubStart700602")
    this:NpcCreateWithNpcTrigger(npcs.Npc1331.id, 0, 10, 700602)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7006):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1333.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7006):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16641.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16641.alias, 7006):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16641.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16645.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16645.alias, 7006):DoFreeStyle(1040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16645.alias, 7006):DisableInteeHeadCtrl(true)
end

function Quest7006:OnSubFinish700602(arg1)
    print("OnSubFinish700602")
    this:NpcDestroyImmediately(20352, npcs.Npc1331.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1335.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16641.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16645.alias)
end

function Quest7006:OnSubStart700611(arg1)
    print("OnSubStart700611")
end

function Quest7006:OnSubFinish700611(arg1)
    print("OnSubFinish700611")
end

function Quest7006:OnSubStart700603(arg1)
    print("OnSubStart700603")
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7006):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7006):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1335.id, 0, 4, 700603)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1333.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7006):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16645.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16645.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16646.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16646.alias, 7006):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16646.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16642.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16642.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1334.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1334.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16647.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16647.alias, 7006):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16647.alias, 7006):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16641.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16641.alias, 7006):DisableInteeHeadCtrl(true)
end

function Quest7006:OnSubFinish700603(arg1)
    print("OnSubFinish700603")
    this:NpcDestroyImmediately(20352, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1335.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16645.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1331.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16646.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16642.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1334.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16647.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16641.alias)
end

function Quest7006:OnSubStart700604(arg1)
    print("OnSubStart700604")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1332.id, 0, 700604, 30, true)
end

function Quest7006:OnSubFinish700604(arg1)
    print("OnSubFinish700604")
end

function Quest7006:OnSubStart700605(arg1)
    print("OnSubStart700605")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1332.id, 0, 700605, 20, true)
end

function Quest7006:OnSubFinish700605(arg1)
    print("OnSubFinish700605")
    this:NpcDestroyImmediately(20352, npcs.Npc1332.alias)
end

function Quest7006:OnSubStart700609(arg1)
    print("OnSubStart700609")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1334.id, 0, 700609, 45, true)
end

function Quest7006:OnSubFinish700609(arg1)
    print("OnSubFinish700609")
    this:NpcDestroyImmediately(20352, npcs.Npc1334.alias)
end

function Quest7006:OnSubStart700606(arg1)
    print("OnSubStart700606")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16646.id, 0, 700606, 30, true)
    actorMgr:CreateActorWithPos("Q700606Transmit", "Actor/Gadget/Q700606Transmit", 70900002, 0, points._Q700606TransmitPoint_.pos, points._Q700606TransmitPoint_.rot, true, false, 20352, nil, 0, 7006)
end

function Quest7006:OnSubFinish700606(arg1)
    print("OnSubFinish700606")
    this:NpcDestroyImmediately(20352, npcs.Npc16646.alias)
    this:ActorDestroy("Q700606Transmit", 7006)
end

function Quest7006:OnSubStart700610(arg1)
    print("OnSubStart700610")
    this:DeployStoryByQuest(110700602)
end

function Quest7006:OnSubFinish700610(arg1)
    print("OnSubFinish700610")
    this:CancelStoryByQuest(110700602)
end

function Quest7006:OnSubFailed700610(arg1)
    print("OnSubFailed700610")
    this:RecycleAllRes()
end

function Quest7006:OnSubStart700607(arg1)
    print("OnSubStart700607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(700607, 0, 30, 1, npcs.Npc16646.id)
end

function Quest7006:OnSubFinish700607(arg1)
    print("OnSubFinish700607")
    this:NpcDestroyImmediately(20352, npcs.Npc16646.alias)
end

function Quest7006:OnSubFailed700607(arg1)
    print("OnSubFailed700607")
    this:RecycleAllRes()
end

function Quest7006:OnSubStart700608(arg1)
    print("OnSubStart700608")
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:QuestNarratorTask(datas.Q700608Kaiche, nil)
    this:DeployStoryByQuest(110700602)
end

function Quest7006:OnSubFinish700608(arg1)
    print("OnSubFinish700608")
    this:NpcDestroyImmediately(20352, npcs.Npc1332.alias)
    this:CancelStoryByQuest(110700602)
end

function Quest7006:OnSubFailed700608(arg1)
    print("OnSubFailed700608")
    this:RecycleAllRes()
end

return Quest7006
