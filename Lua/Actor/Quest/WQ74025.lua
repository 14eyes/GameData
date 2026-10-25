require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74025 = class("Quest74025", QuestActorProxy)
Quest74025.defaultAlias = "Quest74025"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74025:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402501"] = self.OnSubStart7402501,
        ["7402552"] = self.OnSubStart7402552,
        ["7402503"] = self.OnSubStart7402503,
        ["7402504"] = self.OnSubStart7402504,
        ["7402553"] = self.OnSubStart7402553,
        ["7402502"] = self.OnSubStart7402502,
        ["7402505"] = self.OnSubStart7402505,
        ["7402506"] = self.OnSubStart7402506,
        ["7402507"] = self.OnSubStart7402507,
        ["7402508"] = self.OnSubStart7402508,
        ["7402509"] = self.OnSubStart7402509,
        ["7402510"] = self.OnSubStart7402510,
        ["7402551"] = self.OnSubStart7402551,
        ["7402511"] = self.OnSubStart7402511,
        ["7402512"] = self.OnSubStart7402512,
        ["7402548"] = self.OnSubStart7402548,
        ["7402513"] = self.OnSubStart7402513,
        ["7402514"] = self.OnSubStart7402514,
        ["7402542"] = self.OnSubStart7402542,
        ["7402549"] = self.OnSubStart7402549,
        ["7402515"] = self.OnSubStart7402515,
        ["7402516"] = self.OnSubStart7402516,
        ["7402550"] = self.OnSubStart7402550,
        ["7402517"] = self.OnSubStart7402517,
        ["7402518"] = self.OnSubStart7402518,
        ["7402520"] = self.OnSubStart7402520,
        ["7402521"] = self.OnSubStart7402521,
        ["7402544"] = self.OnSubStart7402544,
        ["7402522"] = self.OnSubStart7402522,
        ["7402523"] = self.OnSubStart7402523,
        ["7402524"] = self.OnSubStart7402524,
        ["7402525"] = self.OnSubStart7402525,
        ["7402543"] = self.OnSubStart7402543,
        ["7402526"] = self.OnSubStart7402526,
        ["7402545"] = self.OnSubStart7402545,
        ["7402527"] = self.OnSubStart7402527,
        ["7402528"] = self.OnSubStart7402528,
        ["7402529"] = self.OnSubStart7402529,
        ["7402530"] = self.OnSubStart7402530,
        ["7402531"] = self.OnSubStart7402531,
        ["7402546"] = self.OnSubStart7402546,
        ["7402532"] = self.OnSubStart7402532,
        ["7402533"] = self.OnSubStart7402533,
        ["7402534"] = self.OnSubStart7402534,
        ["7402535"] = self.OnSubStart7402535,
        ["7402536"] = self.OnSubStart7402536,
        ["7402547"] = self.OnSubStart7402547,
        ["7402537"] = self.OnSubStart7402537,
        ["7402538"] = self.OnSubStart7402538,
        ["7402539"] = self.OnSubStart7402539,
        ["7402540"] = self.OnSubStart7402540,
        ["7402541"] = self.OnSubStart7402541,
        ["7402519"] = self.OnSubStart7402519
    }
end

