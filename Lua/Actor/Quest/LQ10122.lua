require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10122 = class("Quest10122", QuestActorProxy)
Quest10122.defaultAlias = "Quest10122"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest10122:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest10122:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1012201"] = self.OnSubStart1012201,
        ["1012204"] = self.OnSubStart1012204,
        ["1012205"] = self.OnSubStart1012205,
        ["1012206"] = self.OnSubStart1012206,
        ["1012207"] = self.OnSubStart1012207,
        ["1012208"] = self.OnSubStart1012208,
        ["1012209"] = self.OnSubStart1012209,
        ["1012218"] = self.OnSubStart1012218,
        ["1012210"] = self.OnSubStart1012210,
        ["1012217"] = self.OnSubStart1012217,
        ["1012211"] = self.OnSubStart1012211,
        ["1012212"] = self.OnSubStart1012212,
        ["1012216"] = self.OnSubStart1012216,
        ["1012215"] = self.OnSubStart1012215,
        ["1012213"] = self.OnSubStart1012213,
        ["1012203"] = self.OnSubStart1012203,
        ["1012202"] = self.OnSubStart1012202,
        ["1012214"] = self.OnSubStart1012214
    }
end

function Quest10122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1012201"] = self.OnSubFinish1012201,
        ["1012204"] = self.OnSubFinish1012204,
        ["1012205"] = self.OnSubFinish1012205,
        ["1012206"] = self.OnSubFinish1012206,
        ["1012207"] = self.OnSubFinish1012207,
        ["1012208"] = self.OnSubFinish1012208,
        ["1012209"] = self.OnSubFinish1012209,
        ["1012218"] = self.OnSubFinish1012218,
        ["1012210"] = self.OnSubFinish1012210,
        ["1012217"] = self.OnSubFinish1012217,
        ["1012211"] = self.OnSubFinish1012211,
        ["1012212"] = self.OnSubFinish1012212,
        ["1012216"] = self.OnSubFinish1012216,
        ["1012215"] = self.OnSubFinish1012215,
        ["1012213"] = self.OnSubFinish1012213,
        ["1012203"] = self.OnSubFinish1012203,
        ["1012202"] = self.OnSubFinish1012202,
        ["1012214"] = self.OnSubFinish1012214
    }
end

function Quest10122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1012201"] = self.OnSubFailed1012201,
        ["1012204"] = self.OnSubFailed1012204,
        ["1012205"] = self.OnSubFailed1012205,
        ["1012206"] = self.OnSubFailed1012206,
        ["1012207"] = self.OnSubFailed1012207,
        ["1012208"] = self.OnSubFailed1012208,
        ["1012209"] = self.OnSubFailed1012209,
        ["1012218"] = self.OnSubFailed1012218,
        ["1012210"] = self.OnSubFailed1012210,
        ["1012217"] = self.OnSubFailed1012217,
        ["1012211"] = self.OnSubFailed1012211,
        ["1012212"] = self.OnSubFailed1012212,
        ["1012216"] = self.OnSubFailed1012216,
        ["1012215"] = self.OnSubFailed1012215,
        ["1012213"] = self.OnSubFailed1012213,
        ["1012203"] = self.OnSubFailed1012203,
        ["1012202"] = self.OnSubFailed1012202,
        ["1012214"] = self.OnSubFailed1012214
    }
end

function Quest10122:Start()
    print("Start")
end

function Quest10122:OnDestroy()
    print("OnDestroy")
end

function Quest10122:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10122:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10122:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10122:EliminatePaimon()
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest10122:MovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest10122:MoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest10122:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1012218 then
        actor:FinishQuestID(false, 1012218)
    end
end

function Quest10122:OnSubStart1012201(arg1)
    print("OnSubStart1012201")
    self:CreateQuestNpc(arg1, npcs.Npc10386Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10386Data.alias):SitOnChair(8040)
end

function Quest10122:OnSubFinish1012201(arg1)
    print("OnSubFinish1012201")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 3)
        arg1:NarratorOnlyTaskByData(datas.Kaiche1, nil, 10122)
        arg1:EliminatePaimon()
    end)
