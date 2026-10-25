require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5016 = class("Quest5016", QuestActorProxy)
Quest5016.defaultAlias = "Quest5016"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5016:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["501601"] = self.OnSubStart501601,
        ["501618"] = self.OnSubStart501618,
        ["501602"] = self.OnSubStart501602,
        ["501603"] = self.OnSubStart501603,
        ["501604"] = self.OnSubStart501604,
        ["501605"] = self.OnSubStart501605,
        ["501620"] = self.OnSubStart501620,
        ["501606"] = self.OnSubStart501606,
        ["501607"] = self.OnSubStart501607,
        ["501608"] = self.OnSubStart501608,
        ["501609"] = self.OnSubStart501609,
        ["501610"] = self.OnSubStart501610,
        ["501611"] = self.OnSubStart501611,
        ["501612"] = self.OnSubStart501612,
        ["501619"] = self.OnSubStart501619,
        ["501613"] = self.OnSubStart501613,
        ["501614"] = self.OnSubStart501614,
        ["501615"] = self.OnSubStart501615,
        ["501616"] = self.OnSubStart501616,
        ["501617"] = self.OnSubStart501617
    }
end

function Quest5016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["501601"] = self.OnSubFinish501601,
        ["501618"] = self.OnSubFinish501618,
        ["501602"] = self.OnSubFinish501602,
        ["501603"] = self.OnSubFinish501603,
        ["501604"] = self.OnSubFinish501604,
        ["501605"] = self.OnSubFinish501605,
        ["501620"] = self.OnSubFinish501620,
        ["501606"] = self.OnSubFinish501606,
        ["501607"] = self.OnSubFinish501607,
        ["501608"] = self.OnSubFinish501608,
        ["501609"] = self.OnSubFinish501609,
        ["501610"] = self.OnSubFinish501610,
        ["501611"] = self.OnSubFinish501611,
        ["501612"] = self.OnSubFinish501612,
        ["501619"] = self.OnSubFinish501619,
        ["501613"] = self.OnSubFinish501613,
        ["501614"] = self.OnSubFinish501614,
        ["501615"] = self.OnSubFinish501615,
        ["501616"] = self.OnSubFinish501616,
        ["501617"] = self.OnSubFinish501617
    }
end

function Quest5016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["501618"] = self.OnSubFailed501618, ["501606"] = self.OnSubFailed501606}
end

function Quest5016:Start()
    print("Start")
end

function Quest5016:OnDestroy()
    print("OnDestroy")
end

function Quest5016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5016:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5016:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5016:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5016:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5016:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5016:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5016:OnSubStart501601(arg1)
    print("OnSubStart501601")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501601, 0, 5, 0, npcs.Npc1096.id)
end

function Quest5016:OnSubFinish501601(arg1)
    print("OnSubFinish501601")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId501601, nil)
    end)
end

function Quest5016:OnSubStart501618(arg1)
    print("OnSubStart501618")
end

function Quest5016:OnSubFinish501618(arg1)
    print("OnSubFinish501618")
end

function Quest5016:OnSubFailed501618(arg1)
    print("OnSubFailed501618")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:ActorDestroy("Q501603Trigger")
    this:ActorDestroy("Q501605Trigger")
    this:ActorDestroy("Q501620Trigger")
    this:DestroyNpcTrigger("Q501602N1096Trigger")
    this:DestroyNpcTrigger("Q501603N1096Trigger")
    this:DestroyNpcTrigger("Q501604N1096Trigger")
    this:ClearNarratorTask()
end

function Quest5016:OnSubStart501602(arg1)
    print("OnSubStart501602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501602, 0, 5, 1, npcs.Npc1096.id)
end

function Quest5016:OnSubFinish501602(arg1)
    print("OnSubFinish501602")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:ClearNarratorTask()
end

function Quest5016:OnSubStart501603(arg1)
    print("OnSubStart501603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501603, 0, 5, 1, npcs.Npc1096.id)
    actorMgr:CreateActorWithPos("Q501603Trigger", "Actor/Gadget/Q501603Trigger", 70900002, 0, points._Q501603TriggerPoint_.pos, points._Q501603TriggerPoint_.rot, true, false, 3)
end

function Quest5016:OnSubFinish501603(arg1)
    print("OnSubFinish501603")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:ClearNarratorTask()
end

function Quest5016:OnSubStart501604(arg1)
    print("OnSubStart501604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501604, 0, 5, 1, npcs.Npc1096.id)
end

function Quest5016:OnSubFinish501604(arg1)
    print("OnSubFinish501604")
end

function Quest5016:OnSubStart501605(arg1)
    print("OnSubStart501605")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1096.id, arg1)
    actorMgr:CreateActorWithPos("Q501605Trigger", "Actor/Gadget/Q501605Trigger", 70900002, 0, points._Q501605TriggerPoint_.pos, points._Q501605TriggerPoint_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("501505", 2, function(arg1)
            this:GetQuestNpcActor(npcs.Npc1096.alias, 5016):DoFreeStyle(1190, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc1096.alias, 5016):DisableInteeHeadCtrl(true)
        end)
    end)
end

function Quest5016:OnSubFinish501605(arg1)
    print("OnSubFinish501605")
    this:QuestNarratorTask(datas.NarratorWithId501603, nil)
end

function Quest5016:OnSubStart501620(arg1)
    print("OnSubStart501620")
    this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 5016):DoFreeStyle(1190, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q501620Trigger", "Actor/Gadget/Q501620Trigger", 70900002, 0, points._Q501620TriggerPoint_.pos, points._Q501620TriggerPoint_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 5016):DisableInteeHeadCtrl(true)
end

function Quest5016:OnSubFinish501620(arg1)
    print("OnSubFinish501620")
end

function Quest5016:OnSubStart501606(arg1)
    print("OnSubStart501606")
    this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 5016):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(501606, 0, 5, 0, npcs.Npc1094.id)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 5016):DisableInteeHeadCtrl(true)
    this:ActorDestroy("Q501607Trigger")