function Quest74025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402501"] = self.OnSubFinish7402501,
        ["7402552"] = self.OnSubFinish7402552,
        ["7402503"] = self.OnSubFinish7402503,
        ["7402504"] = self.OnSubFinish7402504,
        ["7402553"] = self.OnSubFinish7402553,
        ["7402502"] = self.OnSubFinish7402502,
        ["7402505"] = self.OnSubFinish7402505,
        ["7402506"] = self.OnSubFinish7402506,
        ["7402507"] = self.OnSubFinish7402507,
        ["7402508"] = self.OnSubFinish7402508,
        ["7402509"] = self.OnSubFinish7402509,
        ["7402510"] = self.OnSubFinish7402510,
        ["7402551"] = self.OnSubFinish7402551,
        ["7402511"] = self.OnSubFinish7402511,
        ["7402512"] = self.OnSubFinish7402512,
        ["7402548"] = self.OnSubFinish7402548,
        ["7402513"] = self.OnSubFinish7402513,
        ["7402514"] = self.OnSubFinish7402514,
        ["7402542"] = self.OnSubFinish7402542,
        ["7402549"] = self.OnSubFinish7402549,
        ["7402515"] = self.OnSubFinish7402515,
        ["7402516"] = self.OnSubFinish7402516,
        ["7402550"] = self.OnSubFinish7402550,
        ["7402517"] = self.OnSubFinish7402517,
        ["7402518"] = self.OnSubFinish7402518,
        ["7402520"] = self.OnSubFinish7402520,
        ["7402521"] = self.OnSubFinish7402521,
        ["7402544"] = self.OnSubFinish7402544,
        ["7402522"] = self.OnSubFinish7402522,
        ["7402523"] = self.OnSubFinish7402523,
        ["7402524"] = self.OnSubFinish7402524,
        ["7402525"] = self.OnSubFinish7402525,
        ["7402543"] = self.OnSubFinish7402543,
        ["7402526"] = self.OnSubFinish7402526,
        ["7402545"] = self.OnSubFinish7402545,
        ["7402527"] = self.OnSubFinish7402527,
        ["7402528"] = self.OnSubFinish7402528,
        ["7402529"] = self.OnSubFinish7402529,
        ["7402530"] = self.OnSubFinish7402530,
        ["7402531"] = self.OnSubFinish7402531,
        ["7402546"] = self.OnSubFinish7402546,
        ["7402532"] = self.OnSubFinish7402532,
        ["7402533"] = self.OnSubFinish7402533,
        ["7402534"] = self.OnSubFinish7402534,
        ["7402535"] = self.OnSubFinish7402535,
        ["7402536"] = self.OnSubFinish7402536,
        ["7402547"] = self.OnSubFinish7402547,
        ["7402537"] = self.OnSubFinish7402537,
        ["7402538"] = self.OnSubFinish7402538,
        ["7402539"] = self.OnSubFinish7402539,
        ["7402540"] = self.OnSubFinish7402540,
        ["7402541"] = self.OnSubFinish7402541,
        ["7402519"] = self.OnSubFinish7402519
    }
end

function Quest74025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74025:Start()
    print("Start")
end

function Quest74025:OnDestroy()
    print("OnDestroy")
end

function Quest74025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74025:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74025:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74025:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74025:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7402542)
    end
end

function Quest74025:OnSubStart7402501(arg1)
    print("OnSubStart7402501")
end

function Quest74025:OnSubFinish7402501(arg1)
    print("OnSubFinish7402501")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.SearchLampBlackScreen, 6, nil, nil)
end

function Quest74025:OnSubStart7402552(arg1)
    print("OnSubStart7402552")
    actorMgr:CreateActorWithPos("Q7402552Trigger", "Actor/Gadget/Q7402552Trigger", 70900002, 0, points.TPos_Q7402552Trigger.pos, points.TPos_Q7402552Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402552(arg1)
    print("OnSubFinish7402552")
end

function Quest74025:OnSubStart7402503(arg1)
    print("OnSubStart7402503")
    actorMgr:CreateActorWithPos("Q7402503Trigger", "Actor/Gadget/Q7402503Trigger", 70900002, 0, points.TPos_Q7402503Trigger.pos, points.TPos_Q7402503Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402503(arg1)
    print("OnSubFinish7402503")
end

function Quest74025:OnSubStart7402504(arg1)
    print("OnSubStart7402504")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5213Data.id, 0, npcs.Npc5213Data.alias)
end

function Quest74025:OnSubFinish7402504(arg1)
    print("OnSubFinish7402504")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.CaveBlackScreen, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5213Data.alias, 3)
end

function Quest74025:OnSubStart7402553(arg1)
    print("OnSubStart7402553")
    actorMgr:CreateActorWithPos("Q7402553Trigger", "Actor/Gadget/Q7402553Trigger", 70900002, 0, points.TPos_Q7402553Trigger.pos, points.TPos_Q7402553Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402553(arg1)
    print("OnSubFinish7402553")
end

function Quest74025:OnSubStart7402502(arg1)
    print("OnSubStart7402502")
    this:CreateQuestNpcWithTrigger("Q7402502Trigger", 7402502, npcs.Npc5202Data.id, 1, 8)
end

function Quest74025:OnSubFinish7402502(arg1)
    print("OnSubFinish7402502")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.FindDarcy, nil, 74025)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc5202Data.alias, 3)
end

