require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40091 = class("Quest40091", QuestActorProxy)
Quest40091.defaultAlias = "Quest40091"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40091:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40091:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4009101"] = self.OnSubStart4009101,
        ["4009102"] = self.OnSubStart4009102,
        ["4009103"] = self.OnSubStart4009103,
        ["4009104"] = self.OnSubStart4009104,
        ["4009105"] = self.OnSubStart4009105,
        ["4009106"] = self.OnSubStart4009106,
        ["4009107"] = self.OnSubStart4009107,
        ["4009108"] = self.OnSubStart4009108,
        ["4009109"] = self.OnSubStart4009109,
        ["4009110"] = self.OnSubStart4009110,
        ["4009111"] = self.OnSubStart4009111,
        ["4009112"] = self.OnSubStart4009112,
        ["4009113"] = self.OnSubStart4009113,
        ["4009117"] = self.OnSubStart4009117,
        ["4009114"] = self.OnSubStart4009114,
        ["4009115"] = self.OnSubStart4009115,
        ["4009116"] = self.OnSubStart4009116
    }
end

function Quest40091:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4009101"] = self.OnSubFinish4009101,
        ["4009102"] = self.OnSubFinish4009102,
        ["4009103"] = self.OnSubFinish4009103,
        ["4009104"] = self.OnSubFinish4009104,
        ["4009105"] = self.OnSubFinish4009105,
        ["4009106"] = self.OnSubFinish4009106,
        ["4009107"] = self.OnSubFinish4009107,
        ["4009108"] = self.OnSubFinish4009108,
        ["4009109"] = self.OnSubFinish4009109,
        ["4009110"] = self.OnSubFinish4009110,
        ["4009111"] = self.OnSubFinish4009111,
        ["4009112"] = self.OnSubFinish4009112,
        ["4009113"] = self.OnSubFinish4009113,
        ["4009117"] = self.OnSubFinish4009117,
        ["4009114"] = self.OnSubFinish4009114,
        ["4009115"] = self.OnSubFinish4009115,
        ["4009116"] = self.OnSubFinish4009116
    }
end

function Quest40091:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40091:Start()
    print("Start")
end

function Quest40091:OnDestroy()
    print("OnDestroy")
end

function Quest40091:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40091:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40091:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1057Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12944Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12969Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12970Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12942Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12941Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12943Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13101Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40091Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40091Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40091Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40091Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q4009103N1057Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009108N1057Trigger", 3, false)
    globalActor:LeaveWeather()
    self:DestroyClueThings()
end

function Quest40091:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest40091:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 4009117)
        globalActor:ChangeDay24Time(22, true)
        globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
        actorMgr:CreateActorWithPos("Q40091Trigger3", "Actor/Gadget/Q40091Trigger3", 70900002, 0, {x = -2761.039, y = 215.4201, z = -4592.623}, {x = 0, y = 0, z = 0}, true, false, 3)
    elseif arg1 == 2 then
        globalActor:ChangeDay24Time(22, true)
        globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
        actorMgr:CreateActorWithPos("Q40091Trigger3", "Actor/Gadget/Q40091Trigger3", 70900002, 0, {x = -2761.039, y = 215.4201, z = -4592.623}, {x = 0, y = 0, z = 0}, true, false, 3)
    elseif arg1 == 3 then
        globalActor:ChangeDay24Time(3.3, true)
        globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
        actorMgr:CreateActorWithPos("Q40091Trigger3", "Actor/Gadget/Q40091Trigger3", 70900002, 0, {x = -2761.039, y = 215.4201, z = -4592.623}, {x = 0, y = 0, z = 0}, true, false, 3)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 4009118)
    elseif arg1 == 5 then
        actorUtils.FinishQuestID(false, 4009119)
    elseif arg1 == 6 then
        globalActor:ChangeDay24Time(18, true)
        globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
        actorMgr:CreateActorWithPos("Q40091Trigger3", "Actor/Gadget/Q40091Trigger3", 70900002, 0, {x = -2761.039, y = 215.4201, z = -4592.623}, {x = 0, y = 0, z = 0}, true, false, 3)
    end