end

function Quest10122:OnSubFailed1012201(arg1)
    print("OnSubFailed1012201")
end

function Quest10122:OnSubStart1012202(arg1)
    print("OnSubStart1012202")
end

function Quest10122:OnSubFinish1012202(arg1)
    print("OnSubFinish1012202")
end

function Quest10122:OnSubFailed1012202(arg1)
    print("OnSubFailed1012202")
end

function Quest10122:OnSubStart1012203(arg1)
    print("OnSubStart1012203")
end

function Quest10122:OnSubFinish1012203(arg1)
    print("OnSubFinish1012203")
    self:CallDelay(0.5, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(20037, "End").pos, 0, 3, false, false)
        arg1:NarratorOnlyTaskByData(datas.DungeonTalk6, nil, 10122)
    end)
end

function Quest10122:OnSubFailed1012203(arg1)
    print("OnSubFailed1012203")
end

function Quest10122:OnSubStart1012204(arg1)
    print("OnSubStart1012204")
    self:CreateQuestNpc(arg1, npcs.Npc10407Data.id, 1)
    globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
end

function Quest10122:OnSubFinish1012204(arg1)
    print("OnSubFinish1012204")
    self:SafeDestroyQuestNpc(npcs.Npc10407Data.alias, 3)
end

function Quest10122:OnSubFailed1012204(arg1)
    print("OnSubFailed1012204")
end

function Quest10122:OnSubStart1012205(arg1)
    print("OnSubStart1012205")
    self:CreateQuestNpc(arg1, npcs.Npc10386Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10390Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10391Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10392Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10393Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc10400Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc10400Data.alias):DoFreeStyle(1280, true, nil, true, true)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    self:GetQuestNpcActor(npcs.Npc10393Data.alias):SitOnChair(8040)
    self:GetQuestNpcActor(npcs.Npc10390Data.alias):DoFreeStyle(1120, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10392Data.alias):DoFreeStyle(1190, true, nil, true, true)
    self:RequestInteraction(npcs.Npc10386Data.alias)
end

function Quest10122:OnSubFinish1012205(arg1)
    print("OnSubFinish1012205")
    self:ActionSafeCall(function(arg1)
        arg1:EliminatePaimon()
    end)
end

function Quest10122:OnSubFailed1012205(arg1)
    print("OnSubFailed1012205")
    self:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10390Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10391Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10392Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10393Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10400Data.alias, 3)
end

function Quest10122:OnSubStart1012206(arg1)
    print("OnSubStart1012206")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc10386Data.alias, 10122)
        arg1:NpcForceAvatarWalkByDist(questNpcActor, 3.5, 6)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Walk10, 4, 2, -1, function(arg1)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            actor:NpcBeFollowTaskByRoutePointsWithDiffLen(arg1, datas.Walk12, 4, 2, -1, function(arg1)
                arg1:SyncPos(2)
                if arg1.BeFollowState == BeFollowState.FAILED then
                    return
                end

                actorUtils.FinishQuestID(false, 1012206)
            end, nil, nil, actor.MovePause, actor.MoveResume, nil, true)

            actor:NarratorOnlyTaskByData(datas.DungeonTalk2, nil, 10122)
        end, nil, nil, arg1.MovePause, arg1.MoveResume, nil, true)

        arg1:CallDelay(3, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.DungeonTalk1, nil, 10122)
        end)

        local v = arg1:GetQuestNpcActor(npcs.Npc10386Data.alias)
        v:SetWalkSpeedRatio(0.9)
        v:DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc10390Data.alias):DoFreeStyle(1120, true, nil, true, true)
        arg1:GetQuestNpcActor(npcs.Npc10392Data.alias):DoFreeStyle(1190, true, nil, true, true)
        arg1:GetQuestNpcActor(npcs.Npc10393Data.alias):SitOnChair(8040)
        arg1:GetQuestNpcActor(npcs.Npc10400Data.alias):DoFreeStyle(1280, true, nil, true, true)
    end)
end

function Quest10122:OnSubFinish1012206(arg1)
    print("OnSubFinish1012206")
