require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3029 = class("Quest3029", QuestActorProxy)
Quest3029.defaultAlias = "Quest3029"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3029:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["302921"] = self.OnSubStart302921,
        ["302901"] = self.OnSubStart302901,
        ["302902"] = self.OnSubStart302902,
        ["302903"] = self.OnSubStart302903,
        ["302904"] = self.OnSubStart302904,
        ["302905"] = self.OnSubStart302905,
        ["302906"] = self.OnSubStart302906,
        ["302917"] = self.OnSubStart302917,
        ["302907"] = self.OnSubStart302907,
        ["302915"] = self.OnSubStart302915,
        ["302923"] = self.OnSubStart302923,
        ["302908"] = self.OnSubStart302908,
        ["302924"] = self.OnSubStart302924,
        ["302913"] = self.OnSubStart302913,
        ["302925"] = self.OnSubStart302925,
        ["302926"] = self.OnSubStart302926,
        ["302914"] = self.OnSubStart302914,
        ["302916"] = self.OnSubStart302916,
        ["302909"] = self.OnSubStart302909,
        ["302920"] = self.OnSubStart302920,
        ["302910"] = self.OnSubStart302910,
        ["302919"] = self.OnSubStart302919,
        ["302911"] = self.OnSubStart302911,
        ["302912"] = self.OnSubStart302912,
        ["302918"] = self.OnSubStart302918,
        ["302922"] = self.OnSubStart302922
    }
end

function Quest3029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["302921"] = self.OnSubFinish302921,
        ["302901"] = self.OnSubFinish302901,
        ["302902"] = self.OnSubFinish302902,
        ["302903"] = self.OnSubFinish302903,
        ["302904"] = self.OnSubFinish302904,
        ["302905"] = self.OnSubFinish302905,
        ["302906"] = self.OnSubFinish302906,
        ["302917"] = self.OnSubFinish302917,
        ["302907"] = self.OnSubFinish302907,
        ["302915"] = self.OnSubFinish302915,
        ["302923"] = self.OnSubFinish302923,
        ["302908"] = self.OnSubFinish302908,
        ["302924"] = self.OnSubFinish302924,
        ["302913"] = self.OnSubFinish302913,
        ["302925"] = self.OnSubFinish302925,
        ["302926"] = self.OnSubFinish302926,
        ["302914"] = self.OnSubFinish302914,
        ["302916"] = self.OnSubFinish302916,
        ["302909"] = self.OnSubFinish302909,
        ["302920"] = self.OnSubFinish302920,
        ["302910"] = self.OnSubFinish302910,
        ["302919"] = self.OnSubFinish302919,
        ["302911"] = self.OnSubFinish302911,
        ["302912"] = self.OnSubFinish302912,
        ["302918"] = self.OnSubFinish302918,
        ["302922"] = self.OnSubFinish302922
    }
end

function Quest3029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["302906"] = self.OnSubFailed302906,
        ["302907"] = self.OnSubFailed302907,
        ["302915"] = self.OnSubFailed302915,
        ["302923"] = self.OnSubFailed302923,
        ["302908"] = self.OnSubFailed302908,
        ["302924"] = self.OnSubFailed302924,
        ["302913"] = self.OnSubFailed302913,
        ["302925"] = self.OnSubFailed302925,
        ["302926"] = self.OnSubFailed302926,
        ["302914"] = self.OnSubFailed302914,
        ["302916"] = self.OnSubFailed302916,
        ["302909"] = self.OnSubFailed302909,
        ["302920"] = self.OnSubFailed302920,
        ["302919"] = self.OnSubFailed302919,
        ["302912"] = self.OnSubFailed302912
    }
end

function Quest3029:Start()
    print("Start")
end

function Quest3029:OnDestroy()
    print("OnDestroy")
end

function Quest3029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3029:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3029:FollowWander04()
    print("FollowWander04")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias, 3029)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData04, 100, 20, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        actorMgr:CreateActorWithPos("Q3029TriggerFLEND04", "Actor/Gadget/Q3029TriggerFLEND04", 70900002, 0, sceneData:GetDummyPoint(20167, "WanderRoad404").pos, sceneData:GetDummyPoint(20167, "WanderRoad404").rot, true, false, 20167)
    end, nil, nil, nil, nil, nil, true)
end

