require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3020 = class("Quest3020", QuestActorProxy)
Quest3020.defaultAlias = "Quest3020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["302018"] = self.OnSubStart302018,
        ["302001"] = self.OnSubStart302001,
        ["302002"] = self.OnSubStart302002,
        ["302003"] = self.OnSubStart302003,
        ["302004"] = self.OnSubStart302004,
        ["302005"] = self.OnSubStart302005,
        ["302020"] = self.OnSubStart302020,
        ["302023"] = self.OnSubStart302023,
        ["302006"] = self.OnSubStart302006,
        ["302007"] = self.OnSubStart302007,
        ["302016"] = self.OnSubStart302016,
        ["302015"] = self.OnSubStart302015,
        ["302008"] = self.OnSubStart302008,
        ["302009"] = self.OnSubStart302009,
        ["302010"] = self.OnSubStart302010,
        ["302011"] = self.OnSubStart302011,
        ["302017"] = self.OnSubStart302017,
        ["302013"] = self.OnSubStart302013,
        ["302012"] = self.OnSubStart302012,
        ["302021"] = self.OnSubStart302021,
        ["302022"] = self.OnSubStart302022,
        ["302019"] = self.OnSubStart302019,
        ["302014"] = self.OnSubStart302014
    }
end

function Quest3020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["302018"] = self.OnSubFinish302018,
        ["302001"] = self.OnSubFinish302001,
        ["302002"] = self.OnSubFinish302002,
        ["302003"] = self.OnSubFinish302003,
        ["302004"] = self.OnSubFinish302004,
        ["302005"] = self.OnSubFinish302005,
        ["302020"] = self.OnSubFinish302020,
        ["302023"] = self.OnSubFinish302023,
        ["302006"] = self.OnSubFinish302006,
        ["302007"] = self.OnSubFinish302007,
        ["302016"] = self.OnSubFinish302016,
        ["302015"] = self.OnSubFinish302015,
        ["302008"] = self.OnSubFinish302008,
        ["302009"] = self.OnSubFinish302009,
        ["302010"] = self.OnSubFinish302010,
        ["302011"] = self.OnSubFinish302011,
        ["302017"] = self.OnSubFinish302017,
        ["302013"] = self.OnSubFinish302013,
        ["302012"] = self.OnSubFinish302012,
        ["302021"] = self.OnSubFinish302021,
        ["302022"] = self.OnSubFinish302022,
        ["302019"] = self.OnSubFinish302019,
        ["302014"] = self.OnSubFinish302014
    }
end

function Quest3020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3020:Start()
    print("Start")
end

function Quest3020:OnDestroy()
    print("OnDestroy")
end

function Quest3020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3020:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest3020:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest3020:MovePause()
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest3020:MoveResume()
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest3020:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 302005 then
        actorUtils.FinishQuestID(false, 302005)
    elseif arg1 == 302020 then
        actorUtils.FinishQuestID(false, 302020)
    elseif arg1 == 302006 then
        actorUtils.FinishQuestID(false, 302006)
    elseif arg1 == 302022 then
        actorUtils.FinishQuestID(false, 302022)
    elseif arg1 == 302023 then
        actorUtils.FinishQuestID(false, 302023)
    elseif arg1 == 302021 then
        actorUtils.FinishQuestID(false, 302021)
    end
end

function Quest3020:OnSubStart302018(arg1)
    print("OnSubStart302018")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
        actorMgr:CreateActorWithPos("Q302018Talk", "Actor/Gadget/Q302018Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q302018_N1053_guide_Q302017_N1058").pos, sceneData:GetDummyPoint(3, "Q302018_N1053_guide_Q302017_N1058").rot, true, false, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4317Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12706Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12707Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12708Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12706Data.alias)
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
        local v = arg1_2:GetQuestNpcActor(npcs.Npc12707Data.alias)
        v:DoFreeStyle(4121, true, nil, true, true, false, false)
        local questNpcActor2 = arg1_2:GetQuestNpcActor(npcs.Npc12708Data.alias)
        questNpcActor2:DoFreeStyle(4121, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
        questNpcActor:DisableInteeHeadCtrl(true)
        v:DisableInteeHeadCtrl(true)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        questNpcActor2:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        arg1_2:NotifyTo(npcs.Npc4319Data.alias, 1, true)
    end)
end

