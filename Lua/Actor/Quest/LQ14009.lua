require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14009 = class("Quest14009", QuestActorProxy)
Quest14009.defaultAlias = "Quest14009"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14009:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1400901"] = self.OnSubStart1400901,
        ["1400902"] = self.OnSubStart1400902,
        ["1400903"] = self.OnSubStart1400903,
        ["1400904"] = self.OnSubStart1400904,
        ["1400905"] = self.OnSubStart1400905,
        ["1400906"] = self.OnSubStart1400906,
        ["1400907"] = self.OnSubStart1400907,
        ["1400908"] = self.OnSubStart1400908,
        ["1400909"] = self.OnSubStart1400909,
        ["1400910"] = self.OnSubStart1400910,
        ["1400911"] = self.OnSubStart1400911,
        ["1400917"] = self.OnSubStart1400917,
        ["1400912"] = self.OnSubStart1400912,
        ["1400913"] = self.OnSubStart1400913,
        ["1400916"] = self.OnSubStart1400916,
        ["1400914"] = self.OnSubStart1400914,
        ["1400915"] = self.OnSubStart1400915
    }
end

function Quest14009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1400901"] = self.OnSubFinish1400901,
        ["1400902"] = self.OnSubFinish1400902,
        ["1400903"] = self.OnSubFinish1400903,
        ["1400904"] = self.OnSubFinish1400904,
        ["1400905"] = self.OnSubFinish1400905,
        ["1400906"] = self.OnSubFinish1400906,
        ["1400907"] = self.OnSubFinish1400907,
        ["1400908"] = self.OnSubFinish1400908,
        ["1400909"] = self.OnSubFinish1400909,
        ["1400910"] = self.OnSubFinish1400910,
        ["1400911"] = self.OnSubFinish1400911,
        ["1400917"] = self.OnSubFinish1400917,
        ["1400912"] = self.OnSubFinish1400912,
        ["1400913"] = self.OnSubFinish1400913,
        ["1400916"] = self.OnSubFinish1400916,
        ["1400914"] = self.OnSubFinish1400914,
        ["1400915"] = self.OnSubFinish1400915
    }
end

function Quest14009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1400912"] = self.OnSubFailed1400912}
end

function Quest14009:Start()
    print("Start")
end

function Quest14009:OnDestroy()
    print("OnDestroy")
end

function Quest14009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14009:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ActionSafeCall(function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13734Data.alias)
            questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
            questNpcActor:DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc5202Data.alias):DisableInteeHeadCtrl(true)
        end)
    elseif arg1 == 2 then
        this:ActionSafeCall(function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc1070Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:DoFreeStyle(1220, true, nil, true, true, false, true)
            questNpcActor:LookAt({x = 3533.3, y = 447.5, z = 4444.3})
        end)
    end
end

function Quest14009:OnSubStart1400901(arg1)
    print("OnSubStart1400901")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14009Trigger", "Actor/Gadget/Q14009Trigger", 70900002, 0, points.TPos_Q14009Trigger.pos, points.TPos_Q14009Trigger.rot, true, false, 3)
        actorMgr:CreateActorWithPos("Q14009Trigger3", "Actor/Gadget/Q14009Trigger3", 70900002, 0, points.TPos_Q14009Trigger3.pos, points.TPos_Q14009Trigger3.rot, true, false, 3)
        this:CreateLocalGadget(707111127, "1", {x = 3526.731, y = 422.185, z = 4606.201}, {x = 0.0, y = -211.688, z = 0.0}, 3, nil, nil, false)
        this:CreateLocalGadget(707111127, "2", {x = 3525.772, y = 422.185, z = 4606.291}, {x = 0.0, y = 60.299, z = 0.0}, 3, nil, nil, false)
        this:CreateLocalGadget(707111127, "3", {x = 3525.889, y = 422.185, z = 4607.269}, {x = 0.0, y = 124.501, z = 0.0}, 3, nil, nil, false)
        this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5202Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5064Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5065Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13608Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13609Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13506Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13733Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13734Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):SitOnChair(8013, true)
        this:GetQuestNpcActor(npcs.Npc5065Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc5064Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13608Data.alias)
        questNpcActor:SitOnChair(0, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc13609Data.alias)
        v:SitOnChair(0, true)
        v:DisableInteeHeadCtrl(true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc13506Data.alias)
        questNpcActor2:SitOnChair(0, true)
        questNpcActor2:DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc13734Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc1078Data.alias)
        questNpcActor3:DoFreeStyle(1190, true, nil, true, true, false, true)
        questNpcActor3:DisableInteeHeadCtrl(true)
        local questNpcActor4 = this:GetQuestNpcActor(npcs.Npc13733Data.alias)
        questNpcActor4:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor4:DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc5055Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5043Data.alias, 1, true)
        this:CallDelayByQuest("2", 0.5, function(arg1)
            this:NotifyTo(npcs.Npc5054Data.alias, 1, true)
        end)
    end)