function Quest74025:OnSubStart7402505(arg1)
    print("OnSubStart7402505")
    this:CreateQuestNpcWithTrigger("Q7402505Trigger", 7402505, npcs.Npc5202Data.id, 1, 8)
end

function Quest74025:OnSubFinish7402505(arg1)
    print("OnSubFinish7402505")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.FindDarcy, nil, 74025)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc5202Data.alias, 3)
end

function Quest74025:OnSubStart7402506(arg1)
    print("OnSubStart7402506")
    this:CreateQuestNpc(arg1, npcs.Npc5201Data.id, 0)
end

function Quest74025:OnSubFinish7402506(arg1)
    print("OnSubFinish7402506")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5201Data.alias)
end

function Quest74025:OnSubStart7402507(arg1)
    print("OnSubStart7402507")
    this:NpcCreateWithNpcTrigger(npcs.Npc5201Data.id, 7402507, 0, 5)
end

function Quest74025:OnSubFinish7402507(arg1)
    print("OnSubFinish7402507")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5201Data.alias)
end

function Quest74025:OnSubStart7402508(arg1)
    print("OnSubStart7402508")
    this:CreateQuestNpc(arg1, npcs.Npc5248Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21074Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402508Trigger", "Actor/Gadget/Q7402508Trigger", 70900002, 0, points.TPos_Q7402508Trigger.pos, points.TPos_Q7402508Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402508(arg1)
    print("OnSubFinish7402508")
end

function Quest74025:OnSubStart7402509(arg1)
    print("OnSubStart7402509")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5248Data.id, 0, npcs.Npc5248Data.alias)
end

function Quest74025:OnSubFinish7402509(arg1)
    print("OnSubFinish7402509")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.FindLenore, nil, 74025)
    end)
end

function Quest74025:OnSubStart7402510(arg1)
    print("OnSubStart7402510")
    this:CreateQuestNpc(arg1, npcs.Npc5201Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21073Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21074Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21124Data.alias):DoFreeStyle(1110, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21099Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21157Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21157Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21073Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21124Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402510(arg1)
    print("OnSubFinish7402510")
    this:GetQuestNpcActor(npcs.Npc21073Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc21124Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc5201Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5248Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21099Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21157Data.alias, 3)
end

function Quest74025:OnSubStart7402551(arg1)
    print("OnSubStart7402551")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402551Trigger", "Actor/Gadget/Q7402551Trigger", 70900002, 0, points.TPos_Q7402551Trigger.pos, points.TPos_Q7402551Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402551(arg1)
    print("OnSubFinish7402551")
end

function Quest74025:OnSubStart7402511(arg1)
    print("OnSubStart7402511")
    this:CreateQuestNpc(arg1, npcs.Npc5252Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5251Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5251Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5214Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21034Data.alias, 74025)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.LenoreRoute1, 5, 4, -1, function(arg1)
        this:NarratorOnlyTaskByData(datas.LenoreIntroduce2, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21034Data.alias, 74025)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.LenoreRoute11, 5, 4, -1, function(arg1)
                this:NarratorOnlyTaskByData(datas.LenoreIntroduce3, function(arg1)
                    actorUtils.FinishQuestID(false, 7402511)
                end, 74025)

                this:CallDelayByQuest("2", 1, function(arg1)
                    this:GetQuestNpcActor(npcs.Npc21034Data.alias):SteerToAutonomyTask({x = -3.076, y = 0.0, z = 1.343}, 1, true, true)
                end)
            end, nil, nil, nil, nil, nil, false)
        end, 74025)

        this:CallDelayByQuest("1", 1, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21034Data.alias):SteerToAutonomyTask({x = -0.945, y = 0.0, z = 1.284}, 1, true, true)
        end)
    end, nil, nil, nil, nil, nil, false)

    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DisableInteeHeadCtrl(true)
    this:NarratorOnlyTaskByData(datas.LenoreIntroduce1, nil, 74025)
end

function Quest74025:OnSubFinish7402511(arg1)
    print("OnSubFinish7402511")
    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(false)
end

function Quest74025:OnSubStart7402512(arg1)
    print("OnSubStart7402512")
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5251Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5214Data.alias)
    questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402512(arg1)
    print("OnSubFinish7402512")
end

function Quest74025:OnSubStart7402548(arg1)
    print("OnSubStart7402548")
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5251Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7402548Trigger", "Actor/Gadget/Q7402548Trigger", 70900002, 0, points.TPos_Q7402548Trigger.pos, points.TPos_Q7402548Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402548(arg1)
    print("OnSubFinish7402548")
