require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40037 = class("Quest40037", QuestActorProxy)
Quest40037.defaultAlias = "Quest40037"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40037:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4003701"] = self.OnSubStart4003701,
        ["4003702"] = self.OnSubStart4003702,
        ["4003703"] = self.OnSubStart4003703,
        ["4003710"] = self.OnSubStart4003710,
        ["4003704"] = self.OnSubStart4003704,
        ["4003705"] = self.OnSubStart4003705,
        ["4003706"] = self.OnSubStart4003706,
        ["4003707"] = self.OnSubStart4003707,
        ["4003708"] = self.OnSubStart4003708,
        ["4003709"] = self.OnSubStart4003709,
        ["4003711"] = self.OnSubStart4003711,
        ["4003712"] = self.OnSubStart4003712
    }
end

function Quest40037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4003701"] = self.OnSubFinish4003701,
        ["4003702"] = self.OnSubFinish4003702,
        ["4003703"] = self.OnSubFinish4003703,
        ["4003710"] = self.OnSubFinish4003710,
        ["4003704"] = self.OnSubFinish4003704,
        ["4003705"] = self.OnSubFinish4003705,
        ["4003706"] = self.OnSubFinish4003706,
        ["4003707"] = self.OnSubFinish4003707,
        ["4003708"] = self.OnSubFinish4003708,
        ["4003709"] = self.OnSubFinish4003709,
        ["4003711"] = self.OnSubFinish4003711,
        ["4003712"] = self.OnSubFinish4003712
    }
end

function Quest40037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4003701"] = self.OnSubFailed4003701,
        ["4003702"] = self.OnSubFailed4003702,
        ["4003703"] = self.OnSubFailed4003703,
        ["4003710"] = self.OnSubFailed4003710,
        ["4003704"] = self.OnSubFailed4003704,
        ["4003705"] = self.OnSubFailed4003705,
        ["4003706"] = self.OnSubFailed4003706,
        ["4003707"] = self.OnSubFailed4003707,
        ["4003708"] = self.OnSubFailed4003708,
        ["4003709"] = self.OnSubFailed4003709,
        ["4003711"] = self.OnSubFailed4003711,
        ["4003712"] = self.OnSubFailed4003712
    }
end

function Quest40037:Start()
    print("Start")
end

function Quest40037:OnDestroy()
    print("OnDestroy")
end

function Quest40037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40037:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30091Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30092Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30099Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30097Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30110Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2148Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2035Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2148Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2034Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2035Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q40037Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger6", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger7", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger8", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger9", 3, false)
    actorMgr:DestroyEntityActor("Q40037Trigger10", 3, false)
    globalActor:LeaveWeather()
    self:UnSpawn(gadgets.Gadget70710594Data.alias)
end

function Quest40037:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40037:WeatherControl2()
    print("WeatherControl2")
    local actor = actorMgr:GetActor("Q40037Trigger10")
    if actor ~= nil then
        actor:DestroySelf()
    end

    self:CallDelay(1, function(arg1)
        actorMgr:CreateActorWithPos("Q40037Trigger10", "Actor/Gadget/Q40037Trigger10", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003602_N1016").pos, sceneData:GetDummyPoint(3, "Q4003602_N1016").rot, true, false, 3)
    end)
end

function Quest40037:WeatherControl()
    print("WeatherControl")
    local actor = actorMgr:GetActor("Q40037Trigger4")
    if actor ~= nil then
        actor:DestroySelf()
    end

    self:CallDelay(1, function(arg1)
        actorMgr:CreateActorWithPos("Q40037Trigger4", "Actor/Gadget/Q40037Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003707_N1016_310200477").pos, sceneData:GetDummyPoint(3, "Q4003707_N1016_310200477").rot, true, false, 3)
    end)
end

function Quest40037:OnSubStart4003701(arg1)
    print("OnSubStart4003701")
end

function Quest40037:OnSubFinish4003701(arg1)
    print("OnSubFinish4003701")
end

function Quest40037:OnSubFailed4003701(arg1)
    print("OnSubFailed4003701")
