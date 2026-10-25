require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73001 = class("Quest73001", QuestActorProxy)
Quest73001.defaultAlias = "Quest73001"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73001:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300101"] = self.OnSubStart7300101,
        ["7300102"] = self.OnSubStart7300102,
        ["7300103"] = self.OnSubStart7300103,
        ["7300104"] = self.OnSubStart7300104,
        ["7300105"] = self.OnSubStart7300105,
        ["7300106"] = self.OnSubStart7300106,
        ["7300121"] = self.OnSubStart7300121,
        ["7300118"] = self.OnSubStart7300118,
        ["7300107"] = self.OnSubStart7300107,
        ["7300119"] = self.OnSubStart7300119,
        ["7300120"] = self.OnSubStart7300120,
        ["7300108"] = self.OnSubStart7300108,
        ["7300109"] = self.OnSubStart7300109,
        ["7300116"] = self.OnSubStart7300116,
        ["7300117"] = self.OnSubStart7300117,
        ["7300110"] = self.OnSubStart7300110,
        ["7300111"] = self.OnSubStart7300111,
        ["7300112"] = self.OnSubStart7300112,
        ["7300113"] = self.OnSubStart7300113,
        ["7300114"] = self.OnSubStart7300114,
        ["7300115"] = self.OnSubStart7300115,
        ["7300122"] = self.OnSubStart7300122,
        ["7300123"] = self.OnSubStart7300123
    }
end

function Quest73001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300101"] = self.OnSubFinish7300101,
        ["7300102"] = self.OnSubFinish7300102,
        ["7300103"] = self.OnSubFinish7300103,
        ["7300104"] = self.OnSubFinish7300104,
        ["7300105"] = self.OnSubFinish7300105,
        ["7300106"] = self.OnSubFinish7300106,
        ["7300121"] = self.OnSubFinish7300121,
        ["7300118"] = self.OnSubFinish7300118,
        ["7300107"] = self.OnSubFinish7300107,
        ["7300119"] = self.OnSubFinish7300119,
        ["7300120"] = self.OnSubFinish7300120,
        ["7300108"] = self.OnSubFinish7300108,
        ["7300109"] = self.OnSubFinish7300109,
        ["7300116"] = self.OnSubFinish7300116,
        ["7300117"] = self.OnSubFinish7300117,
        ["7300110"] = self.OnSubFinish7300110,
        ["7300111"] = self.OnSubFinish7300111,
        ["7300112"] = self.OnSubFinish7300112,
        ["7300113"] = self.OnSubFinish7300113,
        ["7300114"] = self.OnSubFinish7300114,
        ["7300115"] = self.OnSubFinish7300115,
        ["7300122"] = self.OnSubFinish7300122,
        ["7300123"] = self.OnSubFinish7300123
    }
end

function Quest73001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73001:Start()
    print("Start")
end

function Quest73001:OnDestroy()
    print("OnDestroy")
end

function Quest73001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73001:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73001:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73001:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73001:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73001:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73001:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73001:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73001:MovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest73001:MoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest73001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7300101)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7300122)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(true, 7300122)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 7300123)
    end
end

