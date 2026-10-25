require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40167 = class("Quest40167", QuestActorProxy)
Quest40167.defaultAlias = "Quest40167"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40167:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40167:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4016701"] = self.OnSubStart4016701,
        ["4016702"] = self.OnSubStart4016702,
        ["4016703"] = self.OnSubStart4016703,
        ["4016704"] = self.OnSubStart4016704,
        ["4016705"] = self.OnSubStart4016705,
        ["4016706"] = self.OnSubStart4016706,
        ["4016707"] = self.OnSubStart4016707,
        ["4016713"] = self.OnSubStart4016713,
        ["4016708"] = self.OnSubStart4016708,
        ["4016709"] = self.OnSubStart4016709,
        ["4016712"] = self.OnSubStart4016712,
        ["4016710"] = self.OnSubStart4016710,
        ["4016711"] = self.OnSubStart4016711
    }
end

function Quest40167:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4016701"] = self.OnSubFinish4016701,
        ["4016702"] = self.OnSubFinish4016702,
        ["4016703"] = self.OnSubFinish4016703,
        ["4016704"] = self.OnSubFinish4016704,
        ["4016705"] = self.OnSubFinish4016705,
        ["4016706"] = self.OnSubFinish4016706,
        ["4016707"] = self.OnSubFinish4016707,
        ["4016713"] = self.OnSubFinish4016713,
        ["4016708"] = self.OnSubFinish4016708,
        ["4016709"] = self.OnSubFinish4016709,
        ["4016712"] = self.OnSubFinish4016712,
        ["4016710"] = self.OnSubFinish4016710,
        ["4016711"] = self.OnSubFinish4016711
    }
end

function Quest40167:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40167:Start()
    print("Start")
end

function Quest40167:OnDestroy()
    print("OnDestroy")
end

function Quest40167:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40167:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40167:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc14380.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14381.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14382.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067.alias, 3)
    this:LightNotifyTo(npcs.Npc4129.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128.alias, 0, true)
    this:ActorDestroy("Q40167Tigger1")
    this:ActorDestroy("Q4016710Trigger")
    this:ActorDestroy("Q4016711Trigger")
    this:ActorDestroy("Q4016713_TriggerIn")
    this:DestroyNpcTrigger("Q4016702N1059Trigger")
    this:DestroyNpcTrigger("Q4016703N1059Trigger")
    this:DestroyNpcTrigger("Q4016705N14380Trigger")
    this:DestroyNpcTrigger("Q4016706N1059Trigger")
    this:DestroyNpcTrigger("Q4016707N1059Trigger")
    this:DestroyNpcTrigger("Q4016708N1067Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:BanCrowdNpc(3304, 6, datas.CrowdId3, false)
    this:RemoveLocalGadget(70291246, "1")
    this:EnableElementView(false)
    this:UnCallDelayByQuest("40167041")
    this:UnCallDelayByQuest("40167042")
    this:UnCallDelayByQuest("40167043")
    this:UnCallDelayByQuest("40167044")
end

function Quest40167:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:EnableElementView(true)
    elseif arg1 == 2 then
        this:EnableElementView(false)
    elseif arg1 == 3 then
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("SumeruBitrhFloatToyTutorPage", 0)
        end)
    end
end

function Quest40167:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40167:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40167:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40167:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest40167:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40167:OnSubStart4016701(arg1)
    print("OnSubStart4016701")
end

function Quest40167:OnSubFinish4016701(arg1)
    print("OnSubFinish4016701")
end

function Quest40167:OnSubStart4016702(arg1)
    print("OnSubStart4016702")
    this:NpcCreateWithNpcTrigger(npcs.Npc1059.id, 0, 20, 4016702)
    if sceneData.currSceneID ~= 20238 then
        if this:GetQuestVar(4016702, 4) == 0 then
            this:ActionSafeCall(function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId3, nil)
                this:SetQuestVarByMainId(4, 1)
            end)
        end
    end
end

function Quest40167:OnSubFinish4016702(arg1)
    print("OnSubFinish4016702")
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterBeginDialog", 10208)
    end)
end

