require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3018 = class("Quest3018", QuestActorProxy)
Quest3018.defaultAlias = "Quest3018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["301801"] = self.OnSubStart301801,
        ["301802"] = self.OnSubStart301802,
        ["301803"] = self.OnSubStart301803,
        ["301804"] = self.OnSubStart301804,
        ["301805"] = self.OnSubStart301805,
        ["301806"] = self.OnSubStart301806,
        ["301807"] = self.OnSubStart301807,
        ["301808"] = self.OnSubStart301808,
        ["301809"] = self.OnSubStart301809,
        ["301810"] = self.OnSubStart301810,
        ["301811"] = self.OnSubStart301811
    }
end

function Quest3018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["301801"] = self.OnSubFinish301801,
        ["301802"] = self.OnSubFinish301802,
        ["301803"] = self.OnSubFinish301803,
        ["301804"] = self.OnSubFinish301804,
        ["301805"] = self.OnSubFinish301805,
        ["301806"] = self.OnSubFinish301806,
        ["301807"] = self.OnSubFinish301807,
        ["301808"] = self.OnSubFinish301808,
        ["301809"] = self.OnSubFinish301809,
        ["301810"] = self.OnSubFinish301810,
        ["301811"] = self.OnSubFinish301811
    }
end

function Quest3018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3018:Start()
    print("Start")
end

function Quest3018:OnDestroy()
    print("OnDestroy")
end

function Quest3018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3018:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3018:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3018:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest3018:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest3018:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    self:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest3018:OnMovePause()
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    local actor = actorMgr:GetActor("3018")
    self:SteerToAutonomyTask(tbl, 1, true, true)
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest3018:OnMoveResume()
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest3018:OnSubStart301801(arg1)
    print("OnSubStart301801")
    self:NpcCreateWithTriggerBlack(npcs.Npc1053Data.id, 301801, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4359Data.alias, 1, true)
end

function Quest3018:OnSubFinish301801(arg1)
    print("OnSubFinish301801")
end

function Quest3018:OnSubStart301802(arg1)
    print("OnSubStart301802")
    self:DailyNpcSafeHideSelf(npcs.Npc4359Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4358Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1053Data.alias, 3018)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 0, 0, 0, function(arg1)
        if arg1.BeFollowState == BeFollowState.SUCCESS then
            actorUtils.FinishQuestID(false, 301802)
        end
    end, nil, nil, nil, nil, nil, false)

    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest3018:OnSubFinish301802(arg1)
    print("OnSubFinish301802")
end

function Quest3018:OnSubStart301803(arg1)
    print("OnSubStart301803")
    self:NpcCreateWithTrigger(npcs.Npc1053Data.id, 301803, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4359Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4358Data.alias, 1, true)
end

function Quest3018:OnSubFinish301803(arg1)
    print("OnSubFinish301803")
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest3018:OnSubStart301804(arg1)
    print("OnSubStart301804")
    self:NpcCreateWithTriggerBlack(npcs.Npc1053Data.id, 301804, 1)
    self:LightNotifyTo(npcs.Npc4359Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4235Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4403Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4358Data.alias, 1, true)
end

function Quest3018:OnSubFinish301804(arg1)
    print("OnSubFinish301804")
    self:TransmitPlayerByQuestId(301804, 1)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:ShowBlackScreen(0, 5, 0, nil, nil, nil, "", false, true)
    end)
end

function Quest3018:OnSubStart301805(arg1)
    print("OnSubStart301805")
    actorMgr:CreateActorWithPos("Q3018Trigger1", "Actor/Gadget/Q3018Trigger1", 70900002, 1, sceneData:GetDummyPoint(1077, "Q301805_T301805_N1053").pos, sceneData:GetDummyPoint(1077, "Q301805_T301805_N1053").rot, true, false, 1077)
end

function Quest3018:OnSubFinish301805(arg1)
    print("OnSubFinish301805")
end

function Quest3018:OnSubStart301806(arg1)
    print("OnSubStart301806")
    self:CreateQuestNpc(arg1, npcs.Npc12750Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12751Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1059Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
    self:DailyNpcSafeHideSelf(npcs.Npc4317Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4403Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4319Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q3018Trigger", "Actor/Gadget/Q3018Trigger", 70900002, 1, sceneData:GetDummyPoint(3, "Q301804_T301804_N1005").pos, sceneData:GetDummyPoint(3, "Q301804_T301804_N1005").rot, true, false)
end

function Quest3018:OnSubFinish301806(arg1)
    print("OnSubFinish301806")
    self:SafeDestroyQuestNpc(npcs.Npc12750Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12751Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
end

function Quest3018:OnSubStart301807(arg1)
    print("OnSubStart301807")
    self:LightNotifyTo(npcs.Npc4317Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4403Data.alias, 1, true)
    self:LightNotifyTo(npcs.Npc4319Data.alias, 0, true)
end

function Quest3018:OnSubFinish301807(arg1)
    print("OnSubFinish301807")
    self:TransmitPlayerByQuestId(301807, 1)
end

function Quest3018:OnSubStart301808(arg1)
    print("OnSubStart301808")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1053Data.id, 1, npcs.Npc1053Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc4403Data.alias, 1, true)
end

function Quest3018:OnSubFinish301808(arg1)
    print("OnSubFinish301808")
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest3018:OnSubStart301809(arg1)
    print("OnSubStart301809")
    self:NpcCreateWithTriggerBlack(npcs.Npc1058Data.id, 301809, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
    self:LightNotifyTo(npcs.Npc4403Data.alias, 0, true)
end

function Quest3018:OnSubFinish301809(arg1)
    print("OnSubFinish301809")
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
end

function Quest3018:OnSubStart301810(arg1)
    print("OnSubStart301810")
    self:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1059Data.id, 301810, 0, 20, 1, false)
    self:DailyNpcSafeHideSelf(npcs.Npc4408Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4410Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4411Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4317Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4319Data.alias, 1, true)
end

function Quest3018:OnSubFinish301810(arg1)
    print("OnSubFinish301810")
    self:TransmitPlayerByQuestId(301810, 1)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:ShowBlackScreen(0, 5, 0, nil, nil, nil, "", false, true)
    end)
end

function Quest3018:OnSubStart301811(arg1)
    print("OnSubStart301811")
    actorMgr:CreateActorWithPos("Q3018Trigger2", "Actor/Gadget/Q3018Trigger2", 70900002, 1, sceneData:GetDummyPoint(3, "Q301811_N12701").pos, sceneData:GetDummyPoint(3, "Q301811_N12701").rot, true, false)
end

function Quest3018:OnSubFinish301811(arg1)
    print("OnSubFinish301811")
    self:SafeDestroyQuestNpc(npcs.Npc12701Data.alias, 3)
end

return Quest3018
