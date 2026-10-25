require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15003 = class("Quest15003", QuestActorProxy)
Quest15003.defaultAlias = "Quest15003"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15003:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500301"] = self.OnSubStart1500301,
        ["1500303"] = self.OnSubStart1500303,
        ["1500309"] = self.OnSubStart1500309,
        ["1500318"] = self.OnSubStart1500318,
        ["1500310"] = self.OnSubStart1500310,
        ["1500302"] = self.OnSubStart1500302,
        ["1500311"] = self.OnSubStart1500311,
        ["1500304"] = self.OnSubStart1500304,
        ["1500306"] = self.OnSubStart1500306,
        ["1500307"] = self.OnSubStart1500307,
        ["1500320"] = self.OnSubStart1500320,
        ["1500308"] = self.OnSubStart1500308,
        ["1500319"] = self.OnSubStart1500319,
        ["1500305"] = self.OnSubStart1500305,
        ["1500313"] = self.OnSubStart1500313,
        ["1500314"] = self.OnSubStart1500314,
        ["1500317"] = self.OnSubStart1500317,
        ["1500315"] = self.OnSubStart1500315,
        ["1500316"] = self.OnSubStart1500316,
        ["1500312"] = self.OnSubStart1500312,
        ["1500322"] = self.OnSubStart1500322
    }
end

function Quest15003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500301"] = self.OnSubFinish1500301,
        ["1500303"] = self.OnSubFinish1500303,
        ["1500309"] = self.OnSubFinish1500309,
        ["1500318"] = self.OnSubFinish1500318,
        ["1500310"] = self.OnSubFinish1500310,
        ["1500302"] = self.OnSubFinish1500302,
        ["1500311"] = self.OnSubFinish1500311,
        ["1500304"] = self.OnSubFinish1500304,
        ["1500306"] = self.OnSubFinish1500306,
        ["1500307"] = self.OnSubFinish1500307,
        ["1500320"] = self.OnSubFinish1500320,
        ["1500308"] = self.OnSubFinish1500308,
        ["1500319"] = self.OnSubFinish1500319,
        ["1500305"] = self.OnSubFinish1500305,
        ["1500313"] = self.OnSubFinish1500313,
        ["1500314"] = self.OnSubFinish1500314,
        ["1500317"] = self.OnSubFinish1500317,
        ["1500315"] = self.OnSubFinish1500315,
        ["1500316"] = self.OnSubFinish1500316,
        ["1500312"] = self.OnSubFinish1500312,
        ["1500322"] = self.OnSubFinish1500322
    }
end

function Quest15003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1500307"] = self.OnSubFailed1500307}
end

function Quest15003:Start()
    print("Start")
end

function Quest15003:OnDestroy()
    print("OnDestroy")
end

function Quest15003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15003:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1500322 then
        actorUtils.FinishQuestID(false, 1500322)
    end
end

function Quest15003:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest15003:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest15003:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15003:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15003:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest15003:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest15003:OnSubStart1500301(arg1)
    print("OnSubStart1500301")
end

function Quest15003:OnSubFinish1500301(arg1)
    print("OnSubFinish1500301")
    this:QuestNarratorTask(datas.NarratorWithId_1500394, nil)
end

function Quest15003:OnSubStart1500303(arg1)
    print("OnSubStart1500303")
    this:NpcCreateWithNpcTrigger(npcs.Npc14151.id, 0, 5, 1500303)
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15003):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14152.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15003):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6110.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6107.alias, true, 1)
end

function Quest15003:OnSubFinish1500303(arg1)
    print("OnSubFinish1500303")
    this:SafeDestroyQuestNpc(npcs.Npc14151.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14152.alias, 3)
    this:ClearNarratorTask()
    this:LightNotifyTo(npcs.Npc6107.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6110.alias, 0, true)
end

function Quest15003:OnSubStart1500309(arg1)
    print("OnSubStart1500309")
    this:NpcCreateWithNpcTrigger(npcs.Npc14154.id, 0, 5, 1500309)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15003):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14451.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14451.alias, 15003):DoFreeStyle(4452, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14452.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14452.alias, 15003):DoFreeStyle(4452, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6110.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc14486.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14486.alias, 15003):DoFreeStyle(4452, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14495.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14495.alias, 15003):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14496.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14496.alias, 15003):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14497.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14497.alias, 15003):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6107.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1500309_Narrator", "Actor/Gadget/Q1500309_Narrator", 70900002, 0, points.Point1500309.pos, points.Point1500309.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc14451.alias, 15003):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14452.alias, 15003):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14486.alias, 15003):DisableInteeHeadCtrl(true)
end

function Quest15003:OnSubFinish1500309(arg1)
    print("OnSubFinish1500309")
    this:SafeDestroyQuestNpc(npcs.Npc14154.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14451.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14452.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14486.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14495.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14496.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14497.alias, 3)
    this:ClearNarratorTask()
    this:ActorDestroy("Q1500309_Narrator")
    this:LightNotifyTo(npcs.Npc6107.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6110.alias, 0, true)
end

function Quest15003:OnSubStart1500318(arg1)
    print("OnSubStart1500318")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500318, 0, 40, 0.5, npcs.Npc14154.id)
end

function Quest15003:OnSubFinish1500318(arg1)
    print("OnSubFinish1500318")
end