function Quest40167:OnSubStart4016703(arg1)
    print("OnSubStart4016703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016703, 0, 30, 1, npcs.Npc1059.id)
end

function Quest40167:OnSubFinish4016703(arg1)
    print("OnSubFinish4016703")
    this:EnableElementView(false)
end

function Quest40167:OnSubStart4016704(arg1)
    print("OnSubStart4016704")
    actorMgr:CreateActorWithPos("Q40167Tigger1", "Actor/Gadget/Q40167Tigger1", 70900002, 0, points._Q40167Tigger1Point_.pos, points._Q40167Tigger1Point_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1059.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14380.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14381.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14381.alias, 40167):DoFreeStyle(1284, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14382.alias, 40167):DoFreeStyle(4100, true, nil, true, true, false, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1059.alias, 40167)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetDynAdapterToGround(true, 200)
    local v = this:GetQuestNpcActor(npcs.Npc1059.alias, 40167)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData1, 15, 15, -1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc1059.alias, 40167):DoFreeStyle(1280, true, nil, true, true, false, false)
        this:CreateSpeechBubbleTask(1059, 401679920, 0, false, 0, 0, false, false)
        this:CallDelayByQuest("40167041", 3.5, function(arg1)
            this:GetQuestNpcActor(npcs.Npc1059.alias, 40167):DoFreeStateTrigger()
            this:CallDelayByQuest("40167044", 2, function(arg1)
                this:ClearSpeechBubbleTask()
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc1059.alias, 40167)
                this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 15, 15, -1, function(arg1)
                    this:GetQuestNpcActor(npcs.Npc1059.alias, 40167):DoFreeStyle(1190, true, nil, true, true, false, false)
                    this:QuestNarratorTask(datas.NarratorWithId4, nil)
                    this:CallDelayByQuest("40167042", 3, function(arg1)
                        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1059.alias, 40167)
                        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData3, 15, 15, -1, function(arg1)
                            this:GetQuestNpcActor(npcs.Npc1059.alias, 40167):DoFreeStyle(1220, true, nil, true, true, false, false)
                            this:CreateSpeechBubbleTask(1059, 401679922, 0, false, 0, 0, false, false)
                            this:CallDelayByQuest("40167043", 3.5, function(arg1)
                                local questNpcActor = this:GetQuestNpcActor(npcs.Npc1059.alias, 40167)
                                this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData4, 15, 15, -1, function(arg1)
                                    this:GetQuestNpcActor(npcs.Npc1059.alias, 40167):DisableInteeHeadCtrl(false)
                                end, nil, nil, nil, nil, nil, false)
                            end)
                        end, nil, nil, nil, nil, nil, false)
                    end)
                end, nil, nil, nil, nil, nil, false)
            end)
        end)
    end, nil, nil, nil, nil, nil, false)
end

function Quest40167:OnSubFinish4016704(arg1)
    print("OnSubFinish4016704")
    this:ClearNarratorTask()
    this:GetQuestNpcActor(npcs.Npc1059.alias, 40167):DisableInteeHeadCtrl(false)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1059.alias)
end

function Quest40167:OnSubStart4016705(arg1)
    print("OnSubStart4016705")
    this:NpcCreateWithNpcTrigger(npcs.Npc14380.id, 0, 20, 4016705)
    this:GetQuestNpcActor(npcs.Npc14380.alias, 40167):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14381.alias, 40167):DoFreeStyle(1284, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14382.alias, 40167):DoFreeStyle(4100, true, nil, true, true, false, true)
end

function Quest40167:OnSubFinish4016705(arg1)
    print("OnSubFinish4016705")
end

function Quest40167:OnSubStart4016706(arg1)
    print("OnSubStart4016706")
    this:CreateQuestNpc(arg1, npcs.Npc14380.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14380.alias, 40167):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14380.alias, 40167):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14381.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14381.alias, 40167):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14381.alias, 40167):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14382.alias, 40167):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14382.alias, 40167):DoFreeStyle(4100, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016706, 0, 20, 1, npcs.Npc1059.id)
end

function Quest40167:OnSubFinish4016706(arg1)
    print("OnSubFinish4016706")
    this:SafeDestroyQuestNpc(npcs.Npc14380.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14381.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14382.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
end

function Quest40167:OnSubStart4016707(arg1)
    print("OnSubStart4016707")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016707, 0, 20, 1, npcs.Npc1059.id)
    this:BanCrowdNpc(3304, 6, datas.CrowdId3, true)