function Quest3020:OnSubFinish302018(arg1)
    print("OnSubFinish302018")
    self:NpcDestroy(npcs.Npc1058Data.alias, 1077)
    self:DestroyQuestNpcActor(npcs.Npc1052Data.alias, 1077)
    self:DestroyQuestNpcActor(npcs.Npc1059Data.alias, 1077)
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4317Data.alias, 1077)
    self:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(false)
    self:DestroyQuestNpcActor(npcs.Npc12706Data.alias, 1077)
    self:DestroyQuestNpcActor(npcs.Npc12707Data.alias, 1077)
    self:DestroyQuestNpcActor(npcs.Npc12708Data.alias, 1077)
    self:LightNotifyTo(npcs.Npc4319Data.alias, 0, true)
end

function Quest3020:OnSubStart302001(arg1)
    print("OnSubStart302001")
    self:CreateQuestNpc(arg1, npcs.Npc12867Data.id, 0)
    self:NotifyTo(npcs.Npc4402Data.alias, 1, true)
end

function Quest3020:OnSubFinish302001(arg1)
    print("OnSubFinish302001")
    self:SafeDestroyQuestNpc(npcs.Npc12867Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc4402Data.alias, 0, true)
    end)
end

function Quest3020:OnSubStart302002(arg1)
    print("OnSubStart302002")
    actorMgr:CreateActorWithPos("Q3020Trigger", "Actor/Gadget/Q3020Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q302004_T302004_N1053").pos, sceneData:GetDummyPoint(3, "Q302004_T302004_N1053").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q302002Kaiche", "Actor/Gadget/Q302002Kaiche", 70900002, 0, sceneData:GetDummyPoint(3, "Q302004_T302004_N1053").pos, sceneData:GetDummyPoint(3, "Q302004_T302004_N1053").rot, true, false, 3)
end

function Quest3020:OnSubFinish302002(arg1)
    print("OnSubFinish302002")
end

function Quest3020:OnSubStart302003(arg1)
    print("OnSubStart302003")
    self:NarratorOnlyTaskByData(datas.Yiyuanzhandoukaiche)
end

function Quest3020:OnSubFinish302003(arg1)
    print("OnSubFinish302003")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1053Data.alias)
    end, nil, nil, "", false, true)
end

function Quest3020:OnSubStart302004(arg1)
    print("OnSubStart302004")
end

function Quest3020:OnSubFinish302004(arg1)
    print("OnSubFinish302004")
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    self:TransmitPlayerById(arg1, 1)
end

function Quest3020:OnSubStart302005(arg1)
    print("OnSubStart302005")
end

function Quest3020:OnSubFinish302005(arg1)
    print("OnSubFinish302005")
end

function Quest3020:OnSubStart302020(arg1)
    print("OnSubStart302020")
end

function Quest3020:OnSubFinish302020(arg1)
    print("OnSubFinish302020")
end

function Quest3020:OnSubStart302023(arg1)
    print("OnSubStart302023")
end

function Quest3020:OnSubFinish302023(arg1)
    print("OnSubFinish302023")
end

function Quest3020:OnSubStart302006(arg1)
    print("OnSubStart302006")
end

function Quest3020:OnSubFinish302006(arg1)
    print("OnSubFinish302006")
end

function Quest3020:OnSubStart302007(arg1)
    print("OnSubStart302007")
end

function Quest3020:OnSubFinish302007(arg1)
    print("OnSubFinish302007")
end

function Quest3020:OnSubStart302016(arg1)
    print("OnSubStart302016")
end

function Quest3020:OnSubFinish302016(arg1)
    print("OnSubFinish302016")
end

function Quest3020:OnSubStart302015(arg1)
    print("OnSubStart302015")
end

function Quest3020:OnSubFinish302015(arg1)
    print("OnSubFinish302015")
end

function Quest3020:OnSubStart302008(arg1)
    print("OnSubStart302008")
    actorMgr:CreateActorWithPos("Q3020Trigger1", "Actor/Gadget/Q3020Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q302009_T302009_N12704").pos, sceneData:GetDummyPoint(3, "Q302009_T302009_N12704").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12704Data.id, 0)
end

function Quest3020:OnSubFinish302008(arg1)
    print("OnSubFinish302008")
end

function Quest3020:OnSubStart302009(arg1)
    print("OnSubStart302009")
    self:RequestInteraction(npcs.Npc12704Data.alias)
end

function Quest3020:OnSubFinish302009(arg1)
    print("OnSubFinish302009")
    self:SafeDestroyQuestNpc(npcs.Npc12704Data.alias, 3)
end