function Quest3029:FollowWanderer02()
    print("FollowWanderer02")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias, 3029)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData03, 100, 20, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        actorMgr:CreateActorWithPos("Q3029TriggerFLEND02", "Actor/Gadget/Q3029TriggerFLEND02", 70900002, 0, sceneData:GetDummyPoint(20167, "WanderRoad304").pos, sceneData:GetDummyPoint(20167, "WanderRoad304").rot, true, false, 20167)
    end, nil, nil, nil, nil, nil, true)
end

function Quest3029:FollowWanderer03()
    print("FollowWanderer03")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias, 3029)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData02, 100, 20, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        actorMgr:CreateActorWithPos("Q3029TriggerFLEND03", "Actor/Gadget/Q3029TriggerFLEND03", 70900002, 0, sceneData:GetDummyPoint(20167, "WanderRoad203").pos, sceneData:GetDummyPoint(20167, "WanderRoad203").rot, true, false, 20167)
    end, nil, nil, nil, nil, nil, true)
end

function Quest3029:OnMoveResume()
    print("OnMoveResume")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:ResumeMove()
end

function Quest3029:OnMovePause()
    print("OnMovePause")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias)
    questNpcActor:Standby()
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1120, true, nil, true, false, false, false)
end

function Quest3029:FollowWanderer01()
    print("FollowWanderer01")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias, 3029)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 100, 20, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        actorMgr:CreateActorWithPos("Q3029TriggerFLEND01", "Actor/Gadget/Q3029TriggerFLEND01", 70900002, 0, sceneData:GetDummyPoint(20167, "WanderRoad103").pos, sceneData:GetDummyPoint(20167, "WanderRoad103").rot, true, false, 20167)
    end, nil, nil, nil, nil, nil, true)
end

function Quest3029:Beginkaiche302901()
    print("Beginkaiche302901")
    if this:GetQuestVar(302901, 1) == 0 then
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:ClearNarratorTask()
            this:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 3029)
        end)

        this:SetQuestVarByMainId(1, 1)
    end
end

function Quest3029:OnSubStart302921(arg1)
    print("OnSubStart302921")
end

function Quest3029:OnSubFinish302921(arg1)
    print("OnSubFinish302921")
end

function Quest3029:OnSubStart302901(arg1)
    print("OnSubStart302901")
    this:CreateQuestNpc(arg1, npcs.Npc12991Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12992Data.id, 2)
    actorMgr:CreateActorWithPos("Q302901Trigger", "Actor/Gadget/Q302901Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q302901_guide").pos, sceneData:GetDummyPoint(3, "Q302901_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q302901TriggerNear", "Actor/Gadget/Q302901TriggerNear", 70900002, 0, sceneData:GetDummyPoint(3, "Q302901_N12991").pos, sceneData:GetDummyPoint(3, "Q302901_N12991").rot, true, false, 3)
    this:Beginkaiche302901()
    this:GetQuestNpcActor(npcs.Npc12991Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12992Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3029:OnSubFinish302901(arg1)
    print("OnSubFinish302901")
    this:ActorDestroy("Q302901Trigger")
    this:ActorDestroy("Q302901TriggerNear")
end

function Quest3029:OnSubStart302902(arg1)
    print("OnSubStart302902")
    actorMgr:CreateActorWithPos("Q302902Trigger", "Actor/Gadget/Q302902Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q302901_N12991").pos, sceneData:GetDummyPoint(3, "Q302901_N12991").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc12991Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12992Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3029:OnSubFinish302902(arg1)
    print("OnSubFinish302902")
end

function Quest3029:OnSubStart302903(arg1)
    print("OnSubStart302903")
    this:CreateQuestNpcById(302903, npcs.Npc12991Data.id, 3)
    this:CreateQuestNpcById(302903, npcs.Npc12992Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc12991Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12992Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12991Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest3029:OnSubFinish302903(arg1)
    print("OnSubFinish302903")
    this:SafeDestroyQuestNpc(npcs.Npc12991Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12992Data.alias, 3)
end

function Quest3029:OnSubStart302904(arg1)
    print("OnSubStart302904")
    this:ClearNarratorTask()
    if this:GetQuestVar(302904, 0) == 0 then
        this:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 1)
        actorMgr:CreateActorWithPos("Q302904Trigger", "Actor/Gadget/Q302904Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1075)
    end

    this:CreateQuestNpc(arg1, npcs.Npc1056Data.id, 2)
end

function Quest3029:OnSubFinish302904(arg1)
    print("OnSubFinish302904")
    this:SafeDestroyQuestNpc(npcs.Npc10013Data.alias, 1075)
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
end

function Quest3029:OnSubStart302905(arg1)
    print("OnSubStart302905")
    globalActor:PlayerEnterDungeon(11, 1168, false, nil, 0)
end

function Quest3029:OnSubFinish302905(arg1)
    print("OnSubFinish302905")
end

function Quest3029:OnSubStart302906(arg1)
    print("OnSubStart302906")
    this:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 1)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 3029)
        this:EnterSceneLookCamera(sceneData:GetDummyPoint(20166, "Q302906_LookPoint").pos, 0, 3, true, false)
    end)

    actorMgr:CreateActorWithPos("Q302906Trigger", "Actor/Gadget/Q302906Trigger", 70900002, 0, sceneData:GetDummyPoint(20166, "Q302906_N10013").pos, sceneData:GetDummyPoint(20166, "Q302906_N10013").rot, true, false, 20166)
    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
