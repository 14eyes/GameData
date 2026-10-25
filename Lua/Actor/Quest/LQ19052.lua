require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19052 = class("Quest19052", QuestActorProxy)
Quest19052.defaultAlias = "Quest19052"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest19052:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest19052:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1905201"] = self.OnSubStart1905201,
        ["1905214"] = self.OnSubStart1905214,
        ["1905215"] = self.OnSubStart1905215,
        ["1905202"] = self.OnSubStart1905202,
        ["1905203"] = self.OnSubStart1905203,
        ["1905216"] = self.OnSubStart1905216,
        ["1905204"] = self.OnSubStart1905204,
        ["1905205"] = self.OnSubStart1905205,
        ["1905218"] = self.OnSubStart1905218,
        ["1905206"] = self.OnSubStart1905206,
        ["1905219"] = self.OnSubStart1905219,
        ["1905213"] = self.OnSubStart1905213,
        ["1905220"] = self.OnSubStart1905220,
        ["1905207"] = self.OnSubStart1905207,
        ["1905208"] = self.OnSubStart1905208,
        ["1905209"] = self.OnSubStart1905209,
        ["1905212"] = self.OnSubStart1905212,
        ["1905210"] = self.OnSubStart1905210,
        ["1905211"] = self.OnSubStart1905211,
        ["1905217"] = self.OnSubStart1905217
    }
end

function Quest19052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1905201"] = self.OnSubFinish1905201,
        ["1905214"] = self.OnSubFinish1905214,
        ["1905215"] = self.OnSubFinish1905215,
        ["1905202"] = self.OnSubFinish1905202,
        ["1905203"] = self.OnSubFinish1905203,
        ["1905216"] = self.OnSubFinish1905216,
        ["1905204"] = self.OnSubFinish1905204,
        ["1905205"] = self.OnSubFinish1905205,
        ["1905218"] = self.OnSubFinish1905218,
        ["1905206"] = self.OnSubFinish1905206,
        ["1905219"] = self.OnSubFinish1905219,
        ["1905213"] = self.OnSubFinish1905213,
        ["1905220"] = self.OnSubFinish1905220,
        ["1905207"] = self.OnSubFinish1905207,
        ["1905208"] = self.OnSubFinish1905208,
        ["1905209"] = self.OnSubFinish1905209,
        ["1905212"] = self.OnSubFinish1905212,
        ["1905210"] = self.OnSubFinish1905210,
        ["1905211"] = self.OnSubFinish1905211,
        ["1905217"] = self.OnSubFinish1905217
    }
end

function Quest19052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1905202"] = self.OnSubFailed1905202,
        ["1905216"] = self.OnSubFailed1905216,
        ["1905217"] = self.OnSubFailed1905217
    }
end

function Quest19052:Start()
    print("Start")
end

function Quest19052:OnDestroy()
    print("OnDestroy")
end

function Quest19052:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19052:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12215Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12216Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12217Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12218Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12227Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12228Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2436Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2433Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2032Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2433Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2032Data.alias, 0, true)
    actorMgr:GetActor("19052"):UnSpawn(gadgets.Gadget45001002Data.alias)
    actorMgr:DestroyEntityActor("Q1905201Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905202Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905209Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905210Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905215Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905217Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905218Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905219Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905220Trigger", 3, false)
end

function Quest19052:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19052:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19052:NormalCheck()
    print("NormalCheck")
    self:CheckDistance()
end

function Quest19052:CheckDistance()
    print("CheckDistance")
    if self:GetSubQuestState(1905216) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "COOP10240101Boat02").pos
        local dist = M.Dist(pos, avatarPos)
        print("StartCheck")
        if 300 < dist then
            actorUtils.FinishQuestID(true, 1905216)
        else
            self:CallDelay(1, self.NormalCheck)
        end
    end
end

function Quest19052:OnSubStart1905201(arg1)
    print("OnSubStart1905201")
    this:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1905201Trigger", "Actor/Gadget/Q1905201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou06").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou06").rot, true, false, 3)
end

function Quest19052:OnSubFinish1905201(arg1)
    print("OnSubFinish1905201")
end

function Quest19052:OnSubStart1905214(arg1)
    print("OnSubStart1905214")
    this:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
    this:UnSpawn(gadgets.Gadget45001002Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget45001002Data.id, 1, 0)
    this:RequestCoopInteractionFromSubStartPoint(102401, 1905201)
    this:RequestInteraction(npcs.Coop_BeidouData.alias)
end

function Quest19052:OnSubFinish1905214(arg1)
    print("OnSubFinish1905214")
    this:UnSpawn(gadgets.Gadget45001002Data.alias)
end

