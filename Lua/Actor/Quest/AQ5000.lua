require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5000 = class("Quest5000", QuestActorProxy)
Quest5000.defaultAlias = "Quest5000"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5000:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["500001"] = self.OnSubStart500001,
        ["500002"] = self.OnSubStart500002,
        ["500017"] = self.OnSubStart500017,
        ["500003"] = self.OnSubStart500003,
        ["500004"] = self.OnSubStart500004,
        ["500005"] = self.OnSubStart500005,
        ["500018"] = self.OnSubStart500018,
        ["500020"] = self.OnSubStart500020,
        ["500014"] = self.OnSubStart500014,
        ["500015"] = self.OnSubStart500015,
        ["500016"] = self.OnSubStart500016,
        ["500006"] = self.OnSubStart500006,
        ["500019"] = self.OnSubStart500019,
        ["500007"] = self.OnSubStart500007,
        ["500008"] = self.OnSubStart500008,
        ["500013"] = self.OnSubStart500013,
        ["500009"] = self.OnSubStart500009,
        ["500021"] = self.OnSubStart500021,
        ["500010"] = self.OnSubStart500010,
        ["500011"] = self.OnSubStart500011,
        ["500012"] = self.OnSubStart500012
    }
end

function Quest5000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["500001"] = self.OnSubFinish500001,
        ["500002"] = self.OnSubFinish500002,
        ["500017"] = self.OnSubFinish500017,
        ["500003"] = self.OnSubFinish500003,
        ["500004"] = self.OnSubFinish500004,
        ["500005"] = self.OnSubFinish500005,
        ["500018"] = self.OnSubFinish500018,
        ["500020"] = self.OnSubFinish500020,
        ["500014"] = self.OnSubFinish500014,
        ["500015"] = self.OnSubFinish500015,
        ["500016"] = self.OnSubFinish500016,
        ["500006"] = self.OnSubFinish500006,
        ["500019"] = self.OnSubFinish500019,
        ["500007"] = self.OnSubFinish500007,
        ["500008"] = self.OnSubFinish500008,
        ["500013"] = self.OnSubFinish500013,
        ["500009"] = self.OnSubFinish500009,
        ["500021"] = self.OnSubFinish500021,
        ["500010"] = self.OnSubFinish500010,
        ["500011"] = self.OnSubFinish500011,
        ["500012"] = self.OnSubFinish500012
    }
end

function Quest5000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["500016"] = self.OnSubFailed500016}
end

function Quest5000:Start()
    print("Start")
end

function Quest5000:OnDestroy()
    print("OnDestroy")
end

function Quest5000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 500021 then
        actorUtils.FinishQuestID(false, 500021)
    elseif arg1 == 5000211005 then
        self:BindQuestNpcToPlatform(1005, 500201, npcs.Npc1005Data.platformInfo)
    elseif arg1 == 5000211086 then
        self:BindQuestNpcToPlatform(1086, 500201, npcs.Npc1086Data.platformInfo)
    end
end

function Quest5000:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5000:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5000:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5000:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5000:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5000:OnSubStart500001(arg1)
    print("OnSubStart500001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500001, 0, 10, 1, npcs.Npc1070.id)
    this:NotifyTo(npcs.Npc5133.alias, 2, true)
end

function Quest5000:OnSubFinish500001(arg1)
    print("OnSubFinish500001")
    this:SafeDestroyQuestNpc(npcs.Npc1070.alias, 3)
end

function Quest5000:OnSubStart500002(arg1)
    print("OnSubStart500002")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Paimon.id, 0, 500002, 5, false)
    this:ActionSafeCall(function(arg1_2)
        if this:GetQuestGlobalVar(1401201) == 1 then
            this:CreateQuestNpc(arg1, npcs.Npc1073.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1073.alias, 5000):DoFreeStyle(1220, true, nil, true, true, false, true)
        else
            this:CreateQuestNpc(arg1, npcs.Npc13577.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc13577.alias, 5000):DoFreeStyle(1220, true, nil, true, true, false, false)
        end

        this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1070.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1077.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 5000):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1070.alias, 5000):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1077.alias, 5000):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:NotifyTo(npcs.Npc5133.alias, 1, true)
    end)