end

function Quest3029:OnSubFinish302906(arg1)
    print("OnSubFinish302906")
end

function Quest3029:OnSubFailed302906(arg1)
    print("OnSubFailed302906")
    this:ClearNarratorTask()
    this:ActorDestroy("Q302906Trigger")
end

function Quest3029:OnSubStart302917(arg1)
    print("OnSubStart302917")
    if sceneData.currSceneID == 20166 then
        globalActor:PlayerEnterDungeon(15, 1169, true, nil, 0)
    end
end

function Quest3029:OnSubFinish302917(arg1)
    print("OnSubFinish302917")
end

function Quest3029:OnSubStart302907(arg1)
    print("OnSubStart302907")
    this:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 1)
    actorMgr:CreateActorWithPos("Q302907Trigger", "Actor/Gadget/Q302907Trigger", 70900002, 0, sceneData:GetDummyPoint(20167, "Q302907_N10013").pos, sceneData:GetDummyPoint(20167, "Q302907_N10013").rot, true, false, 20167)
end

function Quest3029:OnSubFinish302907(arg1)
    print("OnSubFinish302907")
end

function Quest3029:OnSubFailed302907(arg1)
    print("OnSubFailed302907")
    this:ActorDestroy("Q302907Trigger")
end

function Quest3029:OnSubStart302915(arg1)
    print("OnSubStart302915")
    this:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 1)
    this:ActorDestroy("Q3029TriggerFLEND01")
    this:FollowWanderer01()
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias, 3029)
    this:NpcForceAvatarWalkByDist(questNpcActor, 4, 6)
    local v = this:GetQuestNpcActor(npcs.Npc10013Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:SetWalkSpeedRatio(0.9)
    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
end

function Quest3029:OnSubFinish302915(arg1)
    print("OnSubFinish302915")
end

function Quest3029:OnSubFailed302915(arg1)
    print("OnSubFailed302915")
    this:ActorDestroy("Q3029TriggerFLEND01")
end

function Quest3029:OnSubStart302923(arg1)
    print("OnSubStart302923")
    this:NarratorOnlyTaskByData(datas.NarratorWithId04, function(arg1)
        this:TransmitPlayerWithDialogTextByQuestId(302923, 1, datas.DialogsId, 4.5)
    end, 3029)

    actorMgr:CreateActorWithPos("Q3029TriggerTRANS01", "Actor/Gadget/Q3029TriggerTRANS01", 70900002, 0, sceneData:GetDummyPoint(20167, "TransPoint002").pos, sceneData:GetDummyPoint(20167, "TransPoint002").rot, true, false, 20167)
end

function Quest3029:OnSubFinish302923(arg1)
    print("OnSubFinish302923")
end

function Quest3029:OnSubFailed302923(arg1)
    print("OnSubFailed302923")
    this:ClearNarratorTask()
    this:ActorDestroy("Q3029TriggerTRANS01")
end

function Quest3029:OnSubStart302908(arg1)
    print("OnSubStart302908")
    this:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 1)
    this:ActorDestroy("Q3029TriggerFLEND02")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId05, nil, 3029)
        this:FollowWanderer02()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias, 3029)
        this:NpcForceAvatarWalkByDist(questNpcActor, 4, 6)
        local v = this:GetQuestNpcActor(npcs.Npc10013Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:SetWalkSpeedRatio(0.9)
        this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
    end)
end

function Quest3029:OnSubFinish302908(arg1)
    print("OnSubFinish302908")
end

function Quest3029:OnSubFailed302908(arg1)
    print("OnSubFailed302908")
    this:ClearNarratorTask()
    this:ActorDestroy("Q3029TriggerFLEND02")
end