end

function Quest74025:OnSubStart7402513(arg1)
    print("OnSubStart7402513")
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5251Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21034Data.alias, 74025)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.LenoreRoute2, 5, 4, -1, function(arg1)
        if arg1.BeFollowState == BeFollowState.SUCCESS then
            actorUtils.FinishQuestID(false, 7402513)
        end
    end, nil, nil, nil, nil, nil, false)

    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402513(arg1)
    print("OnSubFinish7402513")
    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc5251Data.alias, 3)
end

function Quest74025:OnSubStart7402514(arg1)
    print("OnSubStart7402514")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21034Data.id, 0, npcs.Npc21034Data.alias)
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest74025:OnSubFinish7402514(arg1)
    print("OnSubFinish7402514")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.LenoreIntroduce4, nil, 74025)
    end)
end

function Quest74025:OnSubStart7402542(arg1)
    print("OnSubStart7402542")
end

function Quest74025:OnSubFinish7402542(arg1)
    print("OnSubFinish7402542")
end

function Quest74025:OnSubStart7402549(arg1)
    print("OnSubStart7402549")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7402549Trigger", "Actor/Gadget/Q7402549Trigger", 70900002, 0, points.TPos_Q7402549Trigger.pos, points.TPos_Q7402549Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402549(arg1)
    print("OnSubFinish7402549")
end

function Quest74025:OnSubStart7402515(arg1)
    print("OnSubStart7402515")
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21034Data.alias, 74025)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.LenoreRoute3, 5, 4, -1, function(arg1)
        this:NarratorOnlyTaskByData(datas.LenoreIntroduce5, function(arg1)
            actorUtils.FinishQuestID(false, 7402515)
        end, 74025)

        this:CallDelayByQuest("3", 1, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21034Data.alias):SteerToAutonomyTask({x = 2.188, y = 0.0, z = -0.111}, 1, true, true)
        end)
    end, nil, nil, nil, nil, nil, false)

    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402515(arg1)
    print("OnSubFinish7402515")
    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc5252Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5214Data.alias, 3)
end

function Quest74025:OnSubStart7402516(arg1)
    print("OnSubStart7402516")
end

function Quest74025:OnSubFinish7402516(arg1)
    print("OnSubFinish7402516")
end

function Quest74025:OnSubStart7402550(arg1)
    print("OnSubStart7402550")
    actorMgr:CreateActorWithPos("Q7402550Trigger", "Actor/Gadget/Q7402550Trigger", 70900002, 0, points.TPos_Q7402550Trigger.pos, points.TPos_Q7402550Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402550(arg1)
    print("OnSubFinish7402550")
end

function Quest74025:OnSubStart7402517(arg1)
    print("OnSubStart7402517")
    this:CreateQuestNpc(arg1, npcs.Npc5247Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21034Data.alias, 74025)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.LenoreRoute4, 5, 4, -1, function(arg1)
        if arg1.BeFollowState == BeFollowState.SUCCESS then
            actorUtils.FinishQuestID(false, 7402517)
        end
    end, nil, nil, nil, nil, nil, false)

    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402517(arg1)
    print("OnSubFinish7402517")
    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(false)
end

function Quest74025:OnSubStart7402518(arg1)
    print("OnSubStart7402518")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21034Data.id, 0, npcs.Npc21034Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc5247Data.id, 0)
end

function Quest74025:OnSubFinish7402518(arg1)
    print("OnSubFinish7402518")
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5247Data.alias, 3)
end

function Quest74025:OnSubStart7402520(arg1)
    print("OnSubStart7402520")
    this:CreateQuestNpc(arg1, npcs.Npc5205Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402520Trigger", "Actor/Gadget/Q7402520Trigger", 70900002, 0, points.TPos_Q7402520Trigger.pos, points.TPos_Q7402520Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402520(arg1)
    print("OnSubFinish7402520")
end

function Quest74025:OnSubStart7402521(arg1)
    print("OnSubStart7402521")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21034Data.id, 0, npcs.Npc21034Data.alias)
end

function Quest74025:OnSubFinish7402521(arg1)
    print("OnSubFinish7402521")
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
end