end

function Quest40091:CreateClueThings()
    print("CreateClueThings")
    this:CreateLocalGadget(70710837, "1", {x = -2773.976, y = 225.286, z = -4442.553}, {x = -90.0, y = 300.8, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70710837, "2", {x = -2774.073, y = 225.062, z = -4442.775}, {x = -90.0, y = 263.0, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70710929, "1", {x = -2775.92, y = 223.715, z = -4451.03}, {x = 0.5, y = 0.0, z = -14.02}, 3, nil, nil, false)
    this:CreateLocalGadget(70710928, "1", {x = -2776.607, y = 224.371, z = -4450.468}, {x = 306.1, y = -50.4, z = 85.9}, 3, nil, nil, false)
    this:CreateLocalGadget(70710929, "2", {x = -2790.224, y = 226.074, z = -4472.343}, {x = 0.0, y = 17.04, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70710928, "2", {x = -2790.594, y = 226.458, z = -4472.085}, {x = 294.58, y = -27, z = 98}, 3, nil, nil, false)
end

function Quest40091:DestroyClueThings()
    print("DestroyClueThings")
    self:RemoveLocalGadget(70710837, "1")
    self:RemoveLocalGadget(70710837, "2")
    self:RemoveLocalGadget(70710929, "1")
    self:RemoveLocalGadget(70710928, "1")
    self:RemoveLocalGadget(70710929, "2")
    self:RemoveLocalGadget(70710928, "2")
end

function Quest40091:OnSubStart4009101(arg1)
    print("OnSubStart4009101")
end

function Quest40091:OnSubFinish4009101(arg1)
    print("OnSubFinish4009101")
    if self:GetSubQuestState(302901) ~= 2 then
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end
end

function Quest40091:OnSubStart4009102(arg1)
    print("OnSubStart4009102")
    self:CreateQuestNpcWithTriggerBlack("Q4009102Trigger", 4009102, npcs.Npc1057Data.id, 0, 8)
end

function Quest40091:OnSubFinish4009102(arg1)
    print("OnSubFinish4009102")
    self:ClearNarratorTask()
    self:StopNarrator()
    this:DestroyQuestNpcActor(npcs.Npc1057Data.alias, 3)
end

function Quest40091:OnSubStart4009103(arg1)
    print("OnSubStart4009103")
    this:NpcCreateWithTriggerBlack(npcs.Npc1057Data.id, 4009103, 1)
    this:CreateLocalGadget(70710929, "1", {x = -2775.92, y = 223.715, z = -4451.03}, {x = 0.5, y = 0.0, z = -14.02}, 3, nil, nil, false)
    this:CreateLocalGadget(70710928, "1", {x = -2775.785, y = 224.197, z = -4450.842}, {x = -130.0, y = 8.4, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70710929, "2", {x = -2790.224, y = 226.074, z = -4472.343}, {x = 0.0, y = 17.04, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70710928, "2", {x = -2790.215, y = 226.38, z = -4472.159}, {x = -140.0, y = -234.7, z = -14.1}, 3, nil, nil, false)
end

function Quest40091:OnSubFinish4009103(arg1)
    print("OnSubFinish4009103")
end

function Quest40091:OnSubStart4009104(arg1)
    print("OnSubStart4009104")
    this:CreateQuestNpc(arg1, npcs.Npc12969Data.id, 1)
    this:CreateClueThings()
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1057Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40091:OnSubFinish4009104(arg1)
    print("OnSubFinish4009104")
    this:SafeDestroyQuestNpc(npcs.Npc12969Data.alias, 3)
end

function Quest40091:OnSubStart4009105(arg1)
    print("OnSubStart4009105")
    this:CreateQuestNpc(arg1, npcs.Npc12970Data.id, 1)
    this:CreateClueThings()
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1057Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40091:OnSubFinish4009105(arg1)
    print("OnSubFinish4009105")
    this:SafeDestroyQuestNpc(npcs.Npc12970Data.alias, 3)
end

function Quest40091:OnSubStart4009106(arg1)
    print("OnSubStart4009106")
    this:CreateClueThings()
end

function Quest40091:OnSubFinish4009106(arg1)
    print("OnSubFinish4009106")
    this:DestroyQuestNpcActor(npcs.Npc1057Data.alias, 3)
end

function Quest40091:OnSubStart4009107(arg1)
    print("OnSubStart4009107")
    this:CreateQuestNpc(arg1, npcs.Npc12942Data.id, 0)
    this:CreateQuestNpcWithTrigger("Q4009107Trigger", 4009107, npcs.Npc12941Data.id, 0, 8)
    this:CreateQuestNpc(arg1, npcs.Npc12943Data.id, 0)
    this:CreateClueThings()
end

function Quest40091:OnSubFinish4009107(arg1)
    print("OnSubFinish4009107")
    this:DestroyQuestNpcActor(npcs.Npc1057Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc12941Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc12942Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc12943Data.alias, 3)
end

function Quest40091:OnSubStart4009108(arg1)
    print("OnSubStart4009108")
    this:NpcCreateWithTriggerBlack(npcs.Npc1057Data.id, 4009108, 1)
    this:CreateClueThings()
end

function Quest40091:OnSubFinish4009108(arg1)
    print("OnSubFinish4009108")
end

function Quest40091:OnSubStart4009109(arg1)
    print("OnSubStart4009109")
    this:CreateQuestNpc(arg1, npcs.Npc12942Data.id, 0)
    this:CreateClueThings()
    self:GetQuestNpcActor(npcs.Npc1057Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12941Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12942Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12943Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest40091:OnSubFinish4009109(arg1)
    print("OnSubFinish4009109")
end

function Quest40091:OnSubStart4009110(arg1)
    print("OnSubStart4009110")
    this:CreateQuestNpc(arg1, npcs.Npc12941Data.id, 0)
    this:CreateClueThings()
    self:GetQuestNpcActor(npcs.Npc1057Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12941Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12942Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12943Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest40091:OnSubFinish4009110(arg1)
    print("OnSubFinish4009110")
end

function Quest40091:OnSubStart4009111(arg1)
    print("OnSubStart4009111")
    this:CreateQuestNpc(arg1, npcs.Npc12943Data.id, 0)
    this:CreateClueThings()
    self:GetQuestNpcActor(npcs.Npc1057Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12941Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12942Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12943Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest40091:OnSubFinish4009111(arg1)
    print("OnSubFinish4009111")
end

function Quest40091:OnSubStart4009112(arg1)
    print("OnSubStart4009112")
    this:CreateClueThings()
    self:GetQuestNpcActor(npcs.Npc1057Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12941Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12942Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12943Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest40091:OnSubFinish4009112(arg1)
    print("OnSubFinish4009112")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1057Data.alias, 3)
end

function Quest40091:OnSubStart4009113(arg1)
    print("OnSubStart4009113")
    actorMgr:CreateActorWithPos("Q40091Trigger", "Actor/Gadget/Q40091Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4009115_N1057").pos, sceneData:GetDummyPoint(3, "Q4009115_N1057").rot, true, false, 3)
    this:CreateClueThings()
end

function Quest40091:OnSubFinish4009113(arg1)
    print("OnSubFinish4009113")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40091:OnSubStart4009117(arg1)
    print("OnSubStart4009117")
end

function Quest40091:OnSubFinish4009117(arg1)
    print("OnSubFinish4009117")
end

function Quest40091:OnSubStart4009114(arg1)
    print("OnSubStart4009114")
    this:CreateQuestNpc(arg1, npcs.Npc13101Data.id, 0)
end

function Quest40091:OnSubFinish4009114(arg1)
    print("OnSubFinish4009114")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
        arg1:DestroyClueThings()
        globalActor:LeaveWeather()
        actorMgr:DestroyEntityActor("Q40091Trigger3", 3, false)
    end)

    self:SafeDestroyQuestNpc(npcs.Npc12944Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc13101Data.alias, 3)
end

function Quest40091:OnSubStart4009115(arg1)
    print("OnSubStart4009115")
    self:CreateQuestNpc(arg1, npcs.Npc12941Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12942Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12943Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
    questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = self:GetQuestNpcActor(npcs.Npc12941Data.alias)
    v:DoFreeStyle(1060, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12942Data.alias)
    questNpcActor2:DoFreeStyle(1160, true, nil, true, true, false, true)
    questNpcActor2:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12943Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    local questNpcActor3 = self:GetQuestNpcActor(npcs.Npc1044Data.alias)
    questNpcActor3:DoFreeStyle(1220, true, nil, true, true, false, true)
    questNpcActor3:DisableInteeHeadCtrl(true)
    local questNpcActor4 = self:GetQuestNpcActor(npcs.Npc1039Data.alias)
    questNpcActor4:DoFreeStyle(1120, true, nil, true, true, false, true)
    questNpcActor4:DisableInteeHeadCtrl(true)
end

function Quest40091:OnSubFinish4009115(arg1)
    print("OnSubFinish4009115")
    globalActor:LeaveWeather()
    actorMgr:DestroyEntityActor("Q40091Trigger3", 3, false)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40091:OnSubStart4009116(arg1)
    print("OnSubStart4009116")
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 5)
    this:CreateQuestNpcWithTriggerBlack("Q4009116Trigger", 4009116, 12944, 0, 5, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias)
    questNpcActor:SitOnChair()
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
    v:SitOnChair()
    v:DisableInteeHeadCtrl(true)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
    questNpcActor2:DoFreeStyle(1230, true, nil, true, true, false, true)
    questNpcActor2:DisableInteeHeadCtrl(true)
    local questNpcActor3 = self:GetQuestNpcActor(npcs.Npc12941Data.alias)
    questNpcActor3:DoFreeStyle(1060, true, nil, true, true, false, true)
    questNpcActor3:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    local questNpcActor4 = self:GetQuestNpcActor(npcs.Npc1044Data.alias)
    questNpcActor4:DoFreeStyle(1220, true, nil, true, true, false, true)
    questNpcActor4:DisableInteeHeadCtrl(true)
    local questNpcActor5 = self:GetQuestNpcActor(npcs.Npc1039Data.alias)
    questNpcActor5:DoFreeStyle(1120, true, nil, true, true, false, true)
    questNpcActor5:DisableInteeHeadCtrl(true)
    local questNpcActor6 = self:GetQuestNpcActor(npcs.Npc12942Data.alias)
    questNpcActor6:DoFreeStyle(1160, true, nil, true, true, false, true)
    questNpcActor6:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12943Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    local questNpcActor7 = self:GetQuestNpcActor(npcs.Npc1034Data.alias)
    questNpcActor7:DoFreeStyle(1120, true, nil, true, true, false, true)
    questNpcActor7:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40091:OnSubFinish4009116(arg1)
    print("OnSubFinish4009116")
    this:SafeDestroyQuestNpc(npcs.Npc12944Data.alias, 3)
    globalActor:LeaveWeather()
    actorMgr:DestroyEntityActor("Q40091Trigger3", 3, false)
    actorMgr:CreateActorWithPos("Q40091Trigger2", "Actor/Gadget/Q40091Trigger2", 70900002, 0, {x = -2761.039, y = 215.4201, z = -4592.623}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc1039Data.id)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1160, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    local v = self:GetQuestNpcActor(npcs.Npc1032Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1230, true, nil, true, true, false, true)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc1057Data.alias)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:DoFreeStyle(1130, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc1039Data.alias):DoFreeStyle(1220, true, nil, true, true, false, true)
end

return Quest40091
