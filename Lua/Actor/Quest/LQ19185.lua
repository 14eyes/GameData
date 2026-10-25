require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19185 = class("Quest19185", QuestActorProxy)
Quest19185.defaultAlias = "Quest19185"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19185:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19185:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1918501"] = self.OnSubStart1918501,
        ["1918503"] = self.OnSubStart1918503,
        ["1918504"] = self.OnSubStart1918504,
        ["1918505"] = self.OnSubStart1918505,
        ["1918506"] = self.OnSubStart1918506,
        ["1918507"] = self.OnSubStart1918507,
        ["1918523"] = self.OnSubStart1918523,
        ["1918508"] = self.OnSubStart1918508,
        ["1918509"] = self.OnSubStart1918509,
        ["1918512"] = self.OnSubStart1918512,
        ["1918510"] = self.OnSubStart1918510,
        ["1918511"] = self.OnSubStart1918511,
        ["1918502"] = self.OnSubStart1918502,
        ["1918513"] = self.OnSubStart1918513,
        ["1918514"] = self.OnSubStart1918514,
        ["1918528"] = self.OnSubStart1918528,
        ["1918515"] = self.OnSubStart1918515,
        ["1918516"] = self.OnSubStart1918516,
        ["1918517"] = self.OnSubStart1918517,
        ["1918521"] = self.OnSubStart1918521,
        ["1918522"] = self.OnSubStart1918522,
        ["1918518"] = self.OnSubStart1918518,
        ["1918519"] = self.OnSubStart1918519,
        ["1918524"] = self.OnSubStart1918524,
        ["1918525"] = self.OnSubStart1918525,
        ["1918526"] = self.OnSubStart1918526,
        ["1918527"] = self.OnSubStart1918527,
        ["1918520"] = self.OnSubStart1918520
    }
end

function Quest19185:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1918501"] = self.OnSubFinish1918501,
        ["1918503"] = self.OnSubFinish1918503,
        ["1918504"] = self.OnSubFinish1918504,
        ["1918505"] = self.OnSubFinish1918505,
        ["1918506"] = self.OnSubFinish1918506,
        ["1918507"] = self.OnSubFinish1918507,
        ["1918523"] = self.OnSubFinish1918523,
        ["1918508"] = self.OnSubFinish1918508,
        ["1918509"] = self.OnSubFinish1918509,
        ["1918512"] = self.OnSubFinish1918512,
        ["1918510"] = self.OnSubFinish1918510,
        ["1918511"] = self.OnSubFinish1918511,
        ["1918502"] = self.OnSubFinish1918502,
        ["1918513"] = self.OnSubFinish1918513,
        ["1918514"] = self.OnSubFinish1918514,
        ["1918528"] = self.OnSubFinish1918528,
        ["1918515"] = self.OnSubFinish1918515,
        ["1918516"] = self.OnSubFinish1918516,
        ["1918517"] = self.OnSubFinish1918517,
        ["1918521"] = self.OnSubFinish1918521,
        ["1918522"] = self.OnSubFinish1918522,
        ["1918518"] = self.OnSubFinish1918518,
        ["1918519"] = self.OnSubFinish1918519,
        ["1918524"] = self.OnSubFinish1918524,
        ["1918525"] = self.OnSubFinish1918525,
        ["1918526"] = self.OnSubFinish1918526,
        ["1918527"] = self.OnSubFinish1918527,
        ["1918520"] = self.OnSubFinish1918520
    }
end

function Quest19185:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1918522"] = self.OnSubFailed1918522}
end

function Quest19185:Start()
    print("Start")
end

function Quest19185:OnDestroy()
    print("OnDestroy")
end

function Quest19185:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19185:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19185:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13937Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13942Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5042Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13938Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13939Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13940Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14028Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5033Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5191Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5033Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5079Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1918504Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918505Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918506Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918507Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918509Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918513Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918514Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918515Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918516Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918517Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918518Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918521Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918523Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918523Triggerfinish", 3, false)
    actorMgr:DestroyEntityActor("Q1918523Triggerlookcamp", 3, false)
    this:CancelStoryByQuest(121918521)
    this:UnCallDelayByQuest("1918523")
    this:UnCallDelayByQuest("1918514")
