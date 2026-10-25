require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11029 = class("Quest11029", QuestActorProxy)
Quest11029.defaultAlias = "Quest11029"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest11029:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest11029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1102908"] = self.OnSubStart1102908,
        ["1102901"] = self.OnSubStart1102901,
        ["1102902"] = self.OnSubStart1102902,
        ["1102912"] = self.OnSubStart1102912,
        ["1102903"] = self.OnSubStart1102903,
        ["1102909"] = self.OnSubStart1102909,
        ["1102910"] = self.OnSubStart1102910,
        ["1102911"] = self.OnSubStart1102911,
        ["1102904"] = self.OnSubStart1102904,
        ["1102914"] = self.OnSubStart1102914,
        ["1102905"] = self.OnSubStart1102905,
        ["1102913"] = self.OnSubStart1102913,
        ["1102906"] = self.OnSubStart1102906,
        ["1102907"] = self.OnSubStart1102907
    }
end

function Quest11029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1102908"] = self.OnSubFinish1102908,
        ["1102901"] = self.OnSubFinish1102901,
        ["1102902"] = self.OnSubFinish1102902,
        ["1102912"] = self.OnSubFinish1102912,
        ["1102903"] = self.OnSubFinish1102903,
        ["1102909"] = self.OnSubFinish1102909,
        ["1102910"] = self.OnSubFinish1102910,
        ["1102911"] = self.OnSubFinish1102911,
        ["1102904"] = self.OnSubFinish1102904,
        ["1102914"] = self.OnSubFinish1102914,
        ["1102905"] = self.OnSubFinish1102905,
        ["1102913"] = self.OnSubFinish1102913,
        ["1102906"] = self.OnSubFinish1102906,
        ["1102907"] = self.OnSubFinish1102907
    }
end

function Quest11029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1102910"] = self.OnSubFailed1102910,
        ["1102911"] = self.OnSubFailed1102911,
        ["1102904"] = self.OnSubFailed1102904,
        ["1102906"] = self.OnSubFailed1102906
    }
end

function Quest11029:Start()
    print("Start")
end

function Quest11029:OnDestroy()
    print("OnDestroy")
end

function Quest11029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11029:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest11029:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest11029:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest11029:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest11029:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest11029:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest11029:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 1102914)
    end
end

function Quest11029:OnSubStart1102908(arg1)
    print("OnSubStart1102908")
    this:NpcCreateWithTriggerBlack(npcs.Npc1068Data.id, 1102908, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc10233Data.id, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13136Data.alias, 3)
    this:ClearNarratorTask()
    this:GetQuestNpcActor(npcs.Npc13136Data.alias):ClearFollowTask()
    if actorMgr:GetActor("Q1102901_NarratorTrigger") ~= nil then
        this:ActorDestroy("Q1102901_NarratorTrigger")
    end
end

function Quest11029:OnSubFinish1102908(arg1)
    print("OnSubFinish1102908")
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
end

