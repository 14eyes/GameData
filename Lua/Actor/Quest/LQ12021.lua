require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12021 = class("Quest12021", QuestActorProxy)
Quest12021.defaultAlias = "Quest12021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1202101"] = self.OnSubStart1202101,
        ["1202118"] = self.OnSubStart1202118,
        ["1202102"] = self.OnSubStart1202102,
        ["1202119"] = self.OnSubStart1202119,
        ["1202115"] = self.OnSubStart1202115,
        ["1202116"] = self.OnSubStart1202116,
        ["1202117"] = self.OnSubStart1202117,
        ["1202103"] = self.OnSubStart1202103,
        ["1202104"] = self.OnSubStart1202104,
        ["1202105"] = self.OnSubStart1202105,
        ["1202110"] = self.OnSubStart1202110,
        ["1202106"] = self.OnSubStart1202106,
        ["1202111"] = self.OnSubStart1202111,
        ["1202107"] = self.OnSubStart1202107,
        ["1202112"] = self.OnSubStart1202112,
        ["1202108"] = self.OnSubStart1202108,
        ["1202109"] = self.OnSubStart1202109,
        ["1202120"] = self.OnSubStart1202120,
        ["1202113"] = self.OnSubStart1202113,
        ["1202114"] = self.OnSubStart1202114
    }
end

function Quest12021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1202101"] = self.OnSubFinish1202101,
        ["1202118"] = self.OnSubFinish1202118,
        ["1202102"] = self.OnSubFinish1202102,
        ["1202119"] = self.OnSubFinish1202119,
        ["1202115"] = self.OnSubFinish1202115,
        ["1202116"] = self.OnSubFinish1202116,
        ["1202117"] = self.OnSubFinish1202117,
        ["1202103"] = self.OnSubFinish1202103,
        ["1202104"] = self.OnSubFinish1202104,
        ["1202105"] = self.OnSubFinish1202105,
        ["1202110"] = self.OnSubFinish1202110,
        ["1202106"] = self.OnSubFinish1202106,
        ["1202111"] = self.OnSubFinish1202111,
        ["1202107"] = self.OnSubFinish1202107,
        ["1202112"] = self.OnSubFinish1202112,
        ["1202108"] = self.OnSubFinish1202108,
        ["1202109"] = self.OnSubFinish1202109,
        ["1202120"] = self.OnSubFinish1202120,
        ["1202113"] = self.OnSubFinish1202113,
        ["1202114"] = self.OnSubFinish1202114
    }
end

function Quest12021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1202101"] = self.OnSubFailed1202101,
        ["1202118"] = self.OnSubFailed1202118,
        ["1202102"] = self.OnSubFailed1202102,
        ["1202119"] = self.OnSubFailed1202119,
        ["1202115"] = self.OnSubFailed1202115,
        ["1202116"] = self.OnSubFailed1202116,
        ["1202117"] = self.OnSubFailed1202117,
        ["1202103"] = self.OnSubFailed1202103,
        ["1202104"] = self.OnSubFailed1202104,
        ["1202105"] = self.OnSubFailed1202105,
        ["1202110"] = self.OnSubFailed1202110,
        ["1202106"] = self.OnSubFailed1202106,
        ["1202111"] = self.OnSubFailed1202111,
        ["1202107"] = self.OnSubFailed1202107,
        ["1202112"] = self.OnSubFailed1202112,
        ["1202108"] = self.OnSubFailed1202108,
        ["1202109"] = self.OnSubFailed1202109,
        ["1202120"] = self.OnSubFailed1202120,
        ["1202113"] = self.OnSubFailed1202113,
        ["1202114"] = self.OnSubFailed1202114
    }
end

function Quest12021:Start()
    print("Start")
end

function Quest12021:OnDestroy()
    print("OnDestroy")
end

function Quest12021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12021:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12021:CheckDistance()
    if self:GetSubQuestState(1202103) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "Q12021_yurenzhong").pos
        local dist = M.Dist(pos, avatarPos)
        print("StartCheck")
        if 55 < dist then
            actorUtils.FinishQuestID(true, 1202103)
        else
            self:CallDelay(1, self.NormalCheck)
        end
    end
end

function Quest12021:MovePause()
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest12021:MoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest12021:NormalCheck()
    self:CheckDistance()
end

function Quest12021:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1202115 then
        print("ChallengeA")
        self:SetQuestVar(1202102, 0, 1)
    elseif arg1 == 1202116 then
        print("ChallengeB")
        self:SetQuestVar(1202102, 0, 2)
    elseif arg1 == 1202117 then
        print("ChallengeC")
        self:SetQuestVar(1202102, 0, 3)
    elseif arg1 == 1202101 then
        print("carcar")
        actorUtils.FinishQuestID(false, 1202120)
    end
end

function Quest12021:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    if arg1.valueString == "Kokomi_ShockDamageChallenge" then
        actorUtils.FinishQuestID(false, 1202117)
    end
