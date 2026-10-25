require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19137 = class("Quest19137", QuestActorProxy)
Quest19137.defaultAlias = "Quest19137"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19137:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19137:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1913701"] = self.OnSubStart1913701,
        ["1913702"] = self.OnSubStart1913702,
        ["1913703"] = self.OnSubStart1913703,
        ["1913704"] = self.OnSubStart1913704,
        ["1913705"] = self.OnSubStart1913705,
        ["1913706"] = self.OnSubStart1913706,
        ["1913707"] = self.OnSubStart1913707,
        ["1913708"] = self.OnSubStart1913708,
        ["1913709"] = self.OnSubStart1913709,
        ["1913710"] = self.OnSubStart1913710
    }
end

function Quest19137:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1913701"] = self.OnSubFinish1913701,
        ["1913702"] = self.OnSubFinish1913702,
        ["1913703"] = self.OnSubFinish1913703,
        ["1913704"] = self.OnSubFinish1913704,
        ["1913705"] = self.OnSubFinish1913705,
        ["1913706"] = self.OnSubFinish1913706,
        ["1913707"] = self.OnSubFinish1913707,
        ["1913708"] = self.OnSubFinish1913708,
        ["1913709"] = self.OnSubFinish1913709,
        ["1913710"] = self.OnSubFinish1913710
    }
end

function Quest19137:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19137:Start()
    print("Start")
end

function Quest19137:OnDestroy()
    print("OnDestroy")
end

function Quest19137:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19137:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19137:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2145Data.alias, 1033)
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 1033)
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12306Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12306Data.alias, 1033)
    self:SafeDestroyQuestNpc(npcs.Npc12307Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12308Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12309Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2020Data.alias, 3)
    self:ActorDestroy("Q19137Trigger")
    self:ActorDestroy("Q1913702Trigger")
    self:LightNotifyTo(npcs.Npc2067Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2144Data.alias, 0, true)
end

function Quest19137:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19137:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19137:OnSubStart1913701(arg1)
    print("OnSubStart1913701")
    self:CreateQuestNpc(arg1, npcs.Npc2145Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913701)
end

function Quest19137:OnSubFinish1913701(arg1)
    print("OnSubFinish1913701")
end

function Quest19137:OnSubStart1913702(arg1)
    print("OnSubStart1913702")
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913702)
    actorMgr:CreateActorWithPos("Q1913702Trigger", "Actor/Gadget/Q1913702Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913702_C1913702Ningguang").pos, sceneData:GetDummyPoint(3, "Q1913702_C1913702Ningguang").rot, true, false, 3)
end

function Quest19137:OnSubFinish1913702(arg1)
    print("OnSubFinish1913702")
    self:SafeDestroyQuestNpc(npcs.Npc2145Data.alias, 1033)
end

function Quest19137:OnSubStart1913703(arg1)
    print("OnSubStart1913703")
    self:CreateQuestNpc(arg1, npcs.Coop_NingguangData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12306Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12307Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12308Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12307Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12306Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12308Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913704)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913705)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913706)
    local v = self:GetQuestNpcActor(npcs.Coop_NingguangData.alias, 19137)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData03, 7, 3, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        actorMgr:GetActor(npcs.Coop_NingguangData.alias):FinishQuestID(false, 1913703)
    end, nil, nil, nil, nil, nil, true)

    local questNpcActor2 = self:GetQuestNpcActor(npcs.Coop_NingguangData.alias)
    questNpcActor2:ForceAvatarWalkByDist(3, 6)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:SetWalkSpeedRatio(0.9)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest19137:OnSubFinish1913703(arg1)
    print("OnSubFinish1913703")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_NingguangData.alias)
    questNpcActor:ResetWalkSpeedRatio()
    questNpcActor:EnableHeadCtrl(false)
    self:CallDelay(2, function(arg1)
        arg1:GetQuestNpcActor(npcs.Coop_NingguangData.alias):ResetForceAvatarWalk()
    end)

    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913704)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913705)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913706)
end

function Quest19137:OnSubStart1913704(arg1)
    print("OnSubStart1913704")
    self:GetQuestNpcActor(npcs.Npc12306Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12307Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12308Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913703)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913716)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913717)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913718)
end

function Quest19137:OnSubFinish1913704(arg1)
    print("OnSubFinish1913704")
    self:SafeDestroyQuestNpc(npcs.Npc12307Data.alias, 3)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913716)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913717)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913718)
end