function Quest3020:OnSubStart302010(arg1)
    print("OnSubStart302010")
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
    actorMgr:CreateActorWithPos("Q302010Talk", "Actor/Gadget/Q302010Talk", 70900002, 0, sceneData:GetDummyPoint(1077, "Q302010_T302110_N10000005").pos, sceneData:GetDummyPoint(1077, "Q302010_T302110_N10000005").rot, true, false, 1077)
end

function Quest3020:OnSubFinish302010(arg1)
    print("OnSubFinish302010")
end

function Quest3020:OnSubStart302011(arg1)
    print("OnSubStart302011")
    actorMgr:CreateActorWithPos("Q3020Trigger2", "Actor/Gadget/Q3020Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "T302011_N1053").pos, sceneData:GetDummyPoint(3, "T302011_N1053").rot, true, false, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4317Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc4319Data.alias, 1, true)
    end)
end

function Quest3020:OnSubFinish302011(arg1)
    print("OnSubFinish302011")
    self:DestroyQuestNpcActor(npcs.Npc1059Data.alias, 1077)
    self:DestroyQuestNpcActor(npcs.Npc4317Data.alias, 1077)
    self:LightNotifyTo(npcs.Npc4319Data.alias, 0, true)
end

function Quest3020:OnSubStart302017(arg1)
    print("OnSubStart302017")
    self:RequestInteraction(npcs.Npc1058Data.alias)
end

function Quest3020:OnSubFinish302017(arg1)
    print("OnSubFinish302017")
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(4, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.GensuiKaiche1)
        end)
    end)
end

function Quest3020:OnSubStart302013(arg1)
    print("OnSubStart302013")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1058Data.alias, 3020)
        arg1_2:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 6, 4, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            local actor = actorMgr:GetActor(clientData.ActorAlias)
            actor:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true)
            actor:CallDelay(2, function(arg1)
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                actor:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1280, true, nil, true, true)
                actor:CallDelay(2, function(arg1)
                    actorUtils.FinishQuestID(false, 302013)
                end)
            end)
        end, nil, nil, arg1_2.MovePause, arg1_2.MoveResume, nil, false)

        arg1_2:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q302013FollowFinish", "Actor/Gadget/Q302013FollowFinish", 70900002, 0, {x = -1937.213, y = 292.582, z = 4360.042}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest3020:OnSubFinish302013(arg1)
    print("OnSubFinish302013")
end

function Quest3020:OnSubStart302012(arg1)
    print("OnSubStart302012")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1053Data.id, 1, npcs.Npc1053Data.alias)
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    self:GetQuestNpcActor(npcs.Npc1058Data.alias, 3020):ClearFollowTask()
end

function Quest3020:OnSubFinish302012(arg1)
    print("OnSubFinish302012")
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(4, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.GensuiKaiche2)
        end)
    end)
end

function Quest3020:OnSubStart302021(arg1)
    print("OnSubStart302021")
end

function Quest3020:OnSubFinish302021(arg1)
    print("OnSubFinish302021")
end

function Quest3020:OnSubStart302022(arg1)
    print("OnSubStart302022")
end

function Quest3020:OnSubFinish302022(arg1)
    print("OnSubFinish302022")
end

function Quest3020:OnSubStart302019(arg1)
    print("OnSubStart302019")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1058Data.alias, 3020)
        arg1_2:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 6, 4, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:EnablePlayerInput(false)
            arg1:NarratorOnlyTaskByData(datas.GensuiKaiche3, function(arg1)
                arg1:EnablePlayerInput(true)
                actorUtils.FinishQuestID(false, 302019)
            end)
        end, nil, nil, arg1_2.MovePause, arg1_2.MoveResume, nil, false)

        arg1_2:EnablePlayerInput(true)
        actorMgr:CreateActorWithPos("Q302019FollowFinish", "Actor/Gadget/Q302019FollowFinish", 70900002, 0, {x = -1895.134, y = 285.222, z = 4480.896}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest3020:OnSubFinish302019(arg1)
    print("OnSubFinish302019")
end

function Quest3020:OnSubStart302014(arg1)
    print("OnSubStart302014")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1052Data.id, 0, npcs.Npc1052Data.alias)
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    self:GetQuestNpcActor(npcs.Npc1058Data.alias, 3020):ClearFollowTask()
    self:EnablePlayerInput(true)
end

function Quest3020:OnSubFinish302014(arg1)
    print("OnSubFinish302014")
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

return Quest3020