function Quest11029:OnSubStart1102901(arg1)
    print("OnSubStart1102901")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13136Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.XiaoData.id, 3)
    this:ActionSafeCall(function(arg1)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(this:GetQuestNpcActor(npcs.Npc13136Data.alias, 11029), datas.JialiangRoutePoints1, 10, 7, -1, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13136Data.alias)
            questNpcActor:DoFreeStyle(1130, true, nil, true, true, false, false)
            questNpcActor:LookAt(sceneData:GetDummyPoint(3, "Q1102901_N13136_2").pos)
            this:CallDelay(2, function(arg1)
                this:NpcBeFollowTaskByRoutePointsWithDiffLen(this:GetQuestNpcActor(npcs.Npc13136Data.alias, 11029), datas.JialiangRoutePoints2, 10, 7, -1, function(arg1)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13136Data.alias, 11029)
                    if questNpcActor ~= nil then
                        questNpcActor:SyncPos(2)
                        if questNpcActor.BeFollowState == BeFollowState.FAILED then
                            return
                        end

                        local tbl = {x = 1684.957, y = 210.6141, z = 865.4109}
                        local pos = questNpcActor:GetPos()
                        local v = {x = tbl.x - pos.x, y = tbl.y - pos.y, z = tbl.z - pos.z}
                        questNpcActor:SteerToAutonomyTask(v, 1, true, true)
                    end

                    this:CallDelay(1, function(arg1)
                        this:NarratorOnlyTaskByData(datas.Narrator_1102903, function(arg1)
                            actorUtils.FinishQuestID(false, 1102901)
                        end, 11029)

                        this:GetQuestNpcActor(npcs.Npc13136Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
                    end)
                end, nil, nil, function(arg1)
                    print("OnMovePause")
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13136Data.alias, 11029)
                    questNpcActor:TryPauseCurAutoNarrator()
                    questNpcActor:Standby()
                    questNpcActor:DisableInteeHeadCtrl(false)
                    local avatarPos = actorUtils.GetAvatarPos()
                    local pos = questNpcActor:GetPos()
                    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
                    arg1:SteerToAutonomyTask(tbl, 1, true, true)
                end, function(arg1)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13136Data.alias, 11029)
                    questNpcActor:ClearSteerToAutonomyTask()
                    questNpcActor:TryResumeCurAutoNarrator()
                    questNpcActor:DisableInteeHeadCtrl(true)
                    questNpcActor:ResumeMove()
                end, nil, false)

                arg1:GetQuestNpcActor(npcs.Npc13136Data.alias):ClearLookAt()
            end)

            if this:GetQuestNpcActor(npcs.Npc13136Data.alias, 11029).BeFollowState ~= BeFollowState.FAILED then
                this:NarratorOnlyTaskByData(datas.Narrator_1102902, nil, 11029)
            end
        end, nil, nil, function(arg1)
            print("OnMovePause")
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13136Data.alias, 11029)
            questNpcActor:TryPauseCurAutoNarrator()
            questNpcActor:Standby()
            questNpcActor:DisableInteeHeadCtrl(false)
            local avatarPos = actorUtils.GetAvatarPos()
            local pos = questNpcActor:GetPos()
            local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
            arg1:SteerToAutonomyTask(tbl, 1, true, true)
        end, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13136Data.alias, 11029)
            questNpcActor:ClearSteerToAutonomyTask()
            questNpcActor:TryResumeCurAutoNarrator()
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:ResumeMove()
        end, nil, false)

        actorMgr:CreateActorWithPos("Q1102901_NarratorTrigger", "Actor/Gadget/Q1102901_NarratorTrigger", 70900002, 0, points.TPos_Q1102901_NarratorTrigger.pos, points.TPos_Q1102901_NarratorTrigger.rot, true, false, 3)
    end)
end

function Quest11029:OnSubFinish1102901(arg1)
    print("OnSubFinish1102901")
end

function Quest11029:OnSubStart1102902(arg1)
    print("OnSubStart1102902")
    actorMgr:CreateActorWithPos("Q1102902_Trigger", "Actor/Gadget/Q1102902_Trigger", 70900002, 0, points.TPos_Q1102902_Trigger.pos, points.TPos_Q1102902_Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13136Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest11029:OnSubFinish1102902(arg1)
    print("OnSubFinish1102902")
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13136Data.alias, 3)
end

function Quest11029:OnSubStart1102912(arg1)
    print("OnSubStart1102912")
end

function Quest11029:OnSubFinish1102912(arg1)
    print("OnSubFinish1102912")
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
end

function Quest11029:OnSubStart1102903(arg1)
    print("OnSubStart1102903")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1068Data.id, 1102903, 1, 20, 1)
end

function Quest11029:OnSubFinish1102903(arg1)
    print("OnSubFinish1102903")
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 20182)
    this:SafeDestroyQuestNpc(npcs.Npc13136Data.alias, 20182)
end

function Quest11029:OnSubStart1102909(arg1)
    print("OnSubStart1102909")
end

function Quest11029:OnSubFinish1102909(arg1)
    print("OnSubFinish1102909")
end

function Quest11029:OnSubStart1102910(arg1)
    print("OnSubStart1102910")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc1068Data.id, 1102910, 1, 20, 1)
end

function Quest11029:OnSubFinish1102910(arg1)
    print("OnSubFinish1102910")
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 20182)
    this:SafeDestroyQuestNpc(npcs.Npc13136Data.alias, 20182)
end

function Quest11029:OnSubFailed1102910(arg1)
    print("OnSubFailed1102910")
    if actorMgr:GetActor("Q1102910N1068Trigger") ~= nil then
        this:ActorDestroy("Q1102910N1068Trigger")
    end
end

