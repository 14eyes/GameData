require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19055 = class("Quest19055", QuestActorProxy)
Quest19055.defaultAlias = "Quest19055"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19055:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19055:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1905516"] = self.OnSubStart1905516,
        ["1905501"] = self.OnSubStart1905501,
        ["1905503"] = self.OnSubStart1905503,
        ["1905504"] = self.OnSubStart1905504,
        ["1905514"] = self.OnSubStart1905514,
        ["1905505"] = self.OnSubStart1905505,
        ["1905512"] = self.OnSubStart1905512,
        ["1905513"] = self.OnSubStart1905513,
        ["1905515"] = self.OnSubStart1905515,
        ["1905506"] = self.OnSubStart1905506,
        ["1905507"] = self.OnSubStart1905507,
        ["1905508"] = self.OnSubStart1905508,
        ["1905510"] = self.OnSubStart1905510,
        ["1905509"] = self.OnSubStart1905509,
        ["1905511"] = self.OnSubStart1905511,
        ["1905517"] = self.OnSubStart1905517,
        ["1905502"] = self.OnSubStart1905502
    }
end

function Quest19055:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1905516"] = self.OnSubFinish1905516,
        ["1905501"] = self.OnSubFinish1905501,
        ["1905503"] = self.OnSubFinish1905503,
        ["1905504"] = self.OnSubFinish1905504,
        ["1905514"] = self.OnSubFinish1905514,
        ["1905505"] = self.OnSubFinish1905505,
        ["1905512"] = self.OnSubFinish1905512,
        ["1905513"] = self.OnSubFinish1905513,
        ["1905515"] = self.OnSubFinish1905515,
        ["1905506"] = self.OnSubFinish1905506,
        ["1905507"] = self.OnSubFinish1905507,
        ["1905508"] = self.OnSubFinish1905508,
        ["1905510"] = self.OnSubFinish1905510,
        ["1905509"] = self.OnSubFinish1905509,
        ["1905511"] = self.OnSubFinish1905511,
        ["1905517"] = self.OnSubFinish1905517,
        ["1905502"] = self.OnSubFinish1905502
    }
end

function Quest19055:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1905503"] = self.OnSubFailed1905503}
end

function Quest19055:Start()
    print("Start")
end

function Quest19055:OnDestroy()
    print("OnDestroy")
end

function Quest19055:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19055:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19055:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12551Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12055Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12056Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12548Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12650Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12651Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3130Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12680Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12681Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3130Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19055Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19055Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19055Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q19055Trigger3", 3, false)
    self:ClearNarratorTask()
    self:StopNarrator()
    self:ExitTailMode()
end

function Quest19055:CheckDistance()
    print("CheckDistance")
    if self:GetSubQuestState(1905503) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = self:GetQuestNpcActor(npcs.Npc12650Data.alias):GetPos()
        local dist = M.Dist(pos, avatarPos)
        local v = self:GetQuestNpcActor(npcs.Npc12651Data.alias):GetPos()
        local dist2 = M.Dist(v, avatarPos)
        if 20 < dist or 20 < dist2 then
            self:ShowTextMapWithParam("QUEST_Message_Q1905501")
        end

        if 25 < dist or 25 < dist2 then
            self:ClearNarratorTask()
            self:StopNarrator()
            self:FinishQuestID(true, 1905503)
            self:NarratorOnlyTaskByData(datas.NarratorFarFail, 19055)
        else
            self:CallDelay(1, self.Normalcheck)
        end
    end
end

function Quest19055:Normalcheck()
    print("Normalcheck")
    self:CheckDistance()
end

function Quest19055:OnSubStart1905516(arg1)
    print("OnSubStart1905516")
end

function Quest19055:OnSubFinish1905516(arg1)
    print("OnSubFinish1905516")
end

function Quest19055:OnSubStart1905501(arg1)
    print("OnSubStart1905501")
    actorMgr:CreateActorWithPos("Q19055Trigger", "Actor/Gadget/Q19055Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905501_N511").pos, sceneData:GetDummyPoint(3, "Q1905501_N511").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3130Data.alias, 1, true)
    if self:GetQuestVar(1905501, 1) == 0 then
        self:CreateQuestNpc(arg1, npcs.Npc12551Data.id, 0)
        self:CreateQuestNpc(arg1, npcs.Npc12055Data.id, 0)
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12551Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        self:GetQuestNpcActor(npcs.Npc12055Data.alias):DisableInteeHeadCtrl(true)
    end

    self:ExitTailMode()