end

function Quest19185:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19185:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19185:OnSubStart1918501(arg1)
    print("OnSubStart1918501")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918501)
    this:CreateQuestNpc(arg1, npcs.Npc5042Data.id, 0)
end

function Quest19185:OnSubFinish1918501(arg1)
    print("OnSubFinish1918501")
    this:SafeDestroyQuestNpc(npcs.Npc5042Data.alias, 3)
end

function Quest19185:OnSubStart1918503(arg1)
    print("OnSubStart1918503")
end

function Quest19185:OnSubFinish1918503(arg1)
    print("OnSubFinish1918503")
end

function Quest19185:OnSubStart1918504(arg1)
    print("OnSubStart1918504")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918504)
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13930Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13937Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13942Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918504Trigger", "Actor/Gadget/Q1918504Trigger", 70900002, 0, points.TPos_Q1918504Trigger.pos, points.TPos_Q1918504Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13930Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13937Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
end

function Quest19185:OnSubFinish1918504(arg1)
    print("OnSubFinish1918504")
    this:SafeDestroyQuestNpc(npcs.Npc13930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13937Data.alias, 3)
end

function Quest19185:OnSubStart1918505(arg1)
    print("OnSubStart1918505")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918505)
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13942Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918505Trigger", "Actor/Gadget/Q1918505Trigger", 70900002, 0, points.TPos_Q1918505Trigger.pos, points.TPos_Q1918505Trigger.rot, true, false, 3)
end

function Quest19185:OnSubFinish1918505(arg1)
    print("OnSubFinish1918505")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13942Data.alias, 3)
end

function Quest19185:OnSubStart1918506(arg1)
    print("OnSubStart1918506")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918506)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918506Trigger", "Actor/Gadget/Q1918506Trigger", 70900002, 0, points.TPos_Q1918506Trigger.pos, points.TPos_Q1918506Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
end

function Quest19185:OnSubFinish1918506(arg1)
    print("OnSubFinish1918506")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

function Quest19185:OnSubStart1918507(arg1)
    print("OnSubStart1918507")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918507)
    actorMgr:CreateActorWithPos("Q1918507Trigger", "Actor/Gadget/Q1918507Trigger", 70900002, 0, points.TPos_Q1918507Trigger.pos, points.TPos_Q1918507Trigger.rot, true, false, 3)
    this:ActorDestroy("Q1918523Trigger")
    this:ActorDestroy("Q1918523Triggerfinish")
end

function Quest19185:OnSubFinish1918507(arg1)
    print("OnSubFinish1918507")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
end

function Quest19185:OnSubStart1918523(arg1)
    print("OnSubStart1918523")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13942Data.id, 0)
    end)

    actorMgr:CreateActorWithPos("Q1918523Trigger", "Actor/Gadget/Q1918523Trigger", 70900002, 0, points.TPos_Q1918523Trigger.pos, points.TPos_Q1918523Trigger.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13942Data.alias, 19185)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 15, 10, -1, function(arg1)
        actorMgr:CreateActorWithPos("Q1918523Triggerfinish", "Actor/Gadget/Q1918523Triggerfinish", 70900002, 0, points.TPos_Q1918523Triggerfinish.pos, points.TPos_Q1918523Triggerfinish.rot, true, false, 3)
    end, nil, nil, function(arg1)
        this:GetQuestNpcActor(npcs.Npc13942Data.alias, 19185):DoFreeStyle(3, true, nil, false, false, false, false)
    end, nil, nil, false)

    this:EnterSceneLookCamera({x = 3987.0, y = 441.0, z = 4575.0}, 0, 3, false, false)
end

function Quest19185:OnSubFinish1918523(arg1)
    print("OnSubFinish1918523")
    this:ActorDestroy("Q1918523Trigger")
    this:ActorDestroy("Q1918523Triggerfinish")
    this:CallDelayByQuest("1918523", 2, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13942Data.alias, 19185)
        this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePointsData_01, function(arg1)
            this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
        end)
    end)
end

function Quest19185:OnSubStart1918508(arg1)
    print("OnSubStart1918508")
end