end

function Quest14009:OnSubFinish1400901(arg1)
    print("OnSubFinish1400901")
    this:RemoveLocalGadget(707111127, "1")
    this:RemoveLocalGadget(707111127, "2")
    this:RemoveLocalGadget(707111127, "3")
    this:GetQuestNpcActor(npcs.Npc13608Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13609Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13506Data.alias):DisableInteeHeadCtrl(false)
    this:DestroyQuestNpcActor(npcs.Npc1075Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5064Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5065Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13608Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13609Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13506Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5053Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5054Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5055Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5043Data.alias, 0, true)
    this:UnCallDelayByQuest("2")
end

function Quest14009:OnSubStart1400902(arg1)
    print("OnSubStart1400902")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1078Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc13733Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q14009Trigger10", "Actor/Gadget/Q14009Trigger10", 70900002, 0, points.TPos_Q14009Trigger10.pos, points.TPos_Q14009Trigger10.rot, true, false, 3)
end

function Quest14009:OnSubFinish1400902(arg1)
    print("OnSubFinish1400902")
    this:ActionSafeCall(function(arg1)
        actorMgr:DestroyEntityActor("Q14009Trigger3", 3, false)
        this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1078Data.alias, 3)
        this:GetQuestNpcActor(npcs.Npc13733Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc13734Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc5202Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc13733Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13734Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5202Data.alias, 3)
        this:CallDelayByQuest("1", 2, function(arg1)
            this:NarratorOnlyTaskByData(datas.Narrator_1400901, nil, 14009)
        end)
    end)
end