end

function Quest40037:OnSubStart4003702(arg1)
    print("OnSubStart4003702")
    self:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q40037Trigger5", "Actor/Gadget/Q40037Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003702_N10045").pos, sceneData:GetDummyPoint(3, "Q4003702_N10045").rot, true, false, 3)
end

function Quest40037:OnSubFinish4003702(arg1)
    print("OnSubFinish4003702")
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStateTrigger()
end

function Quest40037:OnSubFailed4003702(arg1)
    print("OnSubFailed4003702")
end

function Quest40037:OnSubStart4003703(arg1)
    print("OnSubStart4003703")
    actorMgr:CreateActorWithPos("Q40037Trigger", "Actor/Gadget/Q40037Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "T4003705_N10000005").pos, sceneData:GetDummyPoint(3, "T4003705_N10000005").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc30091Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30097Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30110Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc30091Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30097Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:WeatherControl()
end

function Quest40037:OnSubFinish4003703(arg1)
    print("OnSubFinish4003703")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
end

function Quest40037:OnSubFailed4003703(arg1)
    print("OnSubFailed4003703")
end

function Quest40037:OnSubStart4003710(arg1)
    print("OnSubStart4003710")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1016Data.id, 0, npcs.Npc1016Data.alias)
    self:WeatherControl()
    self:GetQuestNpcActor(npcs.Npc30097Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30091Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
end

function Quest40037:OnSubFinish4003710(arg1)
    print("OnSubFinish4003710")
    self:GetQuestNpcActor(npcs.Npc30097Data.alias):DoFreeStateTrigger()
    self:GetQuestNpcActor(npcs.Npc30091Data.alias):DoFreeStateTrigger()
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30091Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30099Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30097Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30110Data.alias, 3)
end

function Quest40037:OnSubFailed4003710(arg1)
    print("OnSubFailed4003710")
end

function Quest40037:OnSubStart4003704(arg1)
    print("OnSubStart4003704")
    actorMgr:CreateActorWithPos("Q40037Trigger2", "Actor/Gadget/Q40037Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "T4003705_N10000005").pos, sceneData:GetDummyPoint(3, "T4003705_N10000005").rot, true, false, 3)
    self:WeatherControl()
end

function Quest40037:OnSubFinish4003704(arg1)
    print("OnSubFinish4003704")
end

function Quest40037:OnSubFailed4003704(arg1)
    print("OnSubFailed4003704")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40037:OnSubStart4003705(arg1)
    print("OnSubStart4003705")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc30091Data.id, 0, npcs.Npc30091Data.alias)
    self:ClearNarratorTask()
    self:StopNarrator()
    self:WeatherControl()
end

function Quest40037:OnSubFinish4003705(arg1)
    print("OnSubFinish4003705")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc30091Data.alias, 3)
    end)
end

function Quest40037:OnSubFailed4003705(arg1)
    print("OnSubFailed4003705")
end

function Quest40037:OnSubStart4003706(arg1)
    print("OnSubStart4003706")
    self:CreateQuestNpc(arg1, npcs.Npc30092Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1041Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30090Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1041Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:WeatherControl()
    actorMgr:CreateActorWithPos("Q40037Trigger6", "Actor/Gadget/Q40037Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003706_N30092_310200476").pos, sceneData:GetDummyPoint(3, "Q4003706_N30092_310200476").rot, true, false, 3)
end

function Quest40037:OnSubFinish4003706(arg1)
    print("OnSubFinish4003706")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStateTrigger()
        arg1:GetQuestNpcActor(npcs.Npc1041Data.alias):DoFreeStateTrigger()
        arg1:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc1041Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.Npc30090Data.alias):DoFreeStateTrigger()
    end)
end

function Quest40037:OnSubFailed4003706(arg1)
    print("OnSubFailed4003706")
end

function Quest40037:OnSubStart4003707(arg1)
    print("OnSubStart4003707")
    actorMgr:CreateActorWithPos("Q40037Trigger1", "Actor/Gadget/Q40037Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003707_N1016_310200477").pos, sceneData:GetDummyPoint(3, "Q4003707_N1016_310200477").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30091Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30099Data.id, 0)
    self:WeatherControl()
    self:UnSpawn(gadgets.Gadget70710594Data.alias)
    self:SpawnGadget(arg1, 0, 1)
