require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8011 = class("Quest8011", QuestActorProxy)
Quest8011.defaultAlias = "Quest8011"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest8011:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest8011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["801115"] = self.OnSubStart801115,
        ["801113"] = self.OnSubStart801113,
        ["801101"] = self.OnSubStart801101,
        ["801102"] = self.OnSubStart801102,
        ["801114"] = self.OnSubStart801114,
        ["801103"] = self.OnSubStart801103,
        ["801104"] = self.OnSubStart801104,
        ["801105"] = self.OnSubStart801105,
        ["801116"] = self.OnSubStart801116,
        ["801117"] = self.OnSubStart801117,
        ["801120"] = self.OnSubStart801120,
        ["801122"] = self.OnSubStart801122,
        ["801121"] = self.OnSubStart801121,
        ["801106"] = self.OnSubStart801106,
        ["801118"] = self.OnSubStart801118,
        ["801119"] = self.OnSubStart801119,
        ["801107"] = self.OnSubStart801107,
        ["801108"] = self.OnSubStart801108,
        ["801109"] = self.OnSubStart801109,
        ["801110"] = self.OnSubStart801110,
        ["801112"] = self.OnSubStart801112,
        ["801111"] = self.OnSubStart801111
    }
end

function Quest8011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["801115"] = self.OnSubFinish801115,
        ["801113"] = self.OnSubFinish801113,
        ["801101"] = self.OnSubFinish801101,
        ["801102"] = self.OnSubFinish801102,
        ["801114"] = self.OnSubFinish801114,
        ["801103"] = self.OnSubFinish801103,
        ["801104"] = self.OnSubFinish801104,
        ["801105"] = self.OnSubFinish801105,
        ["801116"] = self.OnSubFinish801116,
        ["801117"] = self.OnSubFinish801117,
        ["801120"] = self.OnSubFinish801120,
        ["801122"] = self.OnSubFinish801122,
        ["801121"] = self.OnSubFinish801121,
        ["801106"] = self.OnSubFinish801106,
        ["801118"] = self.OnSubFinish801118,
        ["801119"] = self.OnSubFinish801119,
        ["801107"] = self.OnSubFinish801107,
        ["801108"] = self.OnSubFinish801108,
        ["801109"] = self.OnSubFinish801109,
        ["801110"] = self.OnSubFinish801110,
        ["801112"] = self.OnSubFinish801112,
        ["801111"] = self.OnSubFinish801111
    }
end

function Quest8011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["801101"] = self.OnSubFailed801101,
        ["801102"] = self.OnSubFailed801102,
        ["801103"] = self.OnSubFailed801103,
        ["801104"] = self.OnSubFailed801104,
        ["801105"] = self.OnSubFailed801105,
        ["801116"] = self.OnSubFailed801116,
        ["801120"] = self.OnSubFailed801120,
        ["801106"] = self.OnSubFailed801106,
        ["801107"] = self.OnSubFailed801107,
        ["801108"] = self.OnSubFailed801108,
        ["801109"] = self.OnSubFailed801109,
        ["801110"] = self.OnSubFailed801110
    }
end

function Quest8011:Start()
    print("Start")
end

function Quest8011:OnDestroy()
    print("OnDestroy")
end

function Quest8011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 801118)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 801119)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 801122)
    end
end

function Quest8011:CheckDistance()
    print("CheckDistance")
    if self:GetSubQuestState(801102) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = self:GetQuestNpcActor(npcs.Npc13129Data.alias):GetPos()
        local dist = M.Dist(pos, avatarPos)
        if 65 < dist then
            self:ShowTextMapWithParam("QUEST_Message_Q1905501")
        end

        if 75 < dist then
            self:FinishQuestID(true, 801102)
        else
            self:CallDelay(1, self.Normalcheck)
        end
    end
end

function Quest8011:Normalcheck()
    print("Normalcheck")
    this:CheckDistance()
end

function Quest8011:OnSubStart801115(arg1)
    print("OnSubStart801115")
    this:CreateQuestNpc(arg1, npcs.Npc13170Data.id, 0)
end

function Quest8011:OnSubFinish801115(arg1)
    print("OnSubFinish801115")
end