function Quest14009:OnSubStart1400903(arg1)
    print("OnSubStart1400903")
    actorMgr:CreateActorWithPos("Q14009Trigger1", "Actor/Gadget/Q14009Trigger1", 70900002, 0, points.TPos_Q14009Trigger1.pos, points.TPos_Q14009Trigger1.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q14009Trigger5", "Actor/Gadget/Q14009Trigger5", 70900002, 0, {x = 4491.141, y = 159.791, z = 4594.734}, {x = 0.0, y = 32.64, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q14009Trigger6", "Actor/Gadget/Q14009Trigger6", 70900002, 0, {x = 4501.152, y = 159.798, z = 4640.697}, {x = 0.0, y = 349.247, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q14009Trigger7", "Actor/Gadget/Q14009Trigger7", 70900002, 0, {x = 4497.181, y = 159.13, z = 4605.653}, {x = 0.0, y = 22.594, z = 0.0}, true, false, 3)
    this:CreateLocalGadget(70711241, "1", {x = 4490.048, y = 154.837, z = 4592.738}, {x = -20.268, y = 34.369, z = 0.8610001}, 3, nil, nil, false)
    this:CreateLocalGadget(70711236, "1", {x = 4503.811, y = 154.375, z = 4644.43}, {x = 0.0, y = 110.782, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70711237, "1", {x = 4504.043, y = 154.375, z = 4643.788}, {x = 0.0, y = -282.493, z = 0.0}, 3, nil, nil, false)
    this:CreateQuestNpc(arg1, npcs.Npc13508Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5272Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13510Data.id, 0)
    this:NotifyTo(npcs.Npc5215Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5228Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5214Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5250Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5212Data.alias, 1, true)
end

function Quest14009:OnSubFinish1400903(arg1)
    print("OnSubFinish1400903")
    this:ActionSafeCall(function(arg1_2)
        this:ClearNarratorTask()
        this:StopNarrator()
        actorMgr:DestroyEntityActor("Q14009Trigger5", 3, false)
        actorMgr:DestroyEntityActor("Q14009Trigger6", 3, false)
        actorMgr:DestroyEntityActor("Q14009Trigger7", 3, false)
        this:LightNotifyTo(npcs.Npc5214Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5250Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5212Data.alias, 0, true)
        this:RemoveLocalGadget(70711241, "1")
        this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1076Data.alias)
        questNpcActor.DisableInteeHeadCtrl(questNpcActor, true)
        questNpcActor.SetWalkSpeedRatio(questNpcActor, 0.8)
        questNpcActor.WalkToRouteTask(questNpcActor, datas.RoutePointsData1, function(arg1, arg2)
            questNpcActor:DisableInteeHeadCtrl(false)
            questNpcActor:Standby()
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
        end, function(arg1, arg2)
            questNpcActor:Standby()
            questNpcActor:DisableInteeHeadCtrl(false)
        end, function(arg1, arg2)
            questNpcActor:ResumeMove()
            questNpcActor:DisableInteeHeadCtrl(true)
        end, function(arg1, arg2)
            questNpcActor:SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q1400909_N1076").pos, sceneData:GetDummyPoint(3, "Q1400909_N1076").rot, true)
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
            questNpcActor:DisableInteeHeadCtrl(false)
        end)
    end)
end

function Quest14009:OnSubStart1400904(arg1)
    print("OnSubStart1400904")
    this:NotifyTo(npcs.Npc5215Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5228Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13508Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13508Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13510Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13510Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14009:OnSubFinish1400904(arg1)
    print("OnSubFinish1400904")
end

function Quest14009:OnSubStart1400905(arg1)
    print("OnSubStart1400905")
    this:NotifyTo(npcs.Npc5215Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5215Data.alias, 1, true)
end

function Quest14009:OnSubFinish1400905(arg1)
    print("OnSubFinish1400905")
end

function Quest14009:OnSubStart1400906(arg1)
    print("OnSubStart1400906")
    this:NotifyTo(npcs.Npc5215Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5228Data.alias, 1, true)
end

function Quest14009:OnSubFinish1400906(arg1)
    print("OnSubFinish1400906")
end

function Quest14009:OnSubStart1400907(arg1)
    print("OnSubStart1400907")
end

function Quest14009:OnSubFinish1400907(arg1)
    print("OnSubFinish1400907")
end

function Quest14009:OnSubStart1400908(arg1)
    print("OnSubStart1400908")
    this:CreateLocalGadget(70711236, "1", {x = 4503.811, y = 154.375, z = 4644.43}, {x = 0.0, y = 110.782, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70711237, "1", {x = 4504.043, y = 154.375, z = 4643.788}, {x = 0.0, y = -282.493, z = 0.0}, 3, nil, nil, false)
    this:NotifyTo(npcs.Npc5215Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5228Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13508Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13510Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14009:OnSubFinish1400908(arg1)
    print("OnSubFinish1400908")
    this:NarratorOnlyTaskByData(datas.Narrator_1400906, nil, 14009)
end

function Quest14009:OnSubStart1400909(arg1)
    print("OnSubStart1400909")
    actorMgr:CreateActorWithPos("Q14009Trigger11", "Actor/Gadget/Q14009Trigger11", 70900002, 0, points.TPos_Q14009Trigger11.pos, points.TPos_Q14009Trigger11.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5215Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5228Data.alias, 1, true)
    this:CreateLocalGadget(70711244, "1", {x = 4580.005, y = 154.562, z = 4637.44}, {x = 0.0, y = -146.226, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70711236, "1", {x = 4503.811, y = 154.375, z = 4644.43}, {x = 0.0, y = 110.782, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70711237, "1", {x = 4504.043, y = 154.375, z = 4643.788}, {x = 0.0, y = -282.493, z = 0.0}, 3, nil, nil, false)
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):SitOnChair(8081, true)
    this:GetQuestNpcActor(npcs.Npc13508Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13510Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14009:OnSubFinish1400909(arg1)
    print("OnSubFinish1400909")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest14009:OnSubStart1400910(arg1)
    print("OnSubStart1400910")
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13511Data.id, 0)
    this:NotifyTo(npcs.Npc5215Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5228Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13508Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13510Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateLocalGadget(70711244, "1", {x = 4576.603, y = 154.562, z = 4638.068}, {x = 0.0, y = -11.337, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70711236, "1", {x = 4503.811, y = 154.375, z = 4644.43}, {x = 0.0, y = 110.782, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70711237, "1", {x = 4504.043, y = 154.375, z = 4643.788}, {x = 0.0, y = -282.493, z = 0.0}, 3, nil, nil, false)
    if sceneData.currSceneID == 1086 then
        self:FinishQuestID(false, 1400910)
    end
end

function Quest14009:OnSubFinish1400910(arg1)
    print("OnSubFinish1400910")
    this:LightNotifyTo(npcs.Npc5215Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5228Data.alias, 0, true)
    this:RemoveLocalGadget(70711244, "1")
    this:RemoveLocalGadget(70711236, "1")
    this:RemoveLocalGadget(70711237, "1")
end

function Quest14009:OnSubStart1400911(arg1)
    print("OnSubStart1400911")
    actorMgr:CreateActorWithPos("Q14009Trigger13", "Actor/Gadget/Q14009Trigger13", 70900002, 0, {x = 1.133, y = 19.749, z = 0.696}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1086)
end

function Quest14009:OnSubFinish1400911(arg1)
    print("OnSubFinish1400911")
    this:ActionSafeCall(function(arg1_2)
        this:DestroyQuestNpcActor(npcs.Npc13511Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1078Data.alias, 3)
        this:TransmitPlayerWithDialogTextById(arg1, 1, nil, 0, nil, nil)
    end)
end

function Quest14009:OnSubStart1400917(arg1)
    print("OnSubStart1400917")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14009Trigger14", "Actor/Gadget/Q14009Trigger14", 70900002, 0, {x = 3616.182, y = 448.442, z = 4477.972}, {x = 0.0, y = 37.476, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q14009Trigger15", "Actor/Gadget/Q14009Trigger15", 70900002, 0, {x = 3616.182, y = 448.442, z = 4477.972}, {x = 0.0, y = 37.476, z = 0.0}, true, false, 3)
        this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5036Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5035Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5022Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5023Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5034Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5038Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5039Data.alias, 1, true)
        this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    end)
end

function Quest14009:OnSubFinish1400917(arg1)
    print("OnSubFinish1400917")
    this:DestroyQuestNpcActor(npcs.Npc1078Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13508Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5272Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13510Data.alias, 3)
end

function Quest14009:OnSubStart1400912(arg1)
    print("OnSubStart1400912")
    actorMgr:CreateActorWithPos("Q14009Trigger2", "Actor/Gadget/Q14009Trigger2", 70900002, 0, points.TPos_Q14009Trigger2.pos, points.TPos_Q14009Trigger2.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5036Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5035Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5022Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5023Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5034Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5038Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5039Data.alias, 1, true)
    this:DisableMainPageWithConfig(true, "DisableTestSumeruMainQuest")
    this:ClearNarratorTask()
    this:StopNarrator()
    self:SetNavigationByMainId(14009, true)
end

function Quest14009:OnSubFinish1400912(arg1)
    print("OnSubFinish1400912")
    this:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuest")
    this:ClearNarratorTask()
    this:StopNarrator()
    actorMgr:DestroyEntityActor("Q14009Trigger15", 3, false)
end

function Quest14009:OnSubFailed1400912(arg1)
    print("OnSubFailed1400912")
    this:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuest")
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest14009:OnSubStart1400913(arg1)
    print("OnSubStart1400913")
    this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5036Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5035Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5022Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5023Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5034Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5038Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5039Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q14009Trigger9", "Actor/Gadget/Q14009Trigger9", 70900002, 0, points.TPos_Q14009Trigger9.pos, points.TPos_Q14009Trigger9.rot, true, false, 3)
end

function Quest14009:OnSubFinish1400913(arg1)
    print("OnSubFinish1400913")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5036Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5035Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5022Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5023Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5034Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5075Data.alias, 0, true)
    end)
end

function Quest14009:OnSubStart1400916(arg1)
    print("OnSubStart1400916")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14009Trigger12", "Actor/Gadget/Q14009Trigger12", 70900002, 0, {x = 3548.59, y = 445.0, z = 4440.381}, {x = 0.0, y = 352.742, z = 0.0}, true, false, 3)
        this:NotifyTo(npcs.Npc5038Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5039Data.alias, 1, true)
        this:CreateQuestNpc(arg1, npcs.Npc5040Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5029Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1070Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5040Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc5029Data.alias):DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc1070Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1220, true, nil, true, true, false, true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc1075Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:DoFreeStyle(1190, true, nil, true, true, false, true)
        local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc1077Data.alias)
        questNpcActor3:DisableInteeHeadCtrl(true)
        questNpcActor3:DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest14009:OnSubFinish1400916(arg1)
    print("OnSubFinish1400916")
end

function Quest14009:OnSubStart1400914(arg1)
    print("OnSubStart1400914")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc5038Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5039Data.alias, 1, true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5040Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc5029Data.alias):DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc1070Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1220, true, nil, true, true, false, true)
        v:LookAt({x = 3533.3, y = 447.5, z = 4444.3})
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc1075Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:DoFreeStyle(1190, true, nil, true, true, false, true)
        local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc1077Data.alias)
        questNpcActor3:DisableInteeHeadCtrl(true)
        questNpcActor3:DoFreeStyle(1120, true, nil, true, true, false, true)
        if sceneData.currSceneID == 1083 then
            arg1:FinishQuestID(false, 1400914)
        end
    end)