function Quest74025:OnSubStart7402544(arg1)
    print("OnSubStart7402544")
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402544Trigger", "Actor/Gadget/Q7402544Trigger", 70900002, 0, points.TPos_Q7402544Trigger.pos, points.TPos_Q7402544Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402544(arg1)
    print("OnSubFinish7402544")
end

function Quest74025:OnSubStart7402522(arg1)
    print("OnSubStart7402522")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21048Data.id, 0, npcs.Npc21048Data.alias)
end

function Quest74025:OnSubFinish7402522(arg1)
    print("OnSubFinish7402522")
end

function Quest74025:OnSubStart7402523(arg1)
    print("OnSubStart7402523")
    this:CreateQuestNpc(arg1, npcs.Npc21049Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21048Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402523(arg1)
    print("OnSubFinish7402523")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.FindParterner, nil, 74025)
    end)

    this:GetQuestNpcActor(npcs.Npc21048Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21049Data.alias, 3)
end

function Quest74025:OnSubStart7402524(arg1)
    print("OnSubStart7402524")
    this:CreateQuestNpc(arg1, npcs.Npc5248Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21072Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402524Trigger", "Actor/Gadget/Q7402524Trigger", 70900002, 0, points.TPos_Q7402524Trigger.pos, points.TPos_Q7402524Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402524(arg1)
    print("OnSubFinish7402524")
end

function Quest74025:OnSubStart7402525(arg1)
    print("OnSubStart7402525")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21048Data.id, 0, npcs.Npc21048Data.alias)
end

function Quest74025:OnSubFinish7402525(arg1)
    print("OnSubFinish7402525")
    this:SafeDestroyQuestNpc(npcs.Npc5248Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21072Data.alias, 3)
end

function Quest74025:OnSubStart7402543(arg1)
    print("OnSubStart7402543")
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
end

function Quest74025:OnSubFinish7402543(arg1)
    print("OnSubFinish7402543")
    self:SetNavigationByMainId(74033, true)
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 3)
end

function Quest74025:OnSubStart7402526(arg1)
    print("OnSubStart7402526")
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21074Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21124Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21099Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21099Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21157Data.id, 0)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21157Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402526(arg1)
    print("OnSubFinish7402526")
    this:SafeDestroyQuestNpc(npcs.Npc5205Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21099Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21157Data.alias, 3)
end

function Quest74025:OnSubStart7402545(arg1)
    print("OnSubStart7402545")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402545Trigger", "Actor/Gadget/Q7402545Trigger", 70900002, 0, points.TPos_Q7402545Trigger.pos, points.TPos_Q7402545Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402545(arg1)
    print("OnSubFinish7402545")
end

function Quest74025:OnSubStart7402527(arg1)
    print("OnSubStart7402527")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21048Data.id, 0, npcs.Npc21048Data.alias)
end

function Quest74025:OnSubFinish7402527(arg1)
    print("OnSubFinish7402527")
end

function Quest74025:OnSubStart7402528(arg1)
    print("OnSubStart7402528")
    this:CreateQuestNpc(arg1, npcs.Npc21049Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21048Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402528(arg1)
    print("OnSubFinish7402528")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.GetUpDay2, nil, 74025)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21049Data.alias, 3)
end

function Quest74025:OnSubStart7402529(arg1)
    print("OnSubStart7402529")
    this:CreateQuestNpc(arg1, npcs.Npc5248Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5248Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21073Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21099Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21099Data.alias)
    questNpcActor:DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21157Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21246Data.id, 0)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21157Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402529(arg1)
    print("OnSubFinish7402529")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Phase2Over, nil, 74025)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc5248Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21099Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21157Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21246Data.alias, 3)
end

function Quest74025:OnSubStart7402530(arg1)
    print("OnSubStart7402530")
    this:CreateQuestNpc(arg1, npcs.Npc21074Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402530Trigger", "Actor/Gadget/Q7402530Trigger", 70900002, 0, points.TPos_Q7402530Trigger.pos, points.TPos_Q7402530Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402530(arg1)
    print("OnSubFinish7402530")
end

function Quest74025:OnSubStart7402531(arg1)
    print("OnSubStart7402531")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21074Data.id, 0, npcs.Npc21074Data.alias)
end

function Quest74025:OnSubFinish7402531(arg1)
    print("OnSubFinish7402531")
    this:SafeDestroyQuestNpc(npcs.Npc21074Data.alias, 3)