function Quest19052:OnSubStart1905215(arg1)
    print("OnSubStart1905215")
    this:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
    this:UnSpawn(gadgets.Gadget45001002Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget45001002Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q1905215Trigger", "Actor/Gadget/Q1905215Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Boat01").pos, sceneData:GetDummyPoint(3, "COOP10240101Boat01").rot, true, false, 3)
end

function Quest19052:OnSubFinish1905215(arg1)
    print("OnSubFinish1905215")
end

function Quest19052:OnSubStart1905202(arg1)
    print("OnSubStart1905202")
    this:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
end

function Quest19052:OnSubFinish1905202(arg1)
    print("OnSubFinish1905202")
end

function Quest19052:OnSubFailed1905202(arg1)
    print("OnSubFailed1905202")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1905202)
    end)
end

function Quest19052:OnSubStart1905203(arg1)
    print("OnSubStart1905203")
    this:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
end

function Quest19052:OnSubFinish1905203(arg1)
    print("OnSubFinish1905203")
end

function Quest19052:OnSubStart1905216(arg1)
    print("OnSubStart1905216")
    this:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1905202Trigger", "Actor/Gadget/Q1905202Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Boat02").pos, sceneData:GetDummyPoint(3, "COOP10240101Boat02").rot, true, false, 3)
    this:CheckDistance()
end

function Quest19052:OnSubFinish1905216(arg1)
    print("OnSubFinish1905216")
end

function Quest19052:OnSubFailed1905216(arg1)
    print("OnSubFailed1905216")
    this:UnSpawn(gadgets.Gadget45001002Data.alias)
    this:RemoveCoopInteractionData(102401)
end

function Quest19052:OnSubStart1905204(arg1)
    print("OnSubStart1905204")
    this:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(102401, 1905202)
end

function Quest19052:OnSubFinish1905204(arg1)
    print("OnSubFinish1905204")
    this:UnSpawn(gadgets.Gadget45001002Data.alias)
    this:ActorDestroy("Q1905202Trigger")
end

function Quest19052:OnSubStart1905205(arg1)
    print("OnSubStart1905205")
    this:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    this:LightNotifyTo(npcs.Npc2433Data.alias, 0, true)
    this:RequestCoopInteractionFromSubStartPoint(102401, 1905203)
end

function Quest19052:OnSubFinish1905205(arg1)
    print("OnSubFinish1905205")
    this:SafeDestroyQuestNpc(npcs.Npc2436Data.alias, 3)
end

function Quest19052:OnSubStart1905218(arg1)
    print("OnSubStart1905218")
    this:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12215Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc12227Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12228Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc2032Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_BeidouData.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_BeidouData.alias, 19052)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1905206, 6, 4, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP10240101Beidou08").rot))
        actorMgr:CreateActorWithPos("Q1905218Trigger", "Actor/Gadget/Q1905218Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou08").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou08").rot, true, false, 3)
    end, nil, nil, function(arg1)
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
    end, function(arg1)
        arg1:ClearSteerToAutonomyTask()
        arg1:TryResumeCurAutoNarrator()
        arg1:DisableInteeHeadCtrl(true)
        arg1:ResumeMove()
    end, nil, false)
end

function Quest19052:OnSubFinish1905218(arg1)
    print("OnSubFinish1905218")
end

function Quest19052:OnSubStart1905206(arg1)
    print("OnSubStart1905206")
    this:DailyNpcSafeHideSelf(npcs.Npc2032Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(102401, 1905204)
end

function Quest19052:OnSubFinish1905206(arg1)
    print("OnSubFinish1905206")
    this:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
end

function Quest19052:OnSubStart1905219(arg1)
    print("OnSubStart1905219")
    this:CreateQuestNpc(arg1, npcs.Npc12216Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc12227Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2032Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
        this:CallDelay(1, function(arg1)
            this:GetQuestNpcActor(npcs.Coop_BeidouData.alias):DisableInteeHeadCtrl(true)
            local questNpcActor = this:GetQuestNpcActor(npcs.Coop_BeidouData.alias, 19052)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1905213, 6, 4, -1, function(arg1)
                arg1:SyncPos(2)
                if arg1.BeFollowState == BeFollowState.FAILED then
                    return
                end

                arg1:ClearSteerToAutonomyTask()
                arg1:Standby()
                arg1:DisableInteeHeadCtrl(false)
                arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP10240101Beidou23").rot))
                actorMgr:CreateActorWithPos("Q1905219Trigger", "Actor/Gadget/Q1905219Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou23").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou23").rot, true, false, 3)
            end, nil, nil, function(arg1)
                arg1:Standby()
                arg1:DisableInteeHeadCtrl(false)
                local avatarPos = actorUtils.GetAvatarPos()
                local pos = arg1:GetPos()
                local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
                arg1:SteerToAutonomyTask(tbl, 1, true, true)
            end, function(arg1)
                arg1:ClearSteerToAutonomyTask()
                arg1:TryResumeCurAutoNarrator()
                arg1:DisableInteeHeadCtrl(true)
                arg1:ResumeMove()
            end, nil, false)

            this:NarratorOnlyTaskByData(datas.NarratorWithId1905219)
        end)
    end)
end

function Quest19052:OnSubFinish1905219(arg1)
    print("OnSubFinish1905219")
end