function Quest19185:OnSubFinish1918508(arg1)
    print("OnSubFinish1918508")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13942Data.alias, 19185)
    this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePointsData_02, function(arg1)
        this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    end)
end

function Quest19185:OnSubStart1918509(arg1)
    print("OnSubStart1918509")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918509)
    actorMgr:CreateActorWithPos("Q1918509Trigger", "Actor/Gadget/Q1918509Trigger", 70900002, 0, points.TPos_Q1918509Trigger.pos, points.TPos_Q1918509Trigger.rot, true, false, 3)
end

function Quest19185:OnSubFinish1918509(arg1)
    print("OnSubFinish1918509")
end

function Quest19185:OnSubStart1918512(arg1)
    print("OnSubStart1918512")
    this:CreateQuestNpc(arg1, npcs.Npc13940Data.id, 0)
end

function Quest19185:OnSubFinish1918512(arg1)
    print("OnSubFinish1918512")
    this:SafeDestroyQuestNpc(npcs.Npc13940Data.alias, 3)
end

function Quest19185:OnSubStart1918510(arg1)
    print("OnSubStart1918510")
    this:CreateQuestNpc(arg1, npcs.Npc13938Data.id, 0)
end

function Quest19185:OnSubFinish1918510(arg1)
    print("OnSubFinish1918510")
    this:SafeDestroyQuestNpc(npcs.Npc13938Data.alias, 3)
end

function Quest19185:OnSubStart1918511(arg1)
    print("OnSubStart1918511")
    this:CreateQuestNpc(arg1, npcs.Npc13939Data.id, 0)
end

function Quest19185:OnSubFinish1918511(arg1)
    print("OnSubFinish1918511")
    this:SafeDestroyQuestNpc(npcs.Npc13939Data.alias, 3)
end

function Quest19185:OnSubStart1918502(arg1)
    print("OnSubStart1918502")
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13942Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc518Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest19185:OnSubFinish1918502(arg1)
    print("OnSubFinish1918502")
end

function Quest19185:OnSubStart1918513(arg1)
    print("OnSubStart1918513")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918513)
    actorMgr:CreateActorWithPos("Q1918513Trigger", "Actor/Gadget/Q1918513Trigger", 70900002, 0, points.TPos_Q1918513Trigger.pos, points.TPos_Q1918513Trigger.rot, true, false, 3)
end

function Quest19185:OnSubFinish1918513(arg1)
    print("OnSubFinish1918513")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
end

function Quest19185:OnSubStart1918514(arg1)
    print("OnSubStart1918514")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13942Data.id, 0)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918514Trigger", "Actor/Gadget/Q1918514Trigger", 70900002, 0, points.TPos_Q1918514Trigger.pos, points.TPos_Q1918514Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
end

function Quest19185:OnSubFinish1918514(arg1)
    print("OnSubFinish1918514")
end

function Quest19185:OnSubStart1918528(arg1)
    print("OnSubStart1918528")
    this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
end

function Quest19185:OnSubFinish1918528(arg1)
    print("OnSubFinish1918528")
end

function Quest19185:OnSubStart1918515(arg1)
    print("OnSubStart1918515")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918515)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918515Trigger", "Actor/Gadget/Q1918515Trigger", 70900002, 0, points.TPos_Q1918515Trigger.pos, points.TPos_Q1918515Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
end

function Quest19185:OnSubFinish1918515(arg1)
    print("OnSubFinish1918515")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13942Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

