require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7005 = class("Quest7005", QuestActorProxy)
Quest7005.defaultAlias = "Quest7005"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7005:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["700511"] = self.OnSubStart700511,
        ["700501"] = self.OnSubStart700501,
        ["700502"] = self.OnSubStart700502,
        ["700503"] = self.OnSubStart700503,
        ["700504"] = self.OnSubStart700504,
        ["700505"] = self.OnSubStart700505,
        ["700506"] = self.OnSubStart700506,
        ["700507"] = self.OnSubStart700507,
        ["700508"] = self.OnSubStart700508,
        ["700515"] = self.OnSubStart700515,
        ["700509"] = self.OnSubStart700509,
        ["700510"] = self.OnSubStart700510,
        ["700514"] = self.OnSubStart700514,
        ["700516"] = self.OnSubStart700516,
        ["700512"] = self.OnSubStart700512,
        ["700513"] = self.OnSubStart700513
    }
end

function Quest7005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["700511"] = self.OnSubFinish700511,
        ["700501"] = self.OnSubFinish700501,
        ["700502"] = self.OnSubFinish700502,
        ["700503"] = self.OnSubFinish700503,
        ["700504"] = self.OnSubFinish700504,
        ["700505"] = self.OnSubFinish700505,
        ["700506"] = self.OnSubFinish700506,
        ["700507"] = self.OnSubFinish700507,
        ["700508"] = self.OnSubFinish700508,
        ["700515"] = self.OnSubFinish700515,
        ["700509"] = self.OnSubFinish700509,
        ["700510"] = self.OnSubFinish700510,
        ["700514"] = self.OnSubFinish700514,
        ["700516"] = self.OnSubFinish700516,
        ["700512"] = self.OnSubFinish700512,
        ["700513"] = self.OnSubFinish700513
    }
end

function Quest7005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["700502"] = self.OnSubFailed700502, ["700512"] = self.OnSubFailed700512}
end

function Quest7005:Start()
    print("Start")
end

function Quest7005:OnDestroy()
    print("OnDestroy")
end

function Quest7005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7005:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q700501EnterDungeon", 7005)
    this:ActorDestroy("Q700502DungeonEntry", nil)
    this:ActorDestroy("Q7005DreamTransmit", 7005)
end

function Quest7005:ActorDestroy(arg1, arg2)
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

function Quest7005:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7005:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7005:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7005:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7005:OnSubStart700511(arg1)
    print("OnSubStart700511")
end

function Quest7005:OnSubFinish700511(arg1)
    print("OnSubFinish700511")
end

function Quest7005:OnSubStart700501(arg1)
    print("OnSubStart700501")
    if self:GetQuestVar(700501, 0) == 0 then
        actorMgr:CreateActorWithPos("Q700501EnterDungeon", "Actor/Gadget/Q700501EnterDungeon", 70900002, 0, points._Q700501EnterDungeonPoint_.pos, points._Q700501EnterDungeonPoint_.rot, true, false, 3, nil, 0, 7005)
    end
end

function Quest7005:OnSubFinish700501(arg1)
    print("OnSubFinish700501")
    this:ActorDestroy("Q700501EnterDungeon", 7005)
end

function Quest7005:OnSubStart700502(arg1)
    print("OnSubStart700502")
    this:NpcCreateWithNpcTrigger(npcs.Npc16646.id, 0, 20, 700502)
end

function Quest7005:OnSubFinish700502(arg1)
    print("OnSubFinish700502")
    this:NpcDestroyImmediately(20353, npcs.Npc16646.alias)
end

function Quest7005:OnSubFailed700502(arg1)
    print("OnSubFailed700502")
    this:RecycleAllRes()
end

function Quest7005:OnSubStart700503(arg1)
    print("OnSubStart700503")
    actorMgr:CreateActorWithPos("Q700502DungeonEntry", "Actor/Gadget/Q700502DungeonEntry", 70900002, 0, points._Q700502DungeonEntryPoint_.pos, points._Q700502DungeonEntryPoint_.rot, true, false, 20353, nil, 0, 7005)
end

function Quest7005:OnSubFinish700503(arg1)
    print("OnSubFinish700503")
    this:ActorDestroy("Q700502DungeonEntry", 7005)