end

function Quest19055:OnSubFinish1905501(arg1)
    print("OnSubFinish1905501")
    self:GetQuestNpcActor(npcs.Npc12551Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12055Data.alias):DisableInteeHeadCtrl(false)
    self:DestroyQuestNpcActor(npcs.Npc12551Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12055Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
end

function Quest19055:OnSubStart1905503(arg1)
    print("OnSubStart1905503")
    self:EnterTailMode(11)
    self:NotifyTo("Npc3130", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12650Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12651Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12056Data.id, 0)
    self:CheckDistance()
    self:ClearNarratorTask()
    self:StopNarrator()
    local actor = actorMgr:GetActor("Npc12650")
    if actor ~= nil then
        actor:EnableInteraction(false)
    end

    local v = actorMgr:GetActor("Npc12651")
    if v ~= nil then
        v:EnableInteraction(false)
    end
end

function Quest19055:OnSubFinish1905503(arg1)
    print("OnSubFinish1905503")
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        arg1:LightNotifyTo("Npc3130", 0, true)
        arg1:ExitTailMode()
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
        local actor = actorMgr:GetActor("Npc12650")
        if actor ~= nil then
            actor:EnableInteraction(true)
        end

        local v = actorMgr:GetActor("Npc12651")
        if v ~= nil then
            v:EnableInteraction(true)
        end

        arg1:DestroyQuestNpcActor(npcs.Npc12650Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12651Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest19055:OnSubFailed1905503(arg1)
    print("OnSubFailed1905503")
    self:ExitTailMode()
    self:SetQuestVar(1905503, 1, 1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("Npc12650")
        if actor ~= nil then
            actor:EnableInteraction(true)
        end

        local v = actorMgr:GetActor("Npc12651")
        if v ~= nil then
            v:EnableInteraction(true)
        end

        arg1:DestroyQuestNpcActor(npcs.Npc12650Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12651Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest19055:OnSubStart1905504(arg1)
    print("OnSubStart1905504")
    local questVar = self:GetQuestVar(1905504, 0)
    if questVar == 0 then
        self:RequestInteraction(npcs.Npc12056Data.alias)
    elseif questVar == 1 then
        actorMgr:CreateActorWithPos("Q19055Trigger3", "Actor/Gadget/Q19055Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905503_N12650_Route4").pos, sceneData:GetDummyPoint(3, "Q1905503_N12650_Route4").rot, true, false, 3)
    end
end

function Quest19055:OnSubFinish1905504(arg1)
    print("OnSubFinish1905504")
    self:ActionSafeCall(function(arg1_2)
        arg1_2.DestroyQuestNpcActor(arg1_2, npcs.Npc12055Data.alias, 3)
        arg1_2.DestroyQuestNpcActor(arg1_2, npcs.Npc12056Data.alias, 3)
        arg1_2.NarratorOnlyTaskByData(arg1_2, datas.Narrator1, nil, 19055)
        arg1_2.CreateQuestNpc(arg1_2, arg1, npcs.Coop_GorouData.id, 0)
        local questNpcActor = arg1_2.GetQuestNpcActor(arg1_2, npcs.Coop_GorouData.alias)
        questNpcActor.EnableInteraction(questNpcActor, false)
        questNpcActor.WalkToTask(questNpcActor, sceneData:GetDummyPoint(3, "Q1905506_N511").pos, function(arg1, arg2)
            questNpcActor:Standby()
            questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1905506_N511").rot))
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
            questNpcActor:EnableInteraction(true)
        end, nil, nil, function(arg1, arg2)
            local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias)
            questNpcActor:SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q1905506_N511").pos, M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1905506_N511").rot), true)
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
            questNpcActor:EnableInteraction(true)
        end)
    end)
end

function Quest19055:OnSubStart1905514(arg1)
    print("OnSubStart1905514")