function Quest11029:OnSubStart1102911(arg1)
    print("OnSubStart1102911")
    this:CreateQuestNpc(arg1, npcs.Npc13137Data.id, 3)
    this:CreateLocalGadget(70310520, "0", {x = 175.07, y = 53.65, z = 767.6}, {x = 0.0, y = 49.275, z = 0.0}, 20182, nil, nil, false)
    this:CreateLocalGadget(70711010, "0", {x = 175.07, y = 53.65, z = 767.6}, {x = 0.0, y = 49.275, z = 0.0}, 20182, nil, nil, false)
    actorMgr:CreateActorWithPos("Q1102904_NarratorTrigger", "Actor/Gadget/Q1102904_NarratorTrigger", 70900002, 0, points.TPos_Q1102904_NarratorTrigger.pos, points.TPos_Q1102904_NarratorTrigger.rot, true, false, 20182)
    actorMgr:CreateActorWithPos("Q1102911_NarratorTrigger", "Actor/Gadget/Q1102911_NarratorTrigger", 70900002, 0, points.TPos_Q1102911_NarratorTrigger.pos, points.TPos_Q1102911_NarratorTrigger.rot, true, false, 20182)
    actorMgr:CreateActorWithPos("Q1102911_NarratorTrigger1", "Actor/Gadget/Q1102911_NarratorTrigger1", 70900002, 0, points.TPos_Q1102911_NarratorTrigger1.pos, points.TPos_Q1102911_NarratorTrigger1.rot, true, false, 20182)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13137Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
end

function Quest11029:OnSubFinish1102911(arg1)
    print("OnSubFinish1102911")
    if actorMgr:GetActor("Q1102911_NarratorTrigger") ~= nil then
        this:ActorDestroy("Q1102911_NarratorTrigger")
    end

    if actorMgr:GetActor("Q1102904_NarratorTrigger") ~= nil then
        this:ActorDestroy("Q1102904_NarratorTrigger")
    end

    this:ClearNarratorTask()
end

function Quest11029:OnSubFailed1102911(arg1)
    print("OnSubFailed1102911")
    this:ClearNarratorTask()
end

function Quest11029:OnSubStart1102904(arg1)
    print("OnSubStart1102904")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc1068Data.id, 1102904, 1, 40, 1)
    this:CreateLocalGadget(70310520, "0", {x = 175.07, y = 53.65, z = 767.6}, {x = 0.0, y = 49.275, z = 0.0}, 20182, nil, nil, false)
    this:CreateLocalGadget(70710989, "0", {x = 188.425, y = 43.306, z = 757.27}, {x = 0.0, y = 49.275, z = 0.0}, 20182, nil, nil, false)
    this:CreateLocalGadget(70711010, "0", {x = 175.07, y = 53.65, z = 767.6}, {x = 0.0, y = 49.275, z = 0.0}, 20182, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc13137Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
end

function Quest11029:OnSubFinish1102904(arg1)
    print("OnSubFinish1102904")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 20182)
    this:SafeDestroyQuestNpc(npcs.Npc13136Data.alias, 20182)
    this:SafeDestroyQuestNpc(npcs.Npc13137Data.alias, 20182)
end

function Quest11029:OnSubFailed1102904(arg1)
    print("OnSubFailed1102904")
    if actorMgr:GetActor("Q1102904N1068Trigger") ~= nil then
        this:ActorDestroy("Q1102904N1068Trigger")
    end
end

function Quest11029:OnSubStart1102914(arg1)
    print("OnSubStart1102914")
end

function Quest11029:OnSubFinish1102914(arg1)
    print("OnSubFinish1102914")
    this:SetLocalGadgetState(70711010, "0", 201)
end

function Quest11029:OnSubStart1102905(arg1)
    print("OnSubStart1102905")
    this:CreateQuestNpc(arg1, npcs.Npc13137Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13260Data.id, 6)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2027Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1102905_Trigger", "Actor/Gadget/Q1102905_Trigger", 70900002, 0, points.TPos_Q1102905_Trigger.pos, points.TPos_Q1102905_Trigger.rot, true, false, 1082)
    this:GetQuestNpcActor(npcs.Npc13137Data.alias):ClearFollowTask()
    this:GetQuestNpcActor(npcs.Npc13260Data.alias):StandFromChairEx(0)
    if actorMgr:GetActor("Q1102913_Trigger") ~= nil then
        this:ActorDestroy("Q1102913_Trigger")
    end

    if actorMgr:GetActor("Q1102906_Trigger") ~= nil then
        this:ActorDestroy("Q1102906_Trigger")
    end

    globalActor:ResumePaimonInProfilePage({3})
    globalActor:ResumePaimonInProfilePage({1082})
    this:ClearNarratorTask()
end

function Quest11029:OnSubFinish1102905(arg1)
    print("OnSubFinish1102905")
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 1082)
    this:SafeDestroyQuestNpc(npcs.Npc13135Data.alias, 1082)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 1082)
end