end

function Quest7005:OnSubStart700504(arg1)
    print("OnSubStart700504")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1331.id, 0, 700504, 60, true)
end

function Quest7005:OnSubFinish700504(arg1)
    print("OnSubFinish700504")
    this:NpcDestroyImmediately(20352, npcs.Npc1331.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowReminder(1004840088)
        actorUtils.ShowContext("ZDAQBookPhotoObserveStatic")
    end, true)
end

function Quest7005:OnSubStart700505(arg1)
    print("OnSubStart700505")
end

function Quest7005:OnSubFinish700505(arg1)
    print("OnSubFinish700505")
end

function Quest7005:OnSubStart700506(arg1)
    print("OnSubStart700506")
end

function Quest7005:OnSubFinish700506(arg1)
    print("OnSubFinish700506")
end

function Quest7005:OnSubStart700507(arg1)
    print("OnSubStart700507")
end

function Quest7005:OnSubFinish700507(arg1)
    print("OnSubFinish700507")
end

function Quest7005:OnSubStart700508(arg1)
    print("OnSubStart700508")
end

function Quest7005:OnSubFinish700508(arg1)
    print("OnSubFinish700508")
end

function Quest7005:OnSubStart700515(arg1)
    print("OnSubStart700515")
end

function Quest7005:OnSubFinish700515(arg1)
    print("OnSubFinish700515")
end

function Quest7005:OnSubStart700509(arg1)
    print("OnSubStart700509")
end

function Quest7005:OnSubFinish700509(arg1)
    print("OnSubFinish700509")
end

function Quest7005:OnSubStart700510(arg1)
    print("OnSubStart700510")
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7005):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7005):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1333.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16642.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16642.alias, 7005):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16642.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16643.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16643.alias, 7005):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16643.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16645.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16645.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16646.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16646.alias, 7005):DoFreeStyle(1030, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16646.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16644.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16644.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16641.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16641.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1334.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1334.alias, 7005):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1334.alias, 7005):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16647.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16647.alias, 7005):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16647.alias, 7005):DisableInteeHeadCtrl(true)
end

function Quest7005:OnSubFinish700510(arg1)
    print("OnSubFinish700510")
end

function Quest7005:OnSubStart700514(arg1)
    print("OnSubStart700514")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1331.id, 0, 700514, 60, true)
end

function Quest7005:OnSubFinish700514(arg1)
    print("OnSubFinish700514")
    this:NpcDestroyImmediately(20352, npcs.Npc1331.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1334.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc1335.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16641.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16642.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16643.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16644.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16646.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16647.alias)
    this:NpcDestroyImmediately(20352, npcs.Npc16645.alias)
end

function Quest7005:OnSubStart700516(arg1)
    print("OnSubStart700516")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1333.id, 0, 700516, 20, true)
    actorMgr:CreateActorWithPos("Q7005DreamTransmit", "Actor/Gadget/Q7005DreamTransmit", 70900002, 0, points._Q7005DreamTransmitPoint_.pos, points._Q7005DreamTransmitPoint_.rot, true, false, 20352, nil, 0, 7005)
end

function Quest7005:OnSubFinish700516(arg1)
    print("OnSubFinish700516")
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
    this:ActorDestroy("Q7005DreamTransmit", 7005)
end

function Quest7005:OnSubStart700512(arg1)
    print("OnSubStart700512")
    this:QuestNarratorTask(datas.Q7005NightKaiche, nil)
    this:DeployStoryByQuest(110700501)
end

function Quest7005:OnSubFinish700512(arg1)
    print("OnSubFinish700512")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest7005:OnSubFailed700512(arg1)
    print("OnSubFailed700512")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110700501)
end

function Quest7005:OnSubStart700513(arg1)
    print("OnSubStart700513")
    this:NpcCreateWithNpcTriggerAndBlackscreen(700513, 0, 15, 1, npcs.Npc1333.id)
    this:DeployStoryByQuest(110700501)
end

function Quest7005:OnSubFinish700513(arg1)
    print("OnSubFinish700513")
    this:NpcDestroyImmediately(20352, npcs.Npc1333.alias)
    this:CancelStoryByQuest(110700501)
end

return Quest7005