function Quest8011:OnSubStart801113(arg1)
    print("OnSubStart801113")
    actorMgr:CreateActorWithPos("Q8011Trigger1", "Actor/Gadget/Q8011Trigger1", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801003_N13072").pos, sceneData:GetDummyPoint(20180, "Q801003_N13072").rot, true, false, 20180)
end

function Quest8011:OnSubFinish801113(arg1)
    print("OnSubFinish801113")
end

function Quest8011:OnSubStart801101(arg1)
    print("OnSubStart801101")
    actorMgr:CreateActorWithPos("Q8011Trigger", "Actor/Gadget/Q8011Trigger", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801101_N13072").pos, sceneData:GetDummyPoint(20180, "Q801101_N13072").rot, true, false, 20180)
end

function Quest8011:OnSubFinish801101(arg1)
    print("OnSubFinish801101")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
    end)
end

function Quest8011:OnSubFailed801101(arg1)
    print("OnSubFailed801101")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
end

function Quest8011:OnSubStart801102(arg1)
    print("OnSubStart801102")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13129Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13129Data.alias):WalkToRouteTask(datas.RoutePointsData, function(arg1, arg2)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13129Data.alias)
            questNpcActor:Standby()
            questNpcActor:DestroyWithDither(false, 1)
            this:FinishQuestID(false, 801102)
            this:NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.Narrator_801101, nil, 8011, 0)
        end, function(arg1, arg2)
            this:GetQuestNpcActor(npcs.Npc13129Data.alias):Standby()
        end, function(arg1, arg2)
            this:GetQuestNpcActor(npcs.Npc13129Data.alias):ResumeMove()
        end, function(arg1, arg2)
            this:GetQuestNpcActor(npcs.Npc13129Data.alias):DestroyWithDither(false, 1)
        end)

        this:CheckDistance()
    end)
end

function Quest8011:OnSubFinish801102(arg1)
    print("OnSubFinish801102")
end

function Quest8011:OnSubFailed801102(arg1)
    print("OnSubFailed801102")
    this:DestroyQuestNpcActor(npcs.Npc13129Data.alias, 20180)
end

function Quest8011:OnSubStart801114(arg1)
    print("OnSubStart801114")
end

function Quest8011:OnSubFinish801114(arg1)
    print("OnSubFinish801114")
end

function Quest8011:OnSubStart801103(arg1)
    print("OnSubStart801103")
end

function Quest8011:OnSubFinish801103(arg1)
    print("OnSubFinish801103")
end

function Quest8011:OnSubFailed801103(arg1)
    print("OnSubFailed801103")
end

function Quest8011:OnSubStart801104(arg1)
    print("OnSubStart801104")
    actorMgr:CreateActorWithPos("Q8011Trigger2", "Actor/Gadget/Q8011Trigger2", 70900002, 0, sceneData:GetDummyPoint(20178, "Q801104_N13072").pos, sceneData:GetDummyPoint(20178, "Q801104_N13072").rot, true, false, 20178)
end

function Quest8011:OnSubFinish801104(arg1)
    print("OnSubFinish801104")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
end

function Quest8011:OnSubFailed801104(arg1)
    print("OnSubFailed801104")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
    actorMgr:DestroyEntityActor("Q8011Trigger2", 20178, false)
end

function Quest8011:OnSubStart801105(arg1)
    print("OnSubStart801105")
end

function Quest8011:OnSubFinish801105(arg1)
    print("OnSubFinish801105")
end

function Quest8011:OnSubFailed801105(arg1)
    print("OnSubFailed801105")
end

function Quest8011:OnSubStart801116(arg1)
    print("OnSubStart801116")
    actorMgr:CreateActorWithPos("Q8011Trigger7", "Actor/Gadget/Q8011Trigger7", 70900002, 0, sceneData:GetDummyPoint(20178, "Q801116_N13072").pos, sceneData:GetDummyPoint(20178, "Q801116_N13072").rot, true, false, 20178)
end

function Quest8011:OnSubFinish801116(arg1)
    print("OnSubFinish801116")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
end

function Quest8011:OnSubFailed801116(arg1)
    print("OnSubFailed801116")
    actorMgr:DestroyEntityActor("Q8011Trigger7", 20178, false)
end

function Quest8011:OnSubStart801117(arg1)
    print("OnSubStart801117")
end

function Quest8011:OnSubFinish801117(arg1)
    print("OnSubFinish801117")
end

function Quest8011:OnSubStart801120(arg1)
    print("OnSubStart801120")
    actorMgr:CreateActorWithPos("Q8011Trigger8", "Actor/Gadget/Q8011Trigger8", 70900002, 0, sceneData:GetDummyPoint(20178, "Q801120_N13072").pos, sceneData:GetDummyPoint(20178, "Q801120_N13072").rot, true, false, 20178)