end

function Quest14009:OnSubFinish1400914(arg1)
    print("OnSubFinish1400914")
    this:LightNotifyTo(npcs.Npc5038Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5039Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc5040Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5029Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1075Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(false)
    this:DestroyQuestNpcActor(npcs.Npc1077Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1075Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1070Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5040Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5029Data.alias, 3)
end

function Quest14009:OnSubStart1400915(arg1)
    print("OnSubStart1400915")
    this:CreateQuestNpc(arg1, npcs.Npc13503Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13503Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q14009Trigger8", "Actor/Gadget/Q14009Trigger8", 70900002, 0, points.TPos_Q14009Trigger8.pos, points.TPos_Q14009Trigger8.rot, true, false, 1083)
end

function Quest14009:OnSubFinish1400915(arg1)
    print("OnSubFinish1400915")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13503Data.alias)
    if questNpcActor.uActor ~= nil then
        if questNpcActor ~= actorMgr.dummyActor then
            questNpcActor.uActor:StopCurEmojiBubble()
        end
    end

    this:ClearSpeechBubbleTask()
    this:DestroyQuestNpcActor(npcs.Npc13503Data.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1076Data.id, 0, false, 0.5)
        local actor = actorMgr:GetActor("Npc107614009")
        actor:DisableInteeHeadCtrl(true)
        actor:DoFreeStyle(1190, true, nil, true, true, false, false)
    end)

    if this:GetQuestGlobalVar(402501) == 0 then
        this:CreateQuestOrphanNpc(arg1, npcs.Npc13789Data.id, 0, false, 0.5)
        this:CreateLocalGadget(70711239, "1", {x = -51.265, y = 1.125, z = -14.637}, {x = 0.0, y = 259.256, z = 0.0}, 1083, nil, nil, false)
        this:CreateLocalGadget(70711239, "2", {x = -51.34929, y = 1.125325, z = -14.65611}, {x = 0.0, y = 247.4133, z = 0.0}, 1083, nil, nil, false)
        this:CreateLocalGadget(70710776, "3", {x = -51.14302, y = 1.166172, z = -14.75968}, {x = 0.0, y = 0.0, z = 0.0}, 1083, nil, nil, false)
    end

    actorMgr:CreateActorWithPos("Q14009Trigger4", "Actor/Gadget/Q14009Trigger4", 70900002, 0, points.TPos_Q14009Trigger4.pos, points.TPos_Q14009Trigger4.rot, true, false, 1083)
end

return Quest14009