function Quest73001:OnSubStart7300101(arg1)
    print("OnSubStart7300101")
    this:NpcCreate(arg1, npcs.Npc4198Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(4140, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc20593Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300101(arg1)
    print("OnSubFinish7300101")
    this:ShowBlackScreen(0.3, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest73001:OnSubStart7300102(arg1)
    print("OnSubStart7300102")
    this:NpcCreate(arg1, npcs.Npc4198Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20593Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
    this:CallDelay(1.5, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc4198Data.alias, 73001)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 7, 4, -1, nil, nil, nil, arg1.MovePause, arg1.MoveResume, nil, false)
    end)

    actorMgr:CreateActorWithPos("Q73001Trigger_Narrator_First", "Actor/Gadget/Q73001Trigger_Narrator_First", 70900002, 0, {x = -878.518, y = 197.745, z = 2656.606}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7300102Trigger_Finish", "Actor/Gadget/Q7300102Trigger_Finish", 70900002, 0, {x = -914.127, y = 204.681, z = 2619.03}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73001:OnSubFinish7300102(arg1)
    print("OnSubFinish7300102")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73001:OnSubStart7300103(arg1)
    print("OnSubStart7300103")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc4198Data.alias, 73001):ClearFollowTask()
end

function Quest73001:OnSubFinish7300103(arg1)
    print("OnSubFinish7300103")
end

function Quest73001:OnSubStart7300104(arg1)
    print("OnSubStart7300104")
    this:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300104(arg1)
    print("OnSubFinish7300104")
end

function Quest73001:OnSubStart7300105(arg1)
    print("OnSubStart7300105")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300105(arg1)
    print("OnSubFinish7300105")
    this:NarratorOnlyTask(datas.Narrator_RanaFollow2, nil, "")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
end

function Quest73001:OnSubStart7300106(arg1)
    print("OnSubStart7300106")
    this:CreateQuestNpc(arg1, npcs.Npc20593Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20598Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20644Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc20735Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc20655Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc20655Data.alias):DoFreeStyle(1200, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300106(arg1)
    print("OnSubFinish7300106")
    this:GetQuestNpcActor(npcs.Npc4198Data.alias):ClearFollowTask()
end

function Quest73001:OnSubStart7300121(arg1)
    print("OnSubStart7300121")
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7300106Trigger_Narrator_RanaReach", "Actor/Gadget/Q7300106Trigger_Narrator_RanaReach", 70900002, 0, {x = -1039.333, y = 200.686, z = 2636.518}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73001:OnSubFinish7300121(arg1)
    print("OnSubFinish7300121")
    actorMgr:GetActor(npcs.Npc4198Data.alias)
    this:NarratorOnlyTask(datas.Narrator_RanaReach, nil, "")
end

function Quest73001:OnSubStart7300118(arg1)
    print("OnSubStart7300118")
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
    this:RequestInteraction(npcs.Npc20644Data.alias)
    this:ActorDestroy("Q7300106Trigger_Narrator_RanaReach")
    this:GetQuestNpcActor(npcs.Npc4198Data.alias, 73001):ClearFollowTask()
end

function Quest73001:OnSubFinish7300118(arg1)
    print("OnSubFinish7300118")
    this:NarratorOnlyTask(datas.NarratorTable_Amadhiah, nil, "")
end

function Quest73001:OnSubStart7300107(arg1)
    print("OnSubStart7300107")
    this:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4198Data.alias, 73001)
    this:NpcForceAvatarWalkByDist(questNpcActor, 3.5, 6)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 10, 4, -1, function(arg1)
        this:NarratorOnlyTask(datas.Narrator_RanaIosaphatTalkEachonther, function(arg1)
            actorUtils.FinishQuestID(false, 7300107)
        end, "")
    end, nil, nil, self.MovePause, self.MoveResume, nil, true)

    actorMgr:CreateActorWithPos("Q7300107Trigger_fail", "Actor/Gadget/Q7300107Trigger_fail", 70900002, 0, {x = -1063.023, y = 201.31, z = 2650.343}, {x = 0.0, y = 26.247, z = 0.0}, true, false, 3)
end

function Quest73001:OnSubFinish7300107(arg1)
    print("OnSubFinish7300107")
end

function Quest73001:OnSubStart7300119(arg1)
    print("OnSubStart7300119")
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4198Data.alias, 73001)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData3, 10, 3, -1, function(arg1)
        this:EnterSceneLookCamera({x = -1104.0, y = 204.0, z = 2658.0}, 0.5, 3, false, false)
        this:NarratorOnlyTask(datas.Narrator_RanaTalkAlphonso, function(arg1)
            actorUtils.FinishQuestID(false, 7300119)
        end, "")
    end, nil, nil, self.MovePause, self.MoveResume, nil, true)

    actorMgr:CreateActorWithPos("Q7300119Trigger_fail", "Actor/Gadget/Q7300119Trigger_fail", 70900002, 0, {x = -1094.78, y = 201.757, z = 2647.804}, {x = 0.0, y = 25.47, z = 0.0}, true, false, 3)
end

function Quest73001:OnSubFinish7300119(arg1)
    print("OnSubFinish7300119")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4198Data.alias, 73001)
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:NarratorOnlyTask(datas.NarratorTable_AlphsolTalkRana, nil, "")
end

function Quest73001:OnSubStart7300120(arg1)
    print("OnSubStart7300120")
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300120(arg1)
    print("OnSubFinish7300120")
end

function Quest73001:OnSubStart7300108(arg1)
    print("OnSubStart7300108")
    this:CreateQuestNpc(arg1, npcs.Npc20593Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc20593Data.alias):DoFreeStateTrigger()
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4198Data.alias, 73001)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData4, 10, 3, -1, nil, nil, nil, nil, nil, nil, false)
end

function Quest73001:OnSubFinish7300108(arg1)
    print("OnSubFinish7300108")
end