function Quest19137:OnSubStart1913705(arg1)
    print("OnSubStart1913705")
    self:CreateQuestNpc(arg1, npcs.Coop_NingguangData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12306Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12308Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12309Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12306Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12308Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12309Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913719)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913709)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913720)
    local v = self:GetQuestNpcActor(npcs.Coop_NingguangData.alias, 19137)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData05, 7, 3, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        actorMgr:GetActor(npcs.Coop_NingguangData.alias):FinishQuestID(false, 1913705)
    end, nil, nil, nil, nil, nil, true)

    local questNpcActor2 = self:GetQuestNpcActor(npcs.Coop_NingguangData.alias)
    questNpcActor2:ForceAvatarWalkByDist(3, 6)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:SetWalkSpeedRatio(0.9)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest19137:OnSubFinish1913705(arg1)
    print("OnSubFinish1913705")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_NingguangData.alias)
    questNpcActor:ResetWalkSpeedRatio()
    questNpcActor:EnableHeadCtrl(false)
    self:CallDelay(2, function(arg1)
        arg1:GetQuestNpcActor(npcs.Coop_NingguangData.alias):ResetForceAvatarWalk()
    end)

    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913719)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913709)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913720)
end

function Quest19137:OnSubStart1913706(arg1)
    print("OnSubStart1913706")
    self:GetQuestNpcActor(npcs.Npc12306Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12308Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12309Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913721)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913722)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913723)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913707)
end

function Quest19137:OnSubFinish1913706(arg1)
    print("OnSubFinish1913706")
    self:SafeDestroyQuestNpc(npcs.Npc12308Data.alias, 3)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913721)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913722)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913723)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913707)
end

function Quest19137:OnSubStart1913707(arg1)
    print("OnSubStart1913707")
    self:CreateQuestNpc(arg1, npcs.Coop_NingguangData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12306Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12307Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12309Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12307Data.alias):DoFreeStyle(1050, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12309Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913708)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913724)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913710)
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_NingguangData.alias, 19137)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData07, 7, 3, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        actorMgr:GetActor(npcs.Coop_NingguangData.alias):FinishQuestID(false, 1913707)
    end, nil, nil, nil, nil, nil, true)

    local v = self:GetQuestNpcActor(npcs.Coop_NingguangData.alias)
    v:ForceAvatarWalkByDist(3, 6)
    v:DisableInteeHeadCtrl(true)
    v:SetWalkSpeedRatio(0.9)
end

function Quest19137:OnSubFinish1913707(arg1)
    print("OnSubFinish1913707")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_NingguangData.alias)
    questNpcActor:TurnTo(M.Euler2DirXZ({x = 0, y = 316, z = 0}))
    questNpcActor:ResetWalkSpeedRatio()
    questNpcActor:EnableHeadCtrl(false)
    self:CallDelay(2, function(arg1)
        arg1:GetQuestNpcActor(npcs.Coop_NingguangData.alias):ResetForceAvatarWalk()
    end)

    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913708)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913724)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913710)
end

function Quest19137:OnSubStart1913708(arg1)
    print("OnSubStart1913708")
    self:GetQuestNpcActor(npcs.Npc12307Data.alias):DoFreeStyle(1050, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12309Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913711)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913725)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913726)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913727)
end

function Quest19137:OnSubFinish1913708(arg1)
    print("OnSubFinish1913708")
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913725)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913726)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913727)
end

function Quest19137:OnSubStart1913709(arg1)
    print("OnSubStart1913709")
    self:CreateQuestNpc(arg1, npcs.Npc12306Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12307Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12309Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12306Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12307Data.alias):DoFreeStyle(1050, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913712)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913713)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913714)
end

function Quest19137:OnSubFinish1913709(arg1)
    print("OnSubFinish1913709")
    self:SafeDestroyQuestNpc(npcs.Npc12307Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12309Data.alias, 3)
end

function Quest19137:OnSubStart1913710(arg1)
    print("OnSubStart1913710")
    self:CreateQuestNpc(arg1, npcs.Npc2145Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12306Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2059Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc2086Data.id, 5)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913715)
    actorMgr:CreateActorWithPos("Q19137Trigger", "Actor/Gadget/Q19137Trigger", 70900002, 0, sceneData:GetDummyPoint(1033, "Q1913711_C1913715_yeka").pos, sceneData:GetDummyPoint(1033, "Q1913711_C1913715_yeka").rot, true, false, 1033)
    self:DailyNpcSafeHideSelf(npcs.Npc2067Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2144Data.alias, 1, true)
end

function Quest19137:OnSubFinish1913710(arg1)
    print("OnSubFinish1913710")
    self:SafeDestroyQuestNpc(npcs.Npc2145Data.alias, 1033)
    self:SafeDestroyQuestNpc(npcs.Npc12306Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2059Data.alias, 1033)
    self:SafeDestroyQuestNpc(npcs.Npc2086Data.alias, 1033)
    self:LightNotifyTo(npcs.Npc2067Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2144Data.alias, 0, true)
end

return Quest19137