function Quest11029:OnSubStart1102913(arg1)
    print("OnSubStart1102913")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13137Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc10233Data.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13260Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2027Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1102913_Trigger", "Actor/Gadget/Q1102913_Trigger", 70900002, 0, points.TPos_Q1102913_Trigger.pos, points.TPos_Q1102913_Trigger.rot, true, false, 3)
    this:CreateLocalGadget(70291004, "0", {x = 6.553, y = 0.0, z = 38.127}, {x = 0.0, y = 90.0, z = 0.0}, 1082, nil, nil, 0, false)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13260Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc10233Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13260Data.alias):SitOnChair(8010)
    end)

    globalActor:DisablePaimonInProfilePage({1082})
    this:DisableMainPageWithConfigByQuest(true, "DisableBaizhuLegend")
end

function Quest11029:OnSubFinish1102913(arg1)
    print("OnSubFinish1102913")
    globalActor:ResumePaimonInProfilePage({1082})
    this:DisableMainPageWithConfigByQuest(false, "DisableBaizhuLegend")
    this:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 1082)
    this:SafeDestroyQuestNpc(npcs.Npc13260Data.alias, 1082)
end

function Quest11029:OnSubStart1102906(arg1)
    print("OnSubStart1102906")
    this:CreateQuestNpc(arg1, npcs.Npc13175Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2027Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    this:CallDelay(1, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13137Data.alias, 11029)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.JiangliRoutePoints1, 7, 5, -1, function(arg1)
            print("OnFinish")
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13137Data.alias, 11029)
            questNpcActor:SyncPos(2)
            if questNpcActor.BeFollowState == BeFollowState.FAILED then
                return
            end

            questNpcActor:Standby()
            questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1102907_T1102907_N13137").rot))
            questNpcActor:ClearSteerToAutonomyTask()
            actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1102906)
        end, nil, nil, function(arg1)
            print("OnMovePause")
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13137Data.alias, 11029)
            questNpcActor:TryPauseCurAutoNarrator()
            questNpcActor:Standby()
            questNpcActor:DisableInteeHeadCtrl(false)
            local avatarPos = actorUtils.GetAvatarPos()
            local pos = questNpcActor:GetPos()
            local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
            local actor = actorMgr:GetActor("11029")
            arg1:SteerToAutonomyTask(tbl, 1, true, true)
        end, function(arg1)
            print("OnMoveResume")
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13137Data.alias, 11029)
            questNpcActor:ClearSteerToAutonomyTask()
            questNpcActor:TryResumeCurAutoNarrator()
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:ResumeMove()
        end, nil, true)

        local v = this:GetQuestNpcActor(npcs.Npc13137Data.alias)
        v:EnableInteraction(false)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc13137Data.alias, 11029)
        this:NpcForceAvatarWalkByDist(questNpcActor2, 3, 6)
        v:SetWalkSpeedRatio(0.8)
    end)

    actorMgr:CreateActorWithPos("Q1102906_Trigger", "Actor/Gadget/Q1102906_Trigger", 70900002, 0, points.TPos_Q1102906_Trigger.pos, points.TPos_Q1102906_Trigger.rot, true, false, 3)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest11029:OnSubFinish1102906(arg1)
    print("OnSubFinish1102906")
    if actorMgr:GetActor("Q1102906_Trigger") ~= nil then
        this:ActorDestroy("Q1102906_Trigger")
    end

    globalActor:ResumePaimonInProfilePage({3})
    this:ClearNarratorTask()
    this:RemoveLocalGadget(70291004, "0")
    this:SafeDestroyQuestNpc(npcs.Npc13175Data.alias, 3)
end

function Quest11029:OnSubFailed1102906(arg1)
    print("OnSubFailed1102906")
    this:GetQuestNpcActor(npcs.Npc13137Data.alias):ClearFollowTask()
end

function Quest11029:OnSubStart1102907(arg1)
    print("OnSubStart1102907")
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2027Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13137Data.alias):EnableInteraction(true)
    actorMgr:CreateActorWithPos("Q1102907_Trigger", "Actor/Gadget/Q1102907_Trigger", 70900002, 0, points.TPos_Q1102907_Trigger.pos, points.TPos_Q1102907_Trigger.rot, true, false, 3)
end

function Quest11029:OnSubFinish1102907(arg1)
    print("OnSubFinish1102907")
    this:LightNotifyTo(npcs.Npc2068Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2027Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2028Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2029Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2103Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 1082)
    this:SafeDestroyQuestNpc(npcs.Npc13135Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13137Data.alias, 1082)
    this:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
end

return Quest11029