end

function Quest19055:OnSubFinish1905514(arg1)
    print("OnSubFinish1905514")
end

function Quest19055:OnSubStart1905505(arg1)
    print("OnSubStart1905505")
end

function Quest19055:OnSubFinish1905505(arg1)
    print("OnSubFinish1905505")
end

function Quest19055:OnSubStart1905512(arg1)
    print("OnSubStart1905512")
end

function Quest19055:OnSubFinish1905512(arg1)
    print("OnSubFinish1905512")
end

function Quest19055:OnSubStart1905513(arg1)
    print("OnSubStart1905513")
end

function Quest19055:OnSubFinish1905513(arg1)
    print("OnSubFinish1905513")
end

function Quest19055:OnSubStart1905515(arg1)
    print("OnSubStart1905515")
end

function Quest19055:OnSubFinish1905515(arg1)
    print("OnSubFinish1905515")
end

function Quest19055:OnSubStart1905506(arg1)
    print("OnSubStart1905506")
    actorMgr:GetActor("19055"):RequestCoopInteractionFromSubStartPoint(105901, 1905506)
    self:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19055:OnSubFinish1905506(arg1)
    print("OnSubFinish1905506")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
    end)
end

function Quest19055:OnSubStart1905507(arg1)
    print("OnSubStart1905507")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12548Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12548Data.alias):DoFreeStyle(1170, true, nil, true, true, false, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:SetDynAdapterToGround(true, 150)
        arg1_2:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData511, 6, 4, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:ClearSteerToAutonomyTask()
            arg1:SetDynAdapterToGround(false)
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1905507_N511_Route6").rot))
            actorUtils.FinishQuestID(false, 1905507)
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:TryResumeCurAutoNarrator()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, false)

        arg1_2:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.Narrator2, nil, 19055)
        end)

        arg1_2:CreateQuestNpc(arg1, npcs.Npc12680Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12681Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12680Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12681Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
    end)
end

function Quest19055:OnSubFinish1905507(arg1)
    print("OnSubFinish1905507")
end

function Quest19055:OnSubStart1905508(arg1)
    print("OnSubStart1905508")
    actorMgr:CreateActorWithPos("Q19055Trigger1", "Actor/Gadget/Q19055Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905507_N12548").pos, sceneData:GetDummyPoint(3, "Q1905507_N12548").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12680Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12681Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
end

function Quest19055:OnSubFinish1905508(arg1)
    print("OnSubFinish1905508")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest19055:OnSubStart1905510(arg1)
    print("OnSubStart1905510")
    self:GetQuestNpcActor(npcs.Npc12680Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12681Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
end

function Quest19055:OnSubFinish1905510(arg1)
    print("OnSubFinish1905510")
    self:DestroyQuestNpcActor(npcs.Npc12548Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12680Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12681Data.alias, 3)
end

function Quest19055:OnSubStart1905509(arg1)
    print("OnSubStart1905509")
    self:CreateQuestNpc(arg1, npcs.Npc12551Data.id, 0)
    actorMgr:GetActor("19055"):RequestCoopInteractionFromSubStartPoint(105901, 1905509)
    self:GetQuestNpcActor(npcs.Npc12551Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest19055:OnSubFinish1905509(arg1)
    print("OnSubFinish1905509")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc12551Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12056Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12055Data.alias, 3)
    end)
end

function Quest19055:OnSubStart1905511(arg1)
    print("OnSubStart1905511")
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q19055Trigger2", "Actor/Gadget/Q19055Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905511_N10000005").pos, sceneData:GetDummyPoint(3, "Q1905511_N10000005").rot, true, false, 3)
    end)
end

function Quest19055:OnSubFinish1905511(arg1)
    print("OnSubFinish1905511")
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1039Data.alias, 3)
end

function Quest19055:OnSubStart1905517(arg1)
    print("OnSubStart1905517")
end

function Quest19055:OnSubFinish1905517(arg1)
    print("OnSubFinish1905517")
end

function Quest19055:OnSubStart1905502(arg1)
    print("OnSubStart1905502")
end

function Quest19055:OnSubFinish1905502(arg1)
    print("OnSubFinish1905502")
end

return Quest19055