end

function Quest5000:OnSubFinish500002(arg1)
    print("OnSubFinish500002")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Paimon.alias, 5000):DestroyWithDisappear(false, nil)
    end)

    if this:GetQuestGlobalVar(1401201) == 1 then
        this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 3)
    else
        this:SafeDestroyQuestNpc(npcs.Npc13577.alias, 3)
    end

    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070.alias, 3)
    this:LightNotifyTo(npcs.Npc5133.alias, 0, true)
end

function Quest5000:OnSubStart500017(arg1)
    print("OnSubStart500017")
    actorMgr:CreateActorWithPos("Q500017Finish", "Actor/Gadget/Q500017Finish", 70900002, 0, points.Q500017Finish.pos, points.Q500017Finish.rot, true, false, 3)
end

function Quest5000:OnSubFinish500017(arg1)
    print("OnSubFinish500017")
    this:NarratorOnlyTaskByDataWithPriority(datas.Q500002Kaiche, 5000, 2)
end

function Quest5000:OnSubStart500003(arg1)
    print("OnSubStart500003")
    this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14185.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14185.alias, 5000):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14182.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14182.alias, 5000):DoFreeStyle(1180, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q500003Talk", "Actor/Gadget/Q500003Talk", 70900002, 0, points._Q500003TalkPoint_.pos, points._Q500003TalkPoint_.rot, true, false, 3)
    this:NotifyTo(npcs.Npc6082.alias, 1, true)
end

function Quest5000:OnSubFinish500003(arg1)
    print("OnSubFinish500003")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14185.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14182.alias, 3)
    this:LightNotifyTo(npcs.Npc6082.alias, 0, true)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1918, nil)
    end)
end

function Quest5000:OnSubStart500004(arg1)
    print("OnSubStart500004")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1086.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DisableInteeHeadCtrl(true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5000)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Q500004Walk, 6, 4, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DisableInteeHeadCtrl(false)
            this:QuestNarratorTask(datas.Q04Kaiche, function(arg1)
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5000)
                local pos = questNpcActor:GetPos()
                local tbl = {}
                local x = pos.x
                tbl.x = -1345.423 - x
                tbl.y = 138 - pos.y
                tbl.z = 7570.6 - pos.z
                questNpcActor:SteerToAutonomyTask(tbl, 1, true, true)
                this:CallDelayByQuest("50000410", 2, function(arg1)
                    this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DisableInteeHeadCtrl(true)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5000)
                    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Q50004Walk_02, 6, 4, -1, function(arg1)
                        arg1:SyncPos(2)
                        if arg1.BeFollowState == BeFollowState.FAILED then
                            return
                        end

                        this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DisableInteeHeadCtrl(false)
                        this:QuestNarratorTask(datas.Q04Kaiche2, function(arg1)
                            actorUtils.FinishQuestID(false, 500004)
                        end)

                        local avatarPos = actorUtils.GetAvatarPos()
                        local pos = arg1:GetPos()
                        local tbl = {}
                        local x = pos.x
                        tbl.x = -1393.4 - x
                        tbl.y = 145.7 - pos.y
                        tbl.z = 7579 - pos.z
                        arg1:SteerToAutonomyTask(tbl, 1, true, true)
                        this:CallDelayByQuest("50000402", 2, function(arg1)
                            this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DoFreeStyle(1170, true, nil, true, true, false, false)
                            this:CallDelayByQuest("50000421", 4, function(arg1)
                                local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5000)
                                local pos = questNpcActor:GetPos()
                                local avatarPos = actorUtils.GetAvatarPos()
                                local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
                                questNpcActor:SteerToAutonomyTask(tbl, 1, true, true)
                                this:CallDelayByQuest("50000431", 1.5, function(arg1)
                                    this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DoFreeStyle(1170, true, nil, true, true, false, false)
                                end)
                            end)
                        end)
                    end, nil, nil, function(arg1)
                        this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):Standby()
                        this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DisableInteeHeadCtrl(false)
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
                end)
            end)

            this:EnterSceneLookCameraByParam(datas.Q500004Focus)
            local avatarPos = actorUtils.GetAvatarPos()
            local pos = arg1:GetPos()
            local tbl = {}
            local x = pos.x
            tbl.x = -1362.423 - x
            tbl.y = 175.4651 - pos.y
            tbl.z = 7647.843 - pos.z
            arg1:SteerToAutonomyTask(tbl, 1, true, true)
            this:CallDelayByQuest("50000401", 2, function(arg1)
                this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DoFreeStyle(1170, true, nil, true, true, false, false)
                this:CallDelayByQuest("50000422", 4, function(arg1)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5000)
                    local pos = questNpcActor:GetPos()
                    local avatarPos = actorUtils.GetAvatarPos()
                    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
                    questNpcActor:SteerToAutonomyTask(tbl, 1, true, true)
                    this:CallDelayByQuest("50000431", 1.5, function(arg1)
                        this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DoFreeStyle(1170, true, nil, true, true, false, false)
                    end)
                end)
            end)
        end, nil, nil, function(arg1)
            this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):Standby()
            this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DisableInteeHeadCtrl(false)
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

        actorMgr:CreateActorWithPos("Q500004Baodi", "Actor/Gadget/Q500004Baodi", 70900002, 0, points._Q500004BaodiPoint_.pos, points._Q500004BaodiPoint_.rot, true, false, 3)
    end)
