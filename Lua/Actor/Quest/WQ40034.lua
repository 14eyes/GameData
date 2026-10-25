require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40034 = class("Quest40034", QuestActorProxy)
Quest40034.defaultAlias = "Quest40034"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40034:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4003413"] = self.OnSubStart4003413,
        ["4003401"] = self.OnSubStart4003401,
        ["4003402"] = self.OnSubStart4003402,
        ["4003403"] = self.OnSubStart4003403,
        ["4003404"] = self.OnSubStart4003404,
        ["4003405"] = self.OnSubStart4003405,
        ["4003406"] = self.OnSubStart4003406,
        ["4003407"] = self.OnSubStart4003407,
        ["4003411"] = self.OnSubStart4003411,
        ["4003408"] = self.OnSubStart4003408,
        ["4003412"] = self.OnSubStart4003412,
        ["4003409"] = self.OnSubStart4003409,
        ["4003410"] = self.OnSubStart4003410
    }
end

function Quest40034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4003413"] = self.OnSubFinish4003413,
        ["4003401"] = self.OnSubFinish4003401,
        ["4003402"] = self.OnSubFinish4003402,
        ["4003403"] = self.OnSubFinish4003403,
        ["4003404"] = self.OnSubFinish4003404,
        ["4003405"] = self.OnSubFinish4003405,
        ["4003406"] = self.OnSubFinish4003406,
        ["4003407"] = self.OnSubFinish4003407,
        ["4003411"] = self.OnSubFinish4003411,
        ["4003408"] = self.OnSubFinish4003408,
        ["4003412"] = self.OnSubFinish4003412,
        ["4003409"] = self.OnSubFinish4003409,
        ["4003410"] = self.OnSubFinish4003410
    }
end

function Quest40034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40034:Start()
    print("Start")
end

function Quest40034:OnDestroy()
    print("OnDestroy")
end

function Quest40034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40034:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 46101)
    self:SafeDestroyQuestNpc(npcs.Npc12287Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12287Data.alias, 46101)
    self:SafeDestroyQuestNpc(npcs.Npc12284Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3042Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4003401Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4003407Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4003409Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4003411Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4003412Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q400340201Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q400340202Trigger", 3, false)
end

function Quest40034:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40034:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40034:OnSubStart4003413(arg1)
    print("OnSubStart4003413")
end

function Quest40034:OnSubFinish4003413(arg1)
    print("OnSubFinish4003413")
end

function Quest40034:OnSubStart4003401(arg1)
    print("OnSubStart4003401")
    self:DailyNpcSafeHideSelf(npcs.Npc3042Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4003401Trigger", "Actor/Gadget/Q4003401Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q40031Longer01").pos, sceneData:GetDummyPoint(3, "Q40031Longer01").rot, true, false, 3)
end

function Quest40034:OnSubFinish4003401(arg1)
    print("OnSubFinish4003401")
end

function Quest40034:OnSubStart4003402(arg1)
    print("OnSubStart4003402")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12284Data.id, 2)
    actorMgr:CreateActorWithPos("Q400340201Trigger", "Actor/Gadget/Q400340201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q40034SamuraiDog01").pos, sceneData:GetDummyPoint(3, "Q40034SamuraiDog01").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q400340202Trigger", "Actor/Gadget/Q400340202Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q40034Pos01").pos, sceneData:GetDummyPoint(3, "Q40034Pos01").rot, true, false, 3)
end

function Quest40034:OnSubFinish4003402(arg1)
    print("OnSubFinish4003402")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
end

function Quest40034:OnSubStart4003403(arg1)
    print("OnSubStart4003403")
    self:DailyNpcSafeHideSelf(npcs.Npc3042Data.alias, 1, true)
end

function Quest40034:OnSubFinish4003403(arg1)
    print("OnSubFinish4003403")
end

function Quest40034:OnSubStart4003404(arg1)
    print("OnSubStart4003404")
    self:RequestInteraction(npcs.Npc12284Data.alias)
end

function Quest40034:OnSubFinish4003404(arg1)
    print("OnSubFinish4003404")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12284Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable4003404, nil, "")
    end)
end