function Quest15003:OnSubStart1500310(arg1)
    print("OnSubStart1500310")
    this:CreateQuestNpc(arg1, npcs.Npc14154.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15003):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15003:OnSubFinish1500310(arg1)
    print("OnSubFinish1500310")
end

function Quest15003:OnSubStart1500302(arg1)
    print("OnSubStart1500302")
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15003):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1500302, 0, 20, 0.5, npcs.Paimon.id)
end

function Quest15003:OnSubFinish1500302(arg1)
    print("OnSubFinish1500302")
    this:NpcDestroyWithBlackscreen(3, npcs.Paimon.alias)
end

function Quest15003:OnSubStart1500311(arg1)
    print("OnSubStart1500311")
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15003):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14299.id, 0, false, 0)
end

function Quest15003:OnSubFinish1500311(arg1)
    print("OnSubFinish1500311")
    this:SafeDestroyQuestNpc(npcs.Npc14299.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_1500397, nil)
end

function Quest15003:OnSubStart1500304(arg1)
    print("OnSubStart1500304")
    this:NpcCreateWithNpcTrigger(npcs.Npc14153.id, 0, 10, 1500304)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15003):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14154.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15003):DoFreeStyle(1180, true, nil, true, true, false, false)
end

function Quest15003:OnSubFinish1500304(arg1)
    print("OnSubFinish1500304")
    this:SafeDestroyQuestNpc(npcs.Npc14153.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14154.alias, 3)
end

function Quest15003:OnSubStart1500306(arg1)
    print("OnSubStart1500306")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500306, 0, 15, 1, npcs.Npc14155.id)
end

function Quest15003:OnSubFinish1500306(arg1)
    print("OnSubFinish1500306")
end

function Quest15003:OnSubStart1500307(arg1)
    print("OnSubStart1500307")
    this:DeployStoryByQuest(121500307)
end

function Quest15003:OnSubFinish1500307(arg1)
    print("OnSubFinish1500307")
    this:CancelStoryByQuest(121500307)
end

function Quest15003:OnSubFailed1500307(arg1)
    print("OnSubFailed1500307")
    this:CancelStoryByQuest(121500307)
    this:SafeDestroyQuestNpc(npcs.Npc14155.alias, 3)
end

function Quest15003:OnSubStart1500320(arg1)
    print("OnSubStart1500320")
end

function Quest15003:OnSubFinish1500320(arg1)
    print("OnSubFinish1500320")
end

function Quest15003:OnSubStart1500308(arg1)
    print("OnSubStart1500308")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500308, 0, 80, 1, npcs.Npc14155.id)
end

function Quest15003:OnSubFinish1500308(arg1)
    print("OnSubFinish1500308")
    this:SafeDestroyQuestNpc(npcs.Npc14155.alias, 3)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData02, nil, nil, nil)
    this:CancelStoryByQuest(121500307)
end

function Quest15003:OnSubStart1500319(arg1)
    print("OnSubStart1500319")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500319, 0, 50, 1, npcs.Npc14155.id)
end

function Quest15003:OnSubFinish1500319(arg1)
    print("OnSubFinish1500319")
    this:SafeDestroyQuestNpc(npcs.Npc14155.alias, 3)
    this:TransmitPlayerByData(arg1, 6, datas.TransmitData02, nil, nil, nil)
    this:CancelStoryByQuest(121500307)
end

function Quest15003:OnSubStart1500305(arg1)
    print("OnSubStart1500305")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc14277.id, 0, 1500305, 15, false)
end

function Quest15003:OnSubFinish1500305(arg1)
    print("OnSubFinish1500305")
    this:SafeDestroyQuestNpc(npcs.Npc14277.alias, 3)
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData03, nil, nil, nil)
end

function Quest15003:OnSubStart1500313(arg1)
    print("OnSubStart1500313")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc14153.id, 0, 1500313, 10, false)
end

function Quest15003:OnSubFinish1500313(arg1)
    print("OnSubFinish1500313")
    this:SafeDestroyQuestNpc(npcs.Npc14153.alias, 3)
end

function Quest15003:OnSubStart1500314(arg1)
    print("OnSubStart1500314")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500314, 0, 5, 0.5, npcs.Npc1088.id)
end

function Quest15003:OnSubFinish1500314(arg1)
    print("OnSubFinish1500314")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
end

function Quest15003:OnSubStart1500317(arg1)
    print("OnSubStart1500317")
end

function Quest15003:OnSubFinish1500317(arg1)
    print("OnSubFinish1500317")
end

function Quest15003:OnSubStart1500315(arg1)
    print("OnSubStart1500315")
    this:NpcCreateWithNpcTrigger(npcs.Npc1088.id, 0, 15, 1500315)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 15003):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15003:OnSubFinish1500315(arg1)
    print("OnSubFinish1500315")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
end

function Quest15003:OnSubStart1500316(arg1)
    print("OnSubStart1500316")
end

function Quest15003:OnSubFinish1500316(arg1)
    print("OnSubFinish1500316")
end

function Quest15003:OnSubStart1500312(arg1)
    print("OnSubStart1500312")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1500312, 0, 20, 0.5, npcs.Npc1088.id)
end

function Quest15003:OnSubFinish1500312(arg1)
    print("OnSubFinish1500312")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
end

function Quest15003:OnSubStart1500322(arg1)
    print("OnSubStart1500322")
end

function Quest15003:OnSubFinish1500322(arg1)
    print("OnSubFinish1500322")
end

return Quest15003