end

function Quest5000:OnSubFinish500004(arg1)
    print("OnSubFinish500004")
    this:ActorDestroy("Q500004Baodi")
end

function Quest5000:OnSubStart500005(arg1)
    print("OnSubStart500005")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5000)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Q500005Walk, 6, 4, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        actorUtils.FinishQuestID(false, 500005)
        this:RequestInteraction(npcs.Npc1086.alias, "", true)
    end, nil, nil, function(arg1)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):Standby()
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DisableInteeHeadCtrl(false)
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

function Quest5000:OnSubFinish500005(arg1)
    print("OnSubFinish500005")
end

function Quest5000:OnSubStart500018(arg1)
    print("OnSubStart500018")
    actorMgr:CreateActorWithPos("Q500018Talk", "Actor/Gadget/Q500018Talk", 70900002, 0, points._Q500018TalkPoint_.pos, points._Q500018TalkPoint_.rot, true, false, 3)
end

function Quest5000:OnSubFinish500018(arg1)
    print("OnSubFinish500018")
end

function Quest5000:OnSubStart500020(arg1)
    print("OnSubStart500020")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5000)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Q500020Walk, 6, 4, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        actorUtils.FinishQuestID(false, 500020)
    end, nil, nil, function(arg1)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):Standby()
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5000):DisableInteeHeadCtrl(false)
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

    actorMgr:CreateActorWithPos("Q500020Baodi", "Actor/Gadget/Q500020Baodi", 70900002, 0, points._Q500020BaodiPoint_.pos, points._Q500020BaodiPoint_.rot, true, false, nil)
end

function Quest5000:OnSubFinish500020(arg1)
    print("OnSubFinish500020")
    this:ActorDestroy("Q500020Baodi")
end

function Quest5000:OnSubStart500014(arg1)
    print("OnSubStart500014")
    actorMgr:CreateActorWithPos("Q500014Talk", "Actor/Gadget/Q500014Talk", 70900002, 0, points._Q500014TalkPoint_.pos, points._Q500014TalkPoint_.rot, true, false, 3)