end

function Quest12021:OnSubStart1202101(arg1)
    print("OnSubStart1202101")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CallDelay(1, function(arg1)
            if arg1:GetQuestVar(1202101, 1) == 0 then
                arg1:NarratorOnlyTaskByData(datas.KaicheA, function(arg1)
                    arg1:SetQuestVarByMainId(1, 3)
                end, 12021)
            end
        end)

        arg1_2:CreateQuestNpc(arg1, npcs.Npc3140Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12062Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12096Data.id, 0)
    end)
end

function Quest12021:OnSubFinish1202101(arg1)
    print("OnSubFinish1202101")
end

function Quest12021:OnSubFailed1202101(arg1)
    print("OnSubFailed1202101")
end

function Quest12021:OnSubStart1202118(arg1)
    print("OnSubStart1202118")
end

function Quest12021:OnSubFinish1202118(arg1)
    print("OnSubFinish1202118")
end

function Quest12021:OnSubFailed1202118(arg1)
    print("OnSubFailed1202118")
end

function Quest12021:OnSubStart1202102(arg1)
    print("OnSubStart1202102")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1037Data.alias)
    end, nil, nil, "")
end

function Quest12021:OnSubFinish1202102(arg1)
    print("OnSubFinish1202102")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12021:OnSubFailed1202102(arg1)
    print("OnSubFailed1202102")
end

function Quest12021:OnSubStart1202119(arg1)
    print("OnSubStart1202119")
    actorMgr:CreateActorWithPos("Q12021Trigger1", "Actor/Gadget/Q12021Trigger1", 70900002, 0, {x = -4073.031, y = 201.1453, z = -657.714}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12021:OnSubFinish1202119(arg1)
    print("OnSubFinish1202119")
end

function Quest12021:OnSubFailed1202119(arg1)
    print("OnSubFailed1202119")
    self:CallDelay(2, function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:CreateQuestNpcById(1202103, npcs.Npc1037Data.id, 0)
            arg1:RequestInteraction(npcs.Npc1037Data.alias)
        end, nil, nil, "", false, false)
    end)

    self:ActorDestroy("Q12021Trigger1")
end

function Quest12021:OnSubStart1202115(arg1)
    print("OnSubStart1202115")
end

function Quest12021:OnSubFinish1202115(arg1)
    print("OnSubFinish1202115")
    self:NarratorOnlyTaskByData(datas.ChallengeKaicheA, nil, 12021)
end

function Quest12021:OnSubFailed1202115(arg1)
    print("OnSubFailed1202115")
end

function Quest12021:OnSubStart1202116(arg1)
    print("OnSubStart1202116")
end

function Quest12021:OnSubFinish1202116(arg1)
    print("OnSubFinish1202116")
    self:NarratorOnlyTaskByData(datas.ChallengeKaicheB, nil, 12021)
end

function Quest12021:OnSubFailed1202116(arg1)
    print("OnSubFailed1202116")
end

function Quest12021:OnSubStart1202117(arg1)
    print("OnSubStart1202117")
end

function Quest12021:OnSubFinish1202117(arg1)
    print("OnSubFinish1202117")
    self:NarratorOnlyTaskByData(datas.ChallengeKaicheC, nil, 12021)
end

function Quest12021:OnSubFailed1202117(arg1)
    print("OnSubFailed1202117")
end

function Quest12021:OnSubStart1202103(arg1)
    print("OnSubStart1202103")
    actorMgr:CreateActorWithPos("Q12021Trigger2", "Actor/Gadget/Q12021Trigger2", 70900002, 0, {x = -4070.101, y = 200.89, z = -658.2603}, {x = 0, y = 0, z = 0}, true, false)
    self:CheckDistance()
end

function Quest12021:OnSubFinish1202103(arg1)
    print("OnSubFinish1202103")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1037Data.alias)
        end, nil, nil, "")
    end)

    self:ActorDestroy("Q12021Trigger1")
end

function Quest12021:OnSubFailed1202103(arg1)
    print("OnSubFailed1202103")
end

function Quest12021:OnSubStart1202104(arg1)
    print("OnSubStart1202104")
end

function Quest12021:OnSubFinish1202104(arg1)
    print("OnSubFinish1202104")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12021:OnSubFailed1202104(arg1)
    print("OnSubFailed1202104")
end

function Quest12021:OnSubStart1202105(arg1)
    print("OnSubStart1202105")
    self:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest12021:OnSubFinish1202105(arg1)
    print("OnSubFinish1202105")
    self:NarratorOnlyTaskByData(datas.PaimonA, nil, 12021)
end

function Quest12021:OnSubFailed1202105(arg1)
    print("OnSubFailed1202105")
end