end

function Quest10122:OnSubFailed1012206(arg1)
    print("OnSubFailed1012206")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10390Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10391Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10392Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10393Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10400Data.alias, 3)
end

function Quest10122:OnSubStart1012207(arg1)
    print("OnSubStart1012207")
    self:GetQuestNpcActor(npcs.Npc10400Data.alias):DoFreeStyle(1280, true, nil, true, true)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    self:GetQuestNpcActor(npcs.Npc10393Data.alias):SitOnChair(8040)
    self:RequestInteraction(npcs.Npc10386Data.alias)
    self:GetQuestNpcActor(npcs.Npc10390Data.alias):DoFreeStyle(1120, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10392Data.alias):DoFreeStyle(1190, true, nil, true, true)
end

function Quest10122:OnSubFinish1012207(arg1)
    print("OnSubFinish1012207")
end

function Quest10122:OnSubFailed1012207(arg1)
    print("OnSubFailed1012207")
    self:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10390Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10391Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10392Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10393Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10400Data.alias, 3)
end

function Quest10122:OnSubStart1012208(arg1)
    print("OnSubStart1012208")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc10386Data.alias, 10122)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Walk2, 4, 2, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            actorUtils.FinishQuestID(false, 1012208)
        end, nil, nil, arg1.MovePause, arg1.MoveResume, nil, true)

        arg1:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.DungeonTalk3, nil, 10122)
        end)
    end)

    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10386Data.alias, 10122)
    self:NpcForceAvatarWalkByDist(questNpcActor, 3.5, 6)
    self:EliminatePaimon()
    local v = self:GetQuestNpcActor(npcs.Npc10386Data.alias)
    v:SetWalkSpeedRatio(0.9)
    v:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc10393Data.alias):SitOnChair(8040)
    self:GetQuestNpcActor(npcs.Npc10390Data.alias):DoFreeStyle(1120, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10392Data.alias):DoFreeStyle(1190, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10400Data.alias):DoFreeStyle(1280, true, nil, true, true)
end

function Quest10122:OnSubFinish1012208(arg1)
    print("OnSubFinish1012208")
end

function Quest10122:OnSubFailed1012208(arg1)
    print("OnSubFailed1012208")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10390Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10391Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10392Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10393Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10400Data.alias, 3)
end

function Quest10122:OnSubStart1012209(arg1)
    print("OnSubStart1012209")
    self:GetQuestNpcActor(npcs.Npc10400Data.alias):DoFreeStyle(1280, true, nil, true, true)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    self:GetQuestNpcActor(npcs.Npc10390Data.alias):DoFreeStyle(1120, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10392Data.alias):DoFreeStyle(1190, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10393Data.alias):SitOnChair(8040)
end

function Quest10122:OnSubFinish1012209(arg1)
    print("OnSubFinish1012209")
    self:SafeDestroyQuestNpc(npcs.Npc10390Data.alias, 20037)
    self:SafeDestroyQuestNpc(npcs.Npc10391Data.alias, 20037)
    self:SafeDestroyQuestNpc(npcs.Npc10392Data.alias, 20037)
    self:SafeDestroyQuestNpc(npcs.Npc10393Data.alias, 20037)
    self:SafeDestroyQuestNpc(npcs.Npc10400Data.alias, 20037)
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 20037)
        arg1:NarratorOnlyTaskByData(datas.DungeonTalk4, nil, 10122)
        globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
        arg1:EliminatePaimon()
    end)
end

function Quest10122:OnSubFailed1012209(arg1)
    print("OnSubFailed1012209")
end

function Quest10122:OnSubStart1012210(arg1)
    print("OnSubStart1012210")
end

function Quest10122:OnSubFinish1012210(arg1)
    print("OnSubFinish1012210")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(20037, "LOOK1").pos, 0, 1.5, false, false)
end

function Quest10122:OnSubFailed1012210(arg1)
    print("OnSubFailed1012210")
end