end

function Quest8011:OnSubFinish801120(arg1)
    print("OnSubFinish801120")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
end

function Quest8011:OnSubFailed801120(arg1)
    print("OnSubFailed801120")
    actorMgr:DestroyEntityActor("Q8011Trigger8", 20178, false)
end

function Quest8011:OnSubStart801122(arg1)
    print("OnSubStart801122")
end

function Quest8011:OnSubFinish801122(arg1)
    print("OnSubFinish801122")
end

function Quest8011:OnSubStart801121(arg1)
    print("OnSubStart801121")
end

function Quest8011:OnSubFinish801121(arg1)
    print("OnSubFinish801121")
end

function Quest8011:OnSubStart801106(arg1)
    print("OnSubStart801106")
    actorMgr:CreateActorWithPos("Q8011Trigger3", "Actor/Gadget/Q8011Trigger3", 70900002, 0, {x = 322.867, y = 264.887, z = 347.344}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20178)
end

function Quest8011:OnSubFinish801106(arg1)
    print("OnSubFinish801106")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
end

function Quest8011:OnSubFailed801106(arg1)
    print("OnSubFailed801106")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
    actorMgr:DestroyEntityActor("Q8011Trigger3", 20178, false)
end

function Quest8011:OnSubStart801118(arg1)
    print("OnSubStart801118")
end

function Quest8011:OnSubFinish801118(arg1)
    print("OnSubFinish801118")
end

function Quest8011:OnSubStart801119(arg1)
    print("OnSubStart801119")
end

function Quest8011:OnSubFinish801119(arg1)
    print("OnSubFinish801119")
end

function Quest8011:OnSubStart801107(arg1)
    print("OnSubStart801107")
end

function Quest8011:OnSubFinish801107(arg1)
    print("OnSubFinish801107")
end

function Quest8011:OnSubFailed801107(arg1)
    print("OnSubFailed801107")
end

function Quest8011:OnSubStart801108(arg1)
    print("OnSubStart801108")
    actorMgr:CreateActorWithPos("Q8011Trigger4", "Actor/Gadget/Q8011Trigger4", 70900002, 0, sceneData:GetDummyPoint(20178, "Q801106_N13072").pos, sceneData:GetDummyPoint(20178, "Q801106_N13072").rot, true, false, 20178)
end

function Quest8011:OnSubFinish801108(arg1)
    print("OnSubFinish801108")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
end

function Quest8011:OnSubFailed801108(arg1)
    print("OnSubFailed801108")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
    actorMgr:DestroyEntityActor("Q8011Trigger4", 20178, false)
end

function Quest8011:OnSubStart801109(arg1)
    print("OnSubStart801109")
end

function Quest8011:OnSubFinish801109(arg1)
    print("OnSubFinish801109")
end

function Quest8011:OnSubFailed801109(arg1)
    print("OnSubFailed801109")
end

function Quest8011:OnSubStart801110(arg1)
    print("OnSubStart801110")
    actorMgr:CreateActorWithPos("Q8011Trigger5", "Actor/Gadget/Q8011Trigger5", 70900002, 0, {x = 267.69, y = 276.266, z = 474.122}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20178)
end

function Quest8011:OnSubFinish801110(arg1)
    print("OnSubFinish801110")
    this:PlayerEnterDungeonPointWithDialogs(11, 1177, 801110, 1, datas.DialogsId, 10, nil, nil)
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
end

function Quest8011:OnSubFailed801110(arg1)
    print("OnSubFailed801110")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20178)
    actorMgr:DestroyEntityActor("Q8011Trigger5", 20178, false)
end

function Quest8011:OnSubStart801112(arg1)
    print("OnSubStart801112")
end

function Quest8011:OnSubFinish801112(arg1)
    print("OnSubFinish801112")
end

function Quest8011:OnSubStart801111(arg1)
    print("OnSubStart801111")
    actorMgr:CreateActorWithPos("Q8011Trigger6", "Actor/Gadget/Q8011Trigger6", 70900002, 0, {x = -696.738, y = 232.0, z = 2231.478}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20180)
end

function Quest8011:OnSubFinish801111(arg1)
    print("OnSubFinish801111")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
    this:DestroyQuestNpcActor(npcs.Npc13170Data.alias, 20180)
end

return Quest8011