function Quest12021:OnSubStart1202110(arg1)
    print("OnSubStart1202110")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(1202110, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest12021:OnSubFinish1202110(arg1)
    print("OnSubFinish1202110")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12021:OnSubFailed1202110(arg1)
    print("OnSubFailed1202110")
end

function Quest12021:OnSubStart1202106(arg1)
    print("OnSubStart1202106")
end

function Quest12021:OnSubFinish1202106(arg1)
    print("OnSubFinish1202106")
    self:NarratorOnlyTaskByData(datas.PaimonB, nil, 12021)
end

function Quest12021:OnSubFailed1202106(arg1)
    print("OnSubFailed1202106")
end

function Quest12021:OnSubStart1202111(arg1)
    print("OnSubStart1202111")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(1202111, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest12021:OnSubFinish1202111(arg1)
    print("OnSubFinish1202111")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12021:OnSubFailed1202111(arg1)
    print("OnSubFailed1202111")
end

function Quest12021:OnSubStart1202107(arg1)
    print("OnSubStart1202107")
end

function Quest12021:OnSubFinish1202107(arg1)
    print("OnSubFinish1202107")
    self:NarratorOnlyTaskByData(datas.PaimonC, nil, 12021)
end

function Quest12021:OnSubFailed1202107(arg1)
    print("OnSubFailed1202107")
end

function Quest12021:OnSubStart1202112(arg1)
    print("OnSubStart1202112")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(1202112, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest12021:OnSubFinish1202112(arg1)
    print("OnSubFinish1202112")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12021:OnSubFailed1202112(arg1)
    print("OnSubFailed1202112")
end

function Quest12021:OnSubStart1202108(arg1)
    print("OnSubStart1202108")
    self:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest12021:OnSubFinish1202108(arg1)
    print("OnSubFinish1202108")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:ClearNarratorTask()
    end)
end

function Quest12021:OnSubFailed1202108(arg1)
    print("OnSubFailed1202108")
end

function Quest12021:OnSubStart1202109(arg1)
    print("OnSubStart1202109")
end

function Quest12021:OnSubFinish1202109(arg1)
    print("OnSubFinish1202109")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:DestroyQuestNpcActor(npcs.Npc12062Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3140Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12096Data.alias, 3)
    end)
end

function Quest12021:OnSubFailed1202109(arg1)
    print("OnSubFailed1202109")
end

function Quest12021:OnSubStart1202120(arg1)
    print("OnSubStart1202120")
end

function Quest12021:OnSubFinish1202120(arg1)
    print("OnSubFinish1202120")
end

function Quest12021:OnSubFailed1202120(arg1)
    print("OnSubFailed1202120")
end

function Quest12021:OnSubStart1202113(arg1)
    print("OnSubStart1202113")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1037Data.alias, 12021)
        arg1_2:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 4, 2, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            local actor = actorMgr:GetActor(clientData.ActorAlias)
            actor:NpcBeFollowTaskByRoutePointsWithDiffLen(arg1, datas.RoutePointsData1, 4, 2, -1, function(arg1)
                arg1:SyncPos(2)
                if arg1.BeFollowState == BeFollowState.FAILED then
                    return
                end

                actorUtils.FinishQuestID(false, 1202113)
            end, nil, nil, actor.MovePause, actor.MoveResume, nil, true)

            actor:NarratorOnlyTaskByData(datas.WalkKaiche, nil, 12021)
        end, nil, nil, arg1_2.MovePause, arg1_2.MoveResume, nil, true)

        local v = arg1_2:GetQuestNpcActor(npcs.Npc1037Data.alias)
        v:ForceAvatarWalkByDist(3.5, 6)
        v:DisableInteeHeadCtrl(true)
        v:SetWalkSpeedRatio(0.9)
        arg1_2:CallDelay(3, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.Walkkaiche2, nil, 12021)
        end)

        arg1_2:NotifyTo(npcs.Npc3130Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q12021Trigger3", "Actor/Gadget/Q12021Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q12021_walk2").pos, sceneData:GetDummyPoint(3, "Q12021_walk2").rot, true, false, 3)
    end)
end

function Quest12021:OnSubFinish1202113(arg1)
    print("OnSubFinish1202113")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1037Data.alias)
    questNpcActor:ResetWalkSpeedRatio()
    questNpcActor:EnableHeadCtrl(false)
    self:ActorDestroy("Q12021Trigger3")
end

function Quest12021:OnSubFailed1202113(arg1)
    print("OnSubFailed1202113")
    self:ActorDestroy("Q12021Trigger3")
    self:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
end

function Quest12021:OnSubStart1202114(arg1)
    print("OnSubStart1202114")
    self:RequestInteraction(npcs.Npc1037Data.alias)
    self:NotifyTo(npcs.Npc3130Data.alias, 1, true)
end

function Quest12021:OnSubFinish1202114(arg1)
    print("OnSubFinish1202114")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:DestroyQuestNpcActor(npcs.Npc3147Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc3130Data.alias, 0, true)
    end)
end

function Quest12021:OnSubFailed1202114(arg1)
    print("OnSubFailed1202114")
end

return Quest12021