function Quest10122:OnSubStart1012211(arg1)
    print("OnSubStart1012211")
    self:CreateQuestNpc(arg1, npcs.Npc10386Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Soldier1Data.id, 3)
    self:GetQuestNpcActor(npcs.Soldier1Data.alias):DoFreeStyle(1020, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Soldier2Data.id, 4)
    self:GetQuestNpcActor(npcs.Soldier2Data.alias):DoFreeStyle(1020, true, nil, true, true)
    self:NarratorOnlyTaskByData(datas.DungeonTalk5, nil, 10122)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10386Data.alias)
    questNpcActor:ResetForceAvatarWalk()
    questNpcActor:DoFreeStyle(1060, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1120, true, nil, true, true)
end

function Quest10122:OnSubFinish1012211(arg1)
    print("OnSubFinish1012211")
    self:NarratorOnlyTaskByData(datas.PaimonKaiche2, nil, 10122)
end

function Quest10122:OnSubFailed1012211(arg1)
    print("OnSubFailed1012211")
    self:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Soldier1Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Soldier2Data.alias, 3)
end

function Quest10122:OnSubStart1012212(arg1)
    print("OnSubStart1012212")
    self:GetQuestNpcActor(npcs.Soldier1Data.alias):DoFreeStyle(1020, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Soldier2Data.alias):DoFreeStyle(1020, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10386Data.alias):DoFreeStyle(1060, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1120, true, nil, true, true)
end

function Quest10122:OnSubFinish1012212(arg1)
    print("OnSubFinish1012212")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 20037)
        arg1:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 20037)
        arg1:DestroyQuestNpcActor(npcs.Soldier1Data.alias, 20037)
        arg1:DestroyQuestNpcActor(npcs.Soldier2Data.alias, 20037)
        arg1:EliminatePaimon()
    end)
end

function Quest10122:OnSubFailed1012212(arg1)
    print("OnSubFailed1012212")
    self:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Soldier1Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Soldier2Data.alias, 3)
end

function Quest10122:OnSubStart1012213(arg1)
    print("OnSubStart1012213")
end

function Quest10122:OnSubFinish1012213(arg1)
    print("OnSubFinish1012213")
    self:NarratorOnlyTaskByData(datas.DungeonTalk7, nil, 10122)
end

function Quest10122:OnSubFailed1012213(arg1)
    print("OnSubFailed1012213")
end

function Quest10122:OnSubStart1012214(arg1)
    print("OnSubStart1012214")
    self:CallDelay(2, function(arg1_2)
        local questNpcCreateTask = arg1_2:CreateQuestNpcCreateTask({npcs.Npc1029Data.alias})
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1029Data.id)
            arg1_2:RequestInteraction(npcs.Npc1029Data.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest10122:OnSubFinish1012214(arg1)
    print("OnSubFinish1012214")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 20037)
        arg1:EliminatePaimon()
    end)
end

function Quest10122:OnSubFailed1012214(arg1)
    print("OnSubFailed1012214")
    self:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
end

function Quest10122:OnSubStart1012215(arg1)
    print("OnSubStart1012215")
end

function Quest10122:OnSubFinish1012215(arg1)
    print("OnSubFinish1012215")
end

function Quest10122:OnSubFailed1012215(arg1)
    print("OnSubFailed1012215")
end

function Quest10122:OnSubStart1012216(arg1)
    print("OnSubStart1012216")
end

function Quest10122:OnSubFinish1012216(arg1)
    print("OnSubFinish1012216")
end

function Quest10122:OnSubFailed1012216(arg1)
    print("OnSubFailed1012216")
end

function Quest10122:OnSubStart1012217(arg1)
    print("OnSubStart1012217")
end

function Quest10122:OnSubFinish1012217(arg1)
    print("OnSubFinish1012217")
end

function Quest10122:OnSubFailed1012217(arg1)
    print("OnSubFailed1012217")
end

function Quest10122:OnSubStart1012218(arg1)
    print("OnSubStart1012218")
end

function Quest10122:OnSubFinish1012218(arg1)
    print("OnSubFinish1012218")
    globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
end

function Quest10122:OnSubFailed1012218(arg1)
    print("OnSubFailed1012218")
end

return Quest10122