function Quest19052:OnSubStart1905213(arg1)
    print("OnSubStart1905213")
    this:DailyNpcSafeHideSelf(npcs.Npc2032Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(102401, 1905208)
end

function Quest19052:OnSubFinish1905213(arg1)
    print("OnSubFinish1905213")
end

function Quest19052:OnSubStart1905220(arg1)
    print("OnSubStart1905220")
    this:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12217Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc12227Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2032Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_BeidouData.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_BeidouData.alias, 19052)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1905207, 6, 4, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP10240101Beidou09").rot))
        actorMgr:CreateActorWithPos("Q1905220Trigger", "Actor/Gadget/Q1905220Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou09").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou09").rot, true, false, 3)
    end, nil, nil, function(arg1)
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
    end, function(arg1)
        arg1:ClearSteerToAutonomyTask()
        arg1:TryResumeCurAutoNarrator()
        arg1:DisableInteeHeadCtrl(true)
        arg1:ResumeMove()
    end, nil, false)
end

function Quest19052:OnSubFinish1905220(arg1)
    print("OnSubFinish1905220")
end

function Quest19052:OnSubStart1905207(arg1)
    print("OnSubStart1905207")
    this:DailyNpcSafeHideSelf(npcs.Npc2032Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(102401, 1905205)
end

function Quest19052:OnSubFinish1905207(arg1)
    print("OnSubFinish1905207")
    this:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12215Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12216Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12217Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12218Data.alias, 3)
end

function Quest19052:OnSubStart1905208(arg1)
    print("OnSubStart1905208")
    this:CreateQuestNpc(arg1, npcs.Npc12228Data.id, 1)
    this:LightNotifyTo(npcs.Npc2032Data.alias, 0, true)
    actorMgr:CreateActorWithPos("Q1905209Trigger", "Actor/Gadget/Q1905209Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Stander04").pos, sceneData:GetDummyPoint(3, "COOP10240101Stander04").rot, true, false, 3)
end

function Quest19052:OnSubFinish1905208(arg1)
    print("OnSubFinish1905208")
    this:SafeDestroyQuestNpc(npcs.Npc12227Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12228Data.alias, 3)
end

function Quest19052:OnSubStart1905209(arg1)
    print("OnSubStart1905209")
end

function Quest19052:OnSubFinish1905209(arg1)
    print("OnSubFinish1905209")
    this:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest19052:OnSubStart1905212(arg1)
    print("OnSubStart1905212")
    this:CreateQuestNpc(arg1, npcs.Npc12217Data.id, 2)
    this:RequestCoopInteractionFromSubStartPoint(102401, 1905206)
end

function Quest19052:OnSubFinish1905212(arg1)
    print("OnSubFinish1905212")
    this:SafeDestroyQuestNpc(npcs.Npc12217Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12218Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12227Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12228Data.alias, 3)
end

function Quest19052:OnSubStart1905210(arg1)
    print("OnSubStart1905210")
    this:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    this:CallDelay(2, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Coop_BeidouData.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:SetWalkSpeedRatio(0.9)
        local v = this:GetQuestNpcActor(npcs.Coop_BeidouData.alias, 19052)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData1905210, 6, 4, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:ClearSteerToAutonomyTask()
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP10240101Beidou11").rot))
            actorMgr:CreateActorWithPos("Q1905210Trigger", "Actor/Gadget/Q1905210Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou11").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou11").rot, true, false, 3)
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
            local avatarPos = actorUtils.GetAvatarPos()
            local pos = arg1:GetPos()
            local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
            arg1:SteerToAutonomyTask(tbl, 1, true, true)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:TryResumeCurAutoNarrator()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, true)

        this:NpcForceAvatarWalkByDist(v, 2, 3)
        this:NpcNarratorOnlyTaskByData(v, datas.NarratorWithId1905210)
    end)
end

function Quest19052:OnSubFinish1905210(arg1)
    print("OnSubFinish1905210")
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_BeidouData.alias)
    questNpcActor:ResetForceAvatarWalk()
    questNpcActor:DisableInteeHeadCtrl(false)
end

function Quest19052:OnSubStart1905211(arg1)
    print("OnSubStart1905211")
    this:RequestCoopInteractionFromSubStartPoint(102401, 1905207)
end

function Quest19052:OnSubFinish1905211(arg1)
    print("OnSubFinish1905211")
    this:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
end

function Quest19052:OnSubStart1905217(arg1)
    print("OnSubStart1905217")
    actorMgr:CreateActorWithPos("Q1905217Trigger", "Actor/Gadget/Q1905217Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou10").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou10").rot, true, false, 3)
end

function Quest19052:OnSubFinish1905217(arg1)
    print("OnSubFinish1905217")
    this:ActorDestroy("Q1905217Trigger")
end

function Quest19052:OnSubFailed1905217(arg1)
    print("OnSubFailed1905217")
    this:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12217Data.alias, 3)
    this:RemoveCoopInteractionData(102401)
end

return Quest19052