function Quest3029:OnSubStart302924(arg1)
    print("OnSubStart302924")
    this:CallDelay(2, function(arg1)
        this:TransmitPlayerWithDialogTextByQuestId(302924, 1, datas.DialogsId03, 2)
    end)

    actorMgr:CreateActorWithPos("Q3029TriggerTRANS02", "Actor/Gadget/Q3029TriggerTRANS02", 70900002, 0, sceneData:GetDummyPoint(20167, "TransPoint001").pos, sceneData:GetDummyPoint(20167, "TransPoint001").rot, true, false, 20167)
end

function Quest3029:OnSubFinish302924(arg1)
    print("OnSubFinish302924")
end

function Quest3029:OnSubFailed302924(arg1)
    print("OnSubFailed302924")
    this:ActorDestroy("Q3029TriggerTRANS02")
end

function Quest3029:OnSubStart302913(arg1)
    print("OnSubStart302913")
    this:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 1)
    this:ActorDestroy("Q3029TriggerFLEND03")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId06, nil, 3029)
        this:FollowWanderer03()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias, 3029)
        this:NpcForceAvatarWalkByDist(questNpcActor, 4, 6)
        local v = this:GetQuestNpcActor(npcs.Npc10013Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:SetWalkSpeedRatio(0.9)
        this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
    end)
end

function Quest3029:OnSubFinish302913(arg1)
    print("OnSubFinish302913")
end

function Quest3029:OnSubFailed302913(arg1)
    print("OnSubFailed302913")
    this:ClearNarratorTask()
    this:ActorDestroy("Q3029TriggerFLEND03")
end

function Quest3029:OnSubStart302925(arg1)
    print("OnSubStart302925")
    this:CallDelay(2, function(arg1)
        this:TransmitPlayerWithTextByQuestId(302925, 1, datas.DialogsId02, 2)
    end)

    actorMgr:CreateActorWithPos("Q3029TriggerTRANS03", "Actor/Gadget/Q3029TriggerTRANS03", 70900002, 0, sceneData:GetDummyPoint(20167, "TransPoint003").pos, sceneData:GetDummyPoint(20167, "TransPoint003").rot, true, false, 20167)
end

function Quest3029:OnSubFinish302925(arg1)
    print("OnSubFinish302925")
end

function Quest3029:OnSubFailed302925(arg1)
    print("OnSubFailed302925")
    this:ActorDestroy("Q3029TriggerTRANS03")
end

function Quest3029:OnSubStart302926(arg1)
    print("OnSubStart302926")
    this:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 1)
    this:ActorDestroy("Q3029TriggerFLEND04")
    this:NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 3029)
    this:FollowWander04()
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias, 3029)
    this:NpcForceAvatarWalkByDist(questNpcActor, 4, 6)
    local v = this:GetQuestNpcActor(npcs.Npc10013Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:SetWalkSpeedRatio(0.9)
    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
end

function Quest3029:OnSubFinish302926(arg1)
    print("OnSubFinish302926")
    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias, 3029)
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:GetQuestNpcActor(npcs.Npc10013Data.alias):ResetWalkSpeedRatio()
end

function Quest3029:OnSubFailed302926(arg1)
    print("OnSubFailed302926")
    this:ClearNarratorTask()
    this:ActorDestroy("Q3029TriggerFLEND04")
end

function Quest3029:OnSubStart302914(arg1)
    print("OnSubStart302914")
    actorMgr:CreateActorWithPos("Q3029T14rigger", "Actor/Gadget/Q3029T14rigger", 70900002, 0, sceneData:GetDummyPoint(20167, "Q302914_N10013").pos, sceneData:GetDummyPoint(20167, "Q302914_N10013").rot, true, false, 20167)
    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
end

function Quest3029:OnSubFinish302914(arg1)
    print("OnSubFinish302914")
    this:TransmitPlayerByQuestId(302914, 1)
end

function Quest3029:OnSubFailed302914(arg1)
    print("OnSubFailed302914")
    this:ActorDestroy("Q3029T14rigger")
end

function Quest3029:OnSubStart302916(arg1)
    print("OnSubStart302916")
    actorMgr:CreateActorWithPos("Q302916Trigger", "Actor/Gadget/Q302916Trigger", 70900002, 0, sceneData:GetDummyPoint(20167, "Q302916_guide").pos, sceneData:GetDummyPoint(20167, "Q302916_guide").rot, true, false, 20167)
    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
end

function Quest3029:OnSubFinish302916(arg1)
    print("OnSubFinish302916")
    this:TransmitPlayerByQuestId(302916, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12988Data.alias, 20167)
    this:SafeDestroyQuestNpc(npcs.Npc12987Data.alias, 20167)
end