end

function Quest40167:OnSubFinish4016707(arg1)
    print("OnSubFinish4016707")
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:BanCrowdNpc(3304, 6, datas.CrowdId3, false)
end

function Quest40167:OnSubStart4016713(arg1)
    print("OnSubStart4016713")
    this:CreateQuestNpc(arg1, npcs.Npc1067.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4129.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4128.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 40167):SitOnChair(8010, true)
    this:CreateLocalGadget(70291246, "1", {x = -2029.036, y = 205.22, z = 2599.969}, {x = 0, y = 0, z = 0}, 3, nil, nil, true, 0, true)
    actorMgr:CreateActorWithPos("Q4016713_TriggerIn", "Actor/Gadget/Q4016713_TriggerIn", 70900002, 0, points._Q4016713_TriggerInPoint_.pos, points._Q4016713_TriggerInPoint_.rot, true, false, 3)
end

function Quest40167:OnSubFinish4016713(arg1)
    print("OnSubFinish4016713")
end

function Quest40167:OnSubStart4016708(arg1)
    print("OnSubStart4016708")
    this:NpcCreateWithNpcTrigger(npcs.Npc1067.id, 0, 10, 4016708)
    this:DailyNpcSafeHideSelf(npcs.Npc4129.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4128.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 40167):SitOnChair(8010, true)
    this:CreateLocalGadget(70291246, "1", {x = -2029.036, y = 205.22, z = 2599.969}, {x = 0, y = 0, z = 0}, 3, nil, nil, true, 0, true)
end

function Quest40167:OnSubFinish4016708(arg1)
    print("OnSubFinish4016708")
    this:SafeDestroyQuestNpc(npcs.Npc1067.alias, 3)
end

function Quest40167:OnSubStart4016709(arg1)
    print("OnSubStart4016709")
end

function Quest40167:OnSubFinish4016709(arg1)
    print("OnSubFinish4016709")
end

function Quest40167:OnSubStart4016712(arg1)
    print("OnSubStart4016712")
end

function Quest40167:OnSubFinish4016712(arg1)
    print("OnSubFinish4016712")
end

function Quest40167:OnSubStart4016710(arg1)
    print("OnSubStart4016710")
    actorMgr:CreateActorWithPos("Q4016710Trigger", "Actor/Gadget/Q4016710Trigger", 70900002, 0, points._Q4016710TriggerPoint_.pos, points._Q4016710TriggerPoint_.rot, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4129.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4128.alias, true, 1)
    this:CreateLocalGadget(70291246, "1", {x = -2029.036, y = 205.22, z = 2599.969}, {x = 0, y = 0, z = 0}, 3, nil, nil, true, 0, true)
end

function Quest40167:OnSubFinish4016710(arg1)
    print("OnSubFinish4016710")
    this:SafeDestroyQuestNpc(npcs.Npc1067.alias, 3)
    this:LightNotifyTo(npcs.Npc4129.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128.alias, 0, true)
    this:RemoveLocalGadget(70291246, "1")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterCompleteDialog", 10208)
    end)
end

function Quest40167:OnSubStart4016711(arg1)
    print("OnSubStart4016711")
    actorMgr:CreateActorWithPos("Q4016711Trigger", "Actor/Gadget/Q4016711Trigger", 70900002, 0, points._Q4016711TriggerPoint_.pos, points._Q4016711TriggerPoint_.rot, true, false, nil)
    this:DailyNpcSafeHideSelf(npcs.Npc4129.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4128.alias, true, 1)
    this:CreateLocalGadget(70291246, "1", {x = -2029.036, y = 205.22, z = 2599.969}, {x = 0, y = 0, z = 0}, 3, nil, nil, true, 0, true)
end

function Quest40167:OnSubFinish4016711(arg1)
    print("OnSubFinish4016711")
    this:SafeDestroyQuestNpc(npcs.Npc1067.alias, 3)
    this:LightNotifyTo(npcs.Npc4129.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128.alias, 0, true)
    this:RemoveLocalGadget(70291246, "1")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterCompleteDialog", 10208)
    end)
end

return Quest40167