end

function Quest5016:OnSubFinish501606(arg1)
    print("OnSubFinish501606")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 5016):DisableInteeHeadCtrl(false)
end

function Quest5016:OnSubFailed501606(arg1)
    print("OnSubFailed501606")
    this:TransmitPlayerByData(arg1, 3, datas.YeShenTransmitData, nil, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:DestroyNpcTrigger("Q501606N1094Trigger")
    this:DestroyNpcTrigger("Q501607N1094Trigger")
    this:DestroyNpcTrigger("Q501608N1096Trigger")
end

function Quest5016:OnSubStart501607(arg1)
    print("OnSubStart501607")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1094.id, 0, 501607, 8, true)
    actorMgr:CreateActorWithPos("Q501607Trigger", "Actor/Gadget/Q501607Trigger", 70900002, 0, points._Q501607TriggerPoint_.pos, points._Q501607TriggerPoint_.rot, true, false, 3)
end

function Quest5016:OnSubFinish501607(arg1)
    print("OnSubFinish501607")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:TransmitPlayerByData(arg1, 2, datas.YeShenTransmitData, nil, nil, nil)
    this:ActorDestroy("Q501607Trigger")
end

function Quest5016:OnSubStart501608(arg1)
    print("OnSubStart501608")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1096.id, 0, 501608, 8, true)
end

function Quest5016:OnSubFinish501608(arg1)
    print("OnSubFinish501608")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest5016:OnSubStart501609(arg1)
    print("OnSubStart501609")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501609, 0, 45, 0, npcs.Npc1096.id)
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 5016):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14525.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14537.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14535.id, 0, false, 0)
end

function Quest5016:OnSubFinish501609(arg1)
    print("OnSubFinish501609")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14525.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14537.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14535.alias, 3)
end

function Quest5016:OnSubStart501610(arg1)
    print("OnSubStart501610")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1094.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId501604, nil)
        this:CallDelayByQuest("501610", 1, function(arg1)
            this:GetQuestNpcActor(npcs.Npc1094.alias, 5016):DoFreeStyle(4100, true, nil, true, true, false, false)
        end)
    end)
end

function Quest5016:OnSubFinish501610(arg1)
    print("OnSubFinish501610")
end

function Quest5016:OnSubStart501611(arg1)
    print("OnSubStart501611")
    this:NpcCreateWithNpcTrigger(npcs.Npc1094.id, 0, 60, 501611)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 5016):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest5016:OnSubFinish501611(arg1)
    print("OnSubFinish501611")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest5016:OnSubStart501612(arg1)
    print("OnSubStart501612")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1096.id, 0, 501612, 5, true)
end

function Quest5016:OnSubFinish501612(arg1)
    print("OnSubFinish501612")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14544.alias, 3)
end

function Quest5016:OnSubStart501619(arg1)
    print("OnSubStart501619")
end

function Quest5016:OnSubFinish501619(arg1)
    print("OnSubFinish501619")
end

function Quest5016:OnSubStart501613(arg1)
    print("OnSubStart501613")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501613, 0, 20, 1, npcs.Npc14235.id)
end

function Quest5016:OnSubFinish501613(arg1)
    print("OnSubFinish501613")
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest5016:OnSubStart501614(arg1)
    print("OnSubStart501614")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501614, 0, 10, 1, npcs.Npc1096.id)
end

function Quest5016:OnSubFinish501614(arg1)
    print("OnSubFinish501614")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
end

function Quest5016:OnSubStart501615(arg1)
    print("OnSubStart501615")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501615, 0, 15, 1, npcs.Npc1096.id)
end

function Quest5016:OnSubFinish501615(arg1)
    print("OnSubFinish501615")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest5016:OnSubStart501616(arg1)
    print("OnSubStart501616")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1096.id, 0, 501616, 40, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
end

function Quest5016:OnSubFinish501616(arg1)
    print("OnSubFinish501616")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1099)
end

function Quest5016:OnSubStart501617(arg1)
    print("OnSubStart501617")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501617, 0, 5, 1, npcs.Npc1096.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
end

function Quest5016:OnSubFinish501617(arg1)
    print("OnSubFinish501617")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:LightNotifyTo(npcs.Npc6012.alias, 0, true)
end

return Quest5016