end

function Quest74025:OnSubStart7402546(arg1)
    print("OnSubStart7402546")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402546Trigger", "Actor/Gadget/Q7402546Trigger", 70900002, 0, points.TPos_Q7402546Trigger.pos, points.TPos_Q7402546Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402546(arg1)
    print("OnSubFinish7402546")
end

function Quest74025:OnSubStart7402532(arg1)
    print("OnSubStart7402532")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21048Data.id, 0, npcs.Npc21048Data.alias)
end

function Quest74025:OnSubFinish7402532(arg1)
    print("OnSubFinish7402532")
end

function Quest74025:OnSubStart7402533(arg1)
    print("OnSubStart7402533")
    this:CreateQuestNpc(arg1, npcs.Npc21049Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21048Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402533(arg1)
    print("OnSubFinish7402533")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.GetUpDay3, nil, 74025)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21049Data.alias, 3)
end

function Quest74025:OnSubStart7402534(arg1)
    print("OnSubStart7402534")
    this:CreateQuestNpc(arg1, npcs.Npc21074Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21124Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21099Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21099Data.alias)
    questNpcActor:DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21157Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21246Data.id, 0)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21157Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402534(arg1)
    print("OnSubFinish7402534")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Phase3Over, nil, 74025)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21099Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21157Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21246Data.alias, 3)
end

function Quest74025:OnSubStart7402535(arg1)
    print("OnSubStart7402535")
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402535Trigger", "Actor/Gadget/Q7402535Trigger", 70900002, 0, points.TPos_Q7402535Trigger.pos, points.TPos_Q7402535Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402535(arg1)
    print("OnSubFinish7402535")
end

function Quest74025:OnSubStart7402536(arg1)
    print("OnSubStart7402536")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21073Data.id, 0, npcs.Npc21073Data.alias)
end

function Quest74025:OnSubFinish7402536(arg1)
    print("OnSubFinish7402536")
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
end

function Quest74025:OnSubStart7402547(arg1)
    print("OnSubStart7402547")
    this:CreateQuestNpc(arg1, npcs.Npc21072Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402547Trigger", "Actor/Gadget/Q7402547Trigger", 70900002, 0, points.TPos_Q7402547Trigger.pos, points.TPos_Q7402547Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402547(arg1)
    print("OnSubFinish7402547")
end

function Quest74025:OnSubStart7402537(arg1)
    print("OnSubStart7402537")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21072Data.id, 0, npcs.Npc21072Data.alias)
end

function Quest74025:OnSubFinish7402537(arg1)
    print("OnSubFinish7402537")
    this:SafeDestroyQuestNpc(npcs.Npc21072Data.alias, 3)
end

function Quest74025:OnSubStart7402538(arg1)
    print("OnSubStart7402538")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21049Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21048Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74025:OnSubFinish7402538(arg1)
    print("OnSubFinish7402538")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.GetUpDay4, nil, 74025)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21049Data.alias, 3)
end

function Quest74025:OnSubStart7402539(arg1)
    print("OnSubStart7402539")
    this:CreateQuestNpc(arg1, npcs.Npc21246Data.id, 0)
end

function Quest74025:OnSubFinish7402539(arg1)
    print("OnSubFinish7402539")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Phase4Over, nil, 74025)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21246Data.alias, 3)
end

function Quest74025:OnSubStart7402540(arg1)
    print("OnSubStart7402540")
    this:CreateQuestNpc(arg1, npcs.Npc5248Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21074Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402540Trigger", "Actor/Gadget/Q7402540Trigger", 70900002, 0, points.TPos_Q7402540Trigger.pos, points.TPos_Q7402540Trigger.rot, true, false, 3)
end

function Quest74025:OnSubFinish7402540(arg1)
    print("OnSubFinish7402540")
end

function Quest74025:OnSubStart7402541(arg1)
    print("OnSubStart7402541")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5248Data.id, 0, npcs.Npc5248Data.alias)
end

function Quest74025:OnSubFinish7402541(arg1)
    print("OnSubFinish7402541")
    this:SafeDestroyQuestNpc(npcs.Npc5248Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21074Data.alias, 3)
end

function Quest74025:OnSubStart7402519(arg1)
    print("OnSubStart7402519")
end

function Quest74025:OnSubFinish7402519(arg1)
    print("OnSubFinish7402519")
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
end

return Quest74025