end

function Quest5000:OnSubFinish500014(arg1)
    print("OnSubFinish500014")
end

function Quest5000:OnSubStart500015(arg1)
    print("OnSubStart500015")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc6092.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q500015Talk", "Actor/Gadget/Q500015Talk", 70900002, 0, points._Q500015TalkPoint_.pos, points._Q500015TalkPoint_.rot, true, false, 3)
    end)
end

function Quest5000:OnSubFinish500015(arg1)
    print("OnSubFinish500015")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
end

function Quest5000:OnSubStart500016(arg1)
    print("OnSubStart500016")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500016, 0, 5, 1, npcs.Npc1086.id)
end

function Quest5000:OnSubFinish500016(arg1)
    print("OnSubFinish500016")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 3)
end

function Quest5000:OnSubFailed500016(arg1)
    print("OnSubFailed500016")
    this:ActorDestroy("Q500016N1086Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 3)
end

function Quest5000:OnSubStart500006(arg1)
    print("OnSubStart500006")
end

function Quest5000:OnSubFinish500006(arg1)
    print("OnSubFinish500006")
end

function Quest5000:OnSubStart500019(arg1)
    print("OnSubStart500019")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500007, 0, 15, 1, npcs.Npc1086.id)
end

function Quest5000:OnSubFinish500019(arg1)
    print("OnSubFinish500019")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
end

function Quest5000:OnSubStart500007(arg1)
    print("OnSubStart500007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500007, 0, 15, 1, npcs.Npc1086.id)
end

function Quest5000:OnSubFinish500007(arg1)
    print("OnSubFinish500007")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
end

function Quest5000:OnSubStart500008(arg1)
    print("OnSubStart500008")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500008, 0, 10, 1, npcs.Npc1086.id)
end

function Quest5000:OnSubFinish500008(arg1)
    print("OnSubFinish500008")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
end

function Quest5000:OnSubStart500013(arg1)
    print("OnSubStart500013")
end

function Quest5000:OnSubFinish500013(arg1)
    print("OnSubFinish500013")
end

function Quest5000:OnSubStart500009(arg1)
    print("OnSubStart500009")
    this:CallDelayByQuest("500009", 1, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(500009, 0, 15, 1, npcs.Npc1086.id)
        this:NatsaurusVehicleOff()
    end)
end

function Quest5000:OnSubFinish500009(arg1)
    print("OnSubFinish500009")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
end

function Quest5000:OnSubStart500021(arg1)
    print("OnSubStart500021")
end

function Quest5000:OnSubFinish500021(arg1)
    print("OnSubFinish500021")
end

function Quest5000:OnSubStart500010(arg1)
    print("OnSubStart500010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500010, 0, 10, 1, npcs.Npc1087.id)
end

function Quest5000:OnSubFinish500010(arg1)
    print("OnSubFinish500010")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
end

function Quest5000:OnSubStart500011(arg1)
    print("OnSubStart500011")
    this:CreateQuestNpc(arg1, npcs.Npc14111.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14337.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14336.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14336.alias, 5000):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14335.alias, 5000):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14274.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14274.alias, 5000):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q500011Talk", "Actor/Gadget/Q500011Talk", 70900002, 0, points.Q500011Talk.pos, points.Q500011Talk.rot, true, false, 3)
    this:NotifyTo(npcs.Npc6050.alias, 1, true)
end

function Quest5000:OnSubFinish500011(arg1)
    print("OnSubFinish500011")
    this:SafeDestroyQuestNpc(npcs.Npc14111.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc6050.alias, 0, true)
    end)
end

function Quest5000:OnSubStart500012(arg1)
    print("OnSubStart500012")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1087.id, 0, 500012, 100, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14111.id, 0, false, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
    end)
end

function Quest5000:OnSubFinish500012(arg1)
    print("OnSubFinish500012")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14111.alias, 3)
end

return Quest5000