function Quest40034:OnSubStart4003405(arg1)
    print("OnSubStart4003405")
    self:DailyNpcSafeHideSelf(npcs.Npc3042Data.alias, 1, true)
end

function Quest40034:OnSubFinish4003405(arg1)
    print("OnSubFinish4003405")
    self:CallDelay(2, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 4003406)
    end)
end

function Quest40034:OnSubStart4003406(arg1)
    print("OnSubStart4003406")
    self:CallDelay(3, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12287Data.id, 1, npcs.Npc12287Data.alias)
    end)
end

function Quest40034:OnSubFinish4003406(arg1)
    print("OnSubFinish4003406")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
end

function Quest40034:OnSubStart4003407(arg1)
    print("OnSubStart4003407")
    self:DailyNpcSafeHideSelf(npcs.Npc3042Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12287Data.id, 1)
    self:CallDelay(1.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12287Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12287Data.alias, 40034)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData4003407, 6, 2, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:ClearSteerToAutonomyTask()
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q40034SamuraiDog02").rot))
            actorMgr:CreateActorWithPos("Q4003407Trigger", "Actor/Gadget/Q4003407Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q40034SamuraiDog02").pos, sceneData:GetDummyPoint(3, "Q40034SamuraiDog02").rot, true, false, 3)
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, false)
    end)
end

function Quest40034:OnSubFinish4003407(arg1)
    print("OnSubFinish4003407")
    self:GetQuestNpcActor(npcs.Npc12287Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40034:OnSubStart4003411(arg1)
    print("OnSubStart4003411")
    self:CreateQuestNpc(arg1, npcs.Npc12287Data.id, 1)
    actorMgr:CreateActorWithPos("Q4003411Trigger", "Actor/Gadget/Q4003411Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q40034SamuraiDog02").pos, sceneData:GetDummyPoint(3, "Q40034SamuraiDog02").rot, true, false, 3)
end

function Quest40034:OnSubFinish4003411(arg1)
    print("OnSubFinish4003411")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12287Data.alias, 3)
end

function Quest40034:OnSubStart4003408(arg1)
    print("OnSubStart4003408")
    self:DailyNpcSafeHideSelf(npcs.Npc3042Data.alias, 1, true)
end

function Quest40034:OnSubFinish4003408(arg1)
    print("OnSubFinish4003408")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 46101)
    self:SafeDestroyQuestNpc(npcs.Npc12287Data.alias, 46101)
end

function Quest40034:OnSubStart4003412(arg1)
    print("OnSubStart4003412")
    self:DailyNpcSafeHideSelf(npcs.Npc3042Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4003412Trigger", "Actor/Gadget/Q4003412Trigger", 70900002, 0, sceneData:GetDummyPoint(46101, "Q40034DungeonSamuraiDog01").pos, sceneData:GetDummyPoint(46101, "Q40034DungeonSamuraiDog01").rot, true, false, 46101)
end

function Quest40034:OnSubFinish4003412(arg1)
    print("OnSubFinish4003412")
end

function Quest40034:OnSubStart4003409(arg1)
    print("OnSubStart4003409")
    self:CallDelay(4, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 1)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12287Data.id, 2)
            actorMgr:CreateActorWithPos("Q4003409Trigger", "Actor/Gadget/Q4003409Trigger", 70900002, 0, sceneData:GetDummyPoint(46101, "Q40034DungeonSamuraiDog01").pos, sceneData:GetDummyPoint(46101, "Q40034DungeonSamuraiDog01").rot, true, false, 46101)
        end, nil, nil, "", false, true)
    end)
end

function Quest40034:OnSubFinish4003409(arg1)
    print("OnSubFinish4003409")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 46101)
    self:SafeDestroyQuestNpc(npcs.Npc12287Data.alias, 46101)
end

function Quest40034:OnSubStart4003410(arg1)
    print("OnSubStart4003410")
    self:DailyNpcSafeHideSelf(npcs.Npc3042Data.alias, 1, true)
end

function Quest40034:OnSubFinish4003410(arg1)
    print("OnSubFinish4003410")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12287Data.alias, 46101)
end

return Quest40034