function Quest3029:OnSubFailed302916(arg1)
    print("OnSubFailed302916")
    this:ActorDestroy("Q302916Trigger")
end

function Quest3029:OnSubStart302909(arg1)
    print("OnSubStart302909")
    actorMgr:CreateActorWithPos("Q302909Trigger", "Actor/Gadget/Q302909Trigger", 70900002, 0, sceneData:GetDummyPoint(20167, "Q302909_guide").pos, sceneData:GetDummyPoint(20167, "Q302909_guide").rot, true, false, 20167)
    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
end

function Quest3029:OnSubFinish302909(arg1)
    print("OnSubFinish302909")
end

function Quest3029:OnSubFailed302909(arg1)
    print("OnSubFailed302909")
    this:ActorDestroy("Q302909Trigger")
end

function Quest3029:OnSubStart302920(arg1)
    print("OnSubStart302920")
    actorMgr:CreateActorWithPos("Q302920Triggernear", "Actor/Gadget/Q302920Triggernear", 70900002, 0, sceneData:GetDummyPoint(20167, "WanderRoad403").pos, sceneData:GetDummyPoint(20167, "WanderRoad403").rot, true, false, 20167)
    this:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 1)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10013Data.alias)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, false)
    this:CallDelay(18, function(arg1)
        actorUtils.FinishQuestID(false, 302920)
    end)

    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
    this:CallDelay(3, function(arg1)
        this:ActionSafeCall(function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithId07, nil, 3029)
        end)
    end)
end

function Quest3029:OnSubFinish302920(arg1)
    print("OnSubFinish302920")
    this:ActorDestroy("Q302920Triggernear")
    this:ClearNarratorTask()
end

function Quest3029:OnSubFailed302920(arg1)
    print("OnSubFailed302920")
    this:ActorDestroy("Q302920Triggernear")
    this:ClearNarratorTask()
end

function Quest3029:OnSubStart302910(arg1)
    print("OnSubStart302910")
    this:GetQuestNpcActor(npcs.Npc10013Data.alias):DoFreeStateTrigger()
    this:RequestInteraction(npcs.Npc10013Data.alias)
    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
end

function Quest3029:OnSubFinish302910(arg1)
    print("OnSubFinish302910")
    this:SafeDestroyQuestNpc(npcs.Npc10013Data.alias, 20167)
end

function Quest3029:OnSubStart302919(arg1)
    print("OnSubStart302919")
    actorMgr:CreateActorWithPos("Q302919Trigger", "Actor/Gadget/Q302919Trigger", 70900002, 0, sceneData:GetDummyPoint(20167, "Q302919_guide").pos, sceneData:GetDummyPoint(20167, "Q302919_guide").rot, true, false, 20167)
    this:DisableMainPageWithConfig(true, "DisableTorrentMainQuest")
end

function Quest3029:OnSubFinish302919(arg1)
    print("OnSubFinish302919")
    this:TransmitPlayerByQuestId(302911, 3)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:ActorDestroy("Q302919Trigger")
end

function Quest3029:OnSubFailed302919(arg1)
    print("OnSubFailed302919")
    this:ActorDestroy("Q302919Trigger")
end

function Quest3029:OnSubStart302911(arg1)
    print("OnSubStart302911")
end

function Quest3029:OnSubFinish302911(arg1)
    print("OnSubFinish302911")
    this:DisableMainPageWithConfig(false, "DisableTorrentMainQuest")
end

function Quest3029:OnSubStart302912(arg1)
    print("OnSubStart302912")
    actorMgr:CreateActorWithPos("Q302912TriggerWufeng", "Actor/Gadget/Q302912TriggerWufeng", 70900002, 0, sceneData:GetDummyPoint(3, "Q302912_guide").pos, sceneData:GetDummyPoint(3, "Q302912_guide").rot, true, false, 3)
end

function Quest3029:OnSubFinish302912(arg1)
    print("OnSubFinish302912")
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 3)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:ActorDestroy("Q302912TriggerWufeng")
end

function Quest3029:OnSubFailed302912(arg1)
    print("OnSubFailed302912")
end

function Quest3029:OnSubStart302918(arg1)
    print("OnSubStart302918")
end

function Quest3029:OnSubFinish302918(arg1)
    print("OnSubFinish302918")
end

function Quest3029:OnSubStart302922(arg1)
    print("OnSubStart302922")
end

function Quest3029:OnSubFinish302922(arg1)
    print("OnSubFinish302922")
    this:ActorDestroy("Q302922Trigger")
end

return Quest3029