end

function Quest40037:OnSubFinish4003707(arg1)
    print("OnSubFinish4003707")
end

function Quest40037:OnSubFailed4003707(arg1)
    print("OnSubFailed4003707")
end

function Quest40037:OnSubStart4003708(arg1)
    print("OnSubStart4003708")
    self:WeatherControl()
    actorMgr:CreateActorWithPos("Q40037Trigger9", "Actor/Gadget/Q40037Trigger9", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003707_N1016_310200477").pos, sceneData:GetDummyPoint(3, "Q4003707_N1016_310200477").rot, true, false, 3)
end

function Quest40037:OnSubFinish4003708(arg1)
    print("OnSubFinish4003708")
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30092Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30099Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30091Data.alias, 3)
end

function Quest40037:OnSubFailed4003708(arg1)
    print("OnSubFailed4003708")
end

function Quest40037:OnSubStart4003709(arg1)
    print("OnSubStart4003709")
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1046Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc1046Data.alias):SitOnChair(0)
    self:NotifyTo(npcs.Npc2148Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2034Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2035Data.alias, 1, true)
    local actor = actorMgr:GetActor("Q40037Trigger4")
    if actor ~= nil then
        actor:DestroySelf()
    end

    globalActor:LeaveWeather()
    actorMgr:CreateActorWithPos("Q40037Trigger7", "Actor/Gadget/Q40037Trigger7", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003507_N10232_310701347").pos, sceneData:GetDummyPoint(3, "Q4003507_N10232_310701347").rot, true, false, 3)
end

function Quest40037:OnSubFinish4003709(arg1)
    print("OnSubFinish4003709")
    self:GetQuestNpcActor(npcs.Npc1046Data.alias):StandFromChair(0)
    self:SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 3)
end

function Quest40037:OnSubFailed4003709(arg1)
    print("OnSubFailed4003709")
end

function Quest40037:OnSubStart4003711(arg1)
    print("OnSubStart4003711")
    self:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30092Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc2148Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2034Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2035Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q40037Trigger8", "Actor/Gadget/Q40037Trigger8", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003711_N1016").pos, sceneData:GetDummyPoint(3, "Q4003711_N1016").rot, true, false, 3)
end

function Quest40037:OnSubFinish4003711(arg1)
    print("OnSubFinish4003711")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1016Data.alias)
        arg1_2:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
        arg1_2:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
        arg1_2:LightNotifyTo(npcs.Npc2148Data.alias, 0, true)
        arg1_2:LightNotifyTo(npcs.Npc2034Data.alias, 0, true)
        arg1_2:LightNotifyTo(npcs.Npc2035Data.alias, 0, true)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, {"QUEST_Message_Q4003712"}, 3)
        globalActor:ChangeDay24Time(21, true)
    end)
end

function Quest40037:OnSubFailed4003711(arg1)
    print("OnSubFailed4003711")
end

function Quest40037:OnSubStart4003712(arg1)
    print("OnSubStart4003712")
    actorMgr:CreateActorWithPos("Q40037Trigger3", "Actor/Gadget/Q40037Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003602_N1016").pos, sceneData:GetDummyPoint(3, "Q4003602_N1016").rot, true, false, 3)
    self:WeatherControl2()
end

function Quest40037:OnSubFinish4003712(arg1)
    print("OnSubFinish4003712")
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc1016Data.alias):DoFreeStateTrigger()
        arg1:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc30092Data.alias, 3)
    end, nil, nil, "", false, true)

    local actor = actorMgr:GetActor("Q40037Trigger10")
    if actor ~= nil then
        actor:DestroySelf()
    end

    globalActor:LeaveWeather()
    self:UnSpawn(gadgets.Gadget70710594Data.alias)
end

function Quest40037:OnSubFailed4003712(arg1)
    print("OnSubFailed4003712")
end

return Quest40037