function Quest19185:OnSubStart1918516(arg1)
    print("OnSubStart1918516")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918516)
    this:CreateQuestNpc(arg1, npcs.Npc14016Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5191Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918516Trigger", "Actor/Gadget/Q1918516Trigger", 70900002, 0, points.TPos_Q1918516Trigger.pos, points.TPos_Q1918516Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc14016Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5191Data.alias):DoFreeStyle(1172, true, nil, true, true, false, false)
end

function Quest19185:OnSubFinish1918516(arg1)
    print("OnSubFinish1918516")
    this:SafeDestroyQuestNpc(npcs.Npc14016Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5191Data.alias, 3)
end

function Quest19185:OnSubStart1918517(arg1)
    print("OnSubStart1918517")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918517)
    this:DailyNpcSafeHideSelf(npcs.Npc5033Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5191Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918517Trigger", "Actor/Gadget/Q1918517Trigger", 70900002, 0, points.TPos_Q1918517Trigger.pos, points.TPos_Q1918517Trigger.rot, true, false, 3)
    this:RemoveCoopInteractionDataFromSubStartPoint(108301, 1918522)
    this:SafeDestroyQuestNpc(npcs.Npc14028Data.alias, 3)
    this:CancelStoryByQuest(121918521)
    this:ActorDestroy("Q1918521Trigger")
    this:GetQuestNpcActor(npcs.Npc5191Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
end

function Quest19185:OnSubFinish1918517(arg1)
    print("OnSubFinish1918517")
    this:SafeDestroyQuestNpc(npcs.Npc13937Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5191Data.alias, 3)
end

function Quest19185:OnSubStart1918521(arg1)
    print("OnSubStart1918521")
end

function Quest19185:OnSubFinish1918521(arg1)
    print("OnSubFinish1918521")
end

function Quest19185:OnSubStart1918522(arg1)
    print("OnSubStart1918522")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918522)
    this:CreateQuestNpc(arg1, npcs.Npc14028Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5033Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:ShowBlackScreen(0.5, 1.8, 0.5, nil, nil, nil, "", false, true)
    this:DeployStoryByQuest(121918521)
    actorMgr:CreateActorWithPos("Q1918521Trigger", "Actor/Gadget/Q1918521Trigger", 70900002, 0, {x = 3574.18, y = 428.346, z = 4615.38}, {x = 0.0, y = 45.0, z = 0.0}, true, false, 3)
end

function Quest19185:OnSubFinish1918522(arg1)
    print("OnSubFinish1918522")
    this:CancelStoryByQuest(121918521)
    this:SafeDestroyQuestNpc(npcs.Npc14028Data.alias, 3)
    this:ActorDestroy("Q1918521Trigger")
    this:ClearNarratorTask()
end

function Quest19185:OnSubFailed1918522(arg1)
    print("OnSubFailed1918522")
    this:CancelStoryByQuest(121918521)
    this:ClearNarratorTask()
end

function Quest19185:OnSubStart1918518(arg1)
    print("OnSubStart1918518")
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13937Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13942Data.id, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14016Data.id, 0)
    end)

    this:DailyNpcSafeHideSelf(npcs.Npc5033Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1918518Trigger", "Actor/Gadget/Q1918518Trigger", 70900002, 0, points.TPos_Q1918518Trigger.pos, points.TPos_Q1918518Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13937Data.alias):DoFreeStyle(4109, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14016Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest19185:OnSubFinish1918518(arg1)
    print("OnSubFinish1918518")
end

function Quest19185:OnSubStart1918519(arg1)
    print("OnSubStart1918519")
    this:DailyNpcSafeHideSelf(npcs.Npc5033Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc518Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13937Data.alias):DoFreeStyle(4109, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14016Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest19185:OnSubFinish1918519(arg1)
    print("OnSubFinish1918519")
end

function Quest19185:OnSubStart1918524(arg1)
    print("OnSubStart1918524")
end

function Quest19185:OnSubFinish1918524(arg1)
    print("OnSubFinish1918524")
end

function Quest19185:OnSubStart1918525(arg1)
    print("OnSubStart1918525")
end

function Quest19185:OnSubFinish1918525(arg1)
    print("OnSubFinish1918525")
end

function Quest19185:OnSubStart1918526(arg1)
    print("OnSubStart1918526")
end

function Quest19185:OnSubFinish1918526(arg1)
    print("OnSubFinish1918526")
end

function Quest19185:OnSubStart1918527(arg1)
    print("OnSubStart1918527")
end

function Quest19185:OnSubFinish1918527(arg1)
    print("OnSubFinish1918527")
end

function Quest19185:OnSubStart1918520(arg1)
    print("OnSubStart1918520")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918520)
    this:DailyNpcSafeHideSelf(npcs.Npc5033Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13937Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14016Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest19185:OnSubFinish1918520(arg1)
    print("OnSubFinish1918520")
    this:LightNotifyTo(npcs.Npc5033Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5079Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13937Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13942Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14016Data.alias, 3)
end

return Quest19185