function Quest73001:OnSubStart7300109(arg1)
    print("OnSubStart7300109")
    this:CreateQuestNpc(arg1, npcs.Npc20594Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20595Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20596Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7300109Trigger_Narrator_Runstar", "Actor/Gadget/Q7300109Trigger_Narrator_Runstar", 70900002, 0, {x = -1105.751, y = 203.215, z = 2646.07}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7300109Trigger_ChildrunReach", "Actor/Gadget/Q7300109Trigger_ChildrunReach", 70900002, 0, {x = -1154.945, y = 229.714, z = 2719.346}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7300109Trigger_Narrator_Jehiet", "Actor/Gadget/Q7300109Trigger_Narrator_Jehiet", 70900002, 0, {x = -1139.092, y = 216.281, z = 2642.156}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7300109Trigger_Narrator_Bahram", "Actor/Gadget/Q7300109Trigger_Narrator_Bahram", 70900002, 0, {x = -1143.046, y = 223.642, z = 2702.912}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:CallDelay(0.1, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc20594Data.alias, 73001)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.child1, 80, 20, -1, function(arg1)
            actorMgr:GetActor(npcs.Npc20594Data.alias):DoFreeStyle(5010, true, nil, false, false, false, false)
        end, nil, nil, nil, nil, nil, false)
    end)

    this:CallDelay(0.2, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc20595Data.alias, 73001)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.child2, 80, 20, -1, function(arg1)
            actorMgr:GetActor(npcs.Npc20595Data.alias):DoFreeStyle(1050, true, nil, false, false, false, false)
        end, nil, nil, nil, nil, nil, false)
    end)

    this:CallDelay(0.3, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc20596Data.alias, 73001)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.child3, 40, 20, -1, function(arg1)
            actorMgr:GetActor(npcs.Npc20596Data.alias):DoFreeStyle(1160, true, nil, false, false, false)
        end, nil, nil, nil, nil, nil, false)
    end)
end

function Quest73001:OnSubFinish7300109(arg1)
    print("OnSubFinish7300109")
    this:ShowBlackScreen(0.2, 3, 0.5, nil, nil, nil, "", false, true)
end

function Quest73001:OnSubStart7300116(arg1)
    print("OnSubStart7300116")
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300116(arg1)
    print("OnSubFinish7300116")
end

function Quest73001:OnSubStart7300117(arg1)
    print("OnSubStart7300117")
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300117(arg1)
    print("OnSubFinish7300117")
end

function Quest73001:OnSubStart7300110(arg1)
    print("OnSubStart7300110")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc20594Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20595Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc20596Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300110(arg1)
    print("OnSubFinish7300110")
    this:NarratorOnlyTask(datas.Narrator_PaimonHint1, nil, "")
    this:SafeDestroyQuestNpc(npcs.Npc4198Data.alias, 3)
end

function Quest73001:OnSubStart7300111(arg1)
    print("OnSubStart7300111")
    this:CreateQuestNpc(arg1, npcs.Npc20594Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc20594Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc20595Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc20595Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc20596Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc20596Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300111(arg1)
    print("OnSubFinish7300111")
end

function Quest73001:OnSubStart7300112(arg1)
    print("OnSubStart7300112")
    this:GetQuestNpcActor(npcs.Npc20594Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc20595Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc20596Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300112(arg1)
    print("OnSubFinish7300112")
end

function Quest73001:OnSubStart7300113(arg1)
    print("OnSubStart7300113")
    this:GetQuestNpcActor(npcs.Npc20594Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc20595Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc20596Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300113(arg1)
    print("OnSubFinish7300113")
end

function Quest73001:OnSubStart7300114(arg1)
    print("OnSubStart7300114")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    this:GetQuestNpcActor(npcs.Npc20594Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc20595Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc20596Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300114(arg1)
    print("OnSubFinish7300114")
    this:EnterSceneLookCamera({x = -1089.11, y = 218.657, z = 2731.228}, 2, 3, true, true)
    this:NarratorOnlyTask(datas.NarratorTable, nil, "")
    this:SafeDestroyQuestNpc(npcs.Npc4198Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20594Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20595Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20596Data.alias, 3)
end

function Quest73001:OnSubStart7300115(arg1)
    print("OnSubStart7300115")
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7300115Trigger_Finish", "Actor/Gadget/Q7300115Trigger_Finish", 70900002, 0, {x = -1093.64, y = 218.866, z = 2732.107}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73001:OnSubFinish7300115(arg1)
    print("OnSubFinish7300115")
end

function Quest73001:OnSubStart7300122(arg1)
    print("OnSubStart7300122")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300122(arg1)
    print("OnSubFinish7300122")
    this:LightNotifyTo(npcs.Npc4321Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4331Data.alias, 0, true)
    this:NpcDestroy(npcs.Npc4198Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20593Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20598Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20644Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20735Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20655Data.alias, 3)
end

function Quest73001:OnSubStart7300123(arg1)
    print("OnSubStart7300123")
    this:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4326Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4325Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4324Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4329Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4322Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4323Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4331Data.alias, 1, true)
end

function Quest73001:OnSubFinish7300123(arg1)
    print("OnSubFinish7300123")
    this:LightNotifyTo(npcs.Npc4321Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4331Data.alias, 0, true)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc20593Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20598Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20644Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20735Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20655Data.alias, 3)
end

return Quest73001
