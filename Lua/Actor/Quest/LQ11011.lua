require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11011 = class("Quest11011", QuestActorProxy)
Quest11011.defaultAlias = "Quest11011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1101112"] = self.OnSubStart1101112,
        ["1101101"] = self.OnSubStart1101101,
        ["1101125"] = self.OnSubStart1101125,
        ["1101121"] = self.OnSubStart1101121,
        ["1101104"] = self.OnSubStart1101104,
        ["1101105"] = self.OnSubStart1101105,
        ["1101122"] = self.OnSubStart1101122,
        ["1101123"] = self.OnSubStart1101123,
        ["1101102"] = self.OnSubStart1101102,
        ["1101113"] = self.OnSubStart1101113,
        ["1101116"] = self.OnSubStart1101116,
        ["1101117"] = self.OnSubStart1101117,
        ["1101114"] = self.OnSubStart1101114,
        ["1101115"] = self.OnSubStart1101115,
        ["1101120"] = self.OnSubStart1101120,
        ["1101103"] = self.OnSubStart1101103,
        ["1101106"] = self.OnSubStart1101106,
        ["1101107"] = self.OnSubStart1101107,
        ["1101118"] = self.OnSubStart1101118,
        ["1101124"] = self.OnSubStart1101124,
        ["1101119"] = self.OnSubStart1101119,
        ["1101108"] = self.OnSubStart1101108,
        ["1101109"] = self.OnSubStart1101109,
        ["1101110"] = self.OnSubStart1101110,
        ["1101111"] = self.OnSubStart1101111
    }
end

function Quest11011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1101112"] = self.OnSubFinish1101112,
        ["1101101"] = self.OnSubFinish1101101,
        ["1101125"] = self.OnSubFinish1101125,
        ["1101121"] = self.OnSubFinish1101121,
        ["1101104"] = self.OnSubFinish1101104,
        ["1101105"] = self.OnSubFinish1101105,
        ["1101122"] = self.OnSubFinish1101122,
        ["1101123"] = self.OnSubFinish1101123,
        ["1101102"] = self.OnSubFinish1101102,
        ["1101113"] = self.OnSubFinish1101113,
        ["1101116"] = self.OnSubFinish1101116,
        ["1101117"] = self.OnSubFinish1101117,
        ["1101114"] = self.OnSubFinish1101114,
        ["1101115"] = self.OnSubFinish1101115,
        ["1101120"] = self.OnSubFinish1101120,
        ["1101103"] = self.OnSubFinish1101103,
        ["1101106"] = self.OnSubFinish1101106,
        ["1101107"] = self.OnSubFinish1101107,
        ["1101118"] = self.OnSubFinish1101118,
        ["1101124"] = self.OnSubFinish1101124,
        ["1101119"] = self.OnSubFinish1101119,
        ["1101108"] = self.OnSubFinish1101108,
        ["1101109"] = self.OnSubFinish1101109,
        ["1101110"] = self.OnSubFinish1101110,
        ["1101111"] = self.OnSubFinish1101111
    }
end

function Quest11011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1101112"] = self.OnSubFailed1101112,
        ["1101101"] = self.OnSubFailed1101101,
        ["1101125"] = self.OnSubFailed1101125,
        ["1101121"] = self.OnSubFailed1101121,
        ["1101104"] = self.OnSubFailed1101104,
        ["1101105"] = self.OnSubFailed1101105,
        ["1101122"] = self.OnSubFailed1101122,
        ["1101123"] = self.OnSubFailed1101123,
        ["1101102"] = self.OnSubFailed1101102,
        ["1101113"] = self.OnSubFailed1101113,
        ["1101116"] = self.OnSubFailed1101116,
        ["1101117"] = self.OnSubFailed1101117,
        ["1101114"] = self.OnSubFailed1101114,
        ["1101115"] = self.OnSubFailed1101115,
        ["1101120"] = self.OnSubFailed1101120,
        ["1101103"] = self.OnSubFailed1101103,
        ["1101106"] = self.OnSubFailed1101106,
        ["1101107"] = self.OnSubFailed1101107,
        ["1101118"] = self.OnSubFailed1101118,
        ["1101124"] = self.OnSubFailed1101124,
        ["1101119"] = self.OnSubFailed1101119,
        ["1101108"] = self.OnSubFailed1101108,
        ["1101109"] = self.OnSubFailed1101109,
        ["1101110"] = self.OnSubFailed1101110,
        ["1101111"] = self.OnSubFailed1101111
    }
end

function Quest11011:Start()
    print("Start")
end

function Quest11011:OnDestroy()
    print("OnDestroy")
end

function Quest11011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11011:BlackscreenTokCreate1()
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10265Data.alias})
    self:ShowBlackScreen(0.5, 1.0, 0, function(arg1)
        arg1:CreateQuestNpcById(1101113, npcs.Npc10265Data.id)
        arg1:GetQuestNpcActor(npcs.Npc10265Data.alias):Standby()
        arg1:RequestInteraction(npcs.Npc10265Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest11011:BlackscreenTokCreate2()
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10265Data.alias})
    self:ShowBlackScreen(0.5, 1.0, 0, function(arg1)
        arg1:CreateQuestNpcById(1101105, npcs.Npc10265Data.id)
        arg1:RequestInteraction(npcs.Npc10265Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest11011:BlackscreenGongziCreate2()
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10200Data.alias})
    self:ShowBlackScreen(0.5, 1.0, 0, function(arg1)
        arg1:CreateQuestNpcById(1101111, npcs.Npc10200Data.id)
        arg1:RequestInteraction(npcs.Npc10200Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest11011:FinishQuest1101114()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1101114)
    end

    actor:ClearSpeechBubbleTask()
end

function Quest11011:FinishQuest1101116()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1101116)
    end

    actor:ClearSpeechBubbleTask()
end

function Quest11011:FinishQuest1101120()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1101120)
    end
end

function Quest11011:BlackscreenTokCreate3()
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10265Data.alias})
    self:ShowBlackScreen(0.5, 1.0, 0, function(arg1)
        arg1:CreateQuestNpcById(1101125, npcs.Npc10265Data.id)
        arg1:RequestInteraction(npcs.Npc10265Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest11011:GetDistance1()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q11011Challenge").pos
    local dist = M.Dist(pos, avatarPos)
    print("NOW Distance1 is", dist)
    if 180 < dist then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 1101118)
        end
    else
        self:CheckDistance()
    end
end

function Quest11011:GetDistance2()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q11011Fight").pos
    local dist = M.Dist(pos, avatarPos)
    print("NOW Distance2 is", dist)
    if 60 < dist then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 1101110)
        end
    else
        self:CheckDistance()
    end
end

function Quest11011:CheckDistance()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        if self:GetSubQuestState(1101118) == 2 then
            self:CallDelay(2, self.GetDistance1)
        end
    end

    if actor ~= nil then
        if self:GetSubQuestState(1101110) == 2 then
            self:CallDelay(2, self.GetDistance2)
        end
    end
end

function Quest11011:OnSubStart1101112(arg1)
    print("OnSubStart1101112")
end

function Quest11011:OnSubFinish1101112(arg1)
    print("OnSubFinish1101112")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1)
end

function Quest11011:OnSubFailed1101112(arg1)
    print("OnSubFailed1101112")
end

function Quest11011:OnSubStart1101101(arg1)
    print("OnSubStart1101101")
    self:NotifyTo(npcs.Npc2092Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc209201Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q11011TriggerShan_.alias, datas.Q11011TriggerShan_.script, datas.Q11011TriggerShan_.id, 0, datas.Q11011TriggerShan_.point.pos, datas.Q11011TriggerShan_.point.rot, true, false, 3)
end

function Quest11011:OnSubFinish1101101(arg1)
    print("OnSubFinish1101101")
end

function Quest11011:OnSubFailed1101101(arg1)
    print("OnSubFailed1101101")
end

function Quest11011:OnSubStart1101125(arg1)
    print("OnSubStart1101125")
    self:CallDelay(0, self.BlackscreenTokCreate3)
    self:NotifyTo(npcs.Npc2092Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101125(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
        arg1:DestroyQuestNpcActor(npcs.Npc209201Data.alias, 3)
    end)
end

function Quest11011:OnSubFailed1101125(arg1)
    print("OnSubFailed1101125")
end

function Quest11011:OnSubStart1101121(arg1)
    print("OnSubStart1101121")
    self:NotifyTo(npcs.Npc2092Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101121(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
        arg1:DestroyQuestNpcActor(npcs.Npc209201Data.alias, 3)
    end)
end

function Quest11011:OnSubFailed1101121(arg1)
    print("OnSubFailed1101121")
end

function Quest11011:OnSubStart1101104(arg1)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(npcs.Npc2092Data.alias, 0, true)
        print("\229\184\184\233\169\187\233\152\191\229\177\177\229\169\134\230\147\141\228\189\156")
        arg1_2:NotifyTo(npcs.Npc2045Data.alias, 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc204501Data.id, 1)
    end)

    print("OnSubStart1101104")
    actorMgr:CreateActorWithPos(datas.Q11011TriggerMao_.alias, datas.Q11011TriggerMao_.script, datas.Q11011TriggerMao_.id, 0, datas.Q11011TriggerMao_.point.pos, datas.Q11011TriggerMao_.point.rot, true, false, 3)
end

function Quest11011:OnSubFinish1101104(arg1)
    print("OnSubFinish1101104")
end

function Quest11011:OnSubFailed1101104(arg1)
    print("OnSubFailed1101104")
end

function Quest11011:OnSubStart1101105(arg1)
    print("OnSubStart1101105")
    self:CallDelay(0, self.BlackscreenTokCreate2)
    self:NotifyTo(npcs.Npc2045Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101105(arg1)
    print("OnSubFinish1101105")
end

function Quest11011:OnSubFailed1101105(arg1)
    print("OnSubFailed1101105")
end

function Quest11011:OnSubStart1101122(arg1)
    print("OnSubStart1101122")
    self:NotifyTo(npcs.Npc2045Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101122(arg1)
    print("OnSubFinish1101122")
end

function Quest11011:OnSubFailed1101122(arg1)
    print("OnSubFailed1101122")
end

function Quest11011:OnSubStart1101123(arg1)
    print("OnSubStart1101123")
    self:RequestInteraction(npcs.Npc10265Data.alias)
    self:NotifyTo(npcs.Npc2045Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101123(arg1)
    print("OnSubFinish1101123")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
    self:NotifyTo(npcs.Npc2045Data.alias, 0, true)
    self:DestroyQuestNpcActor(npcs.Npc204501Data.alias, 3)
end

function Quest11011:OnSubFailed1101123(arg1)
    print("OnSubFailed1101123")
end

function Quest11011:OnSubStart1101102(arg1)
    print("OnSubStart1101102")
    actorMgr:CreateActorWithPos(datas.Q11011TriggerPier_.alias, datas.Q11011TriggerPier_.script, datas.Q11011TriggerPier_.id, 0, datas.Q11011TriggerPier_.point.pos, datas.Q11011TriggerPier_.point.rot, true, false, 3)
end

function Quest11011:OnSubFinish1101102(arg1)
    print("OnSubFinish1101102")
end

function Quest11011:OnSubFailed1101102(arg1)
    print("OnSubFailed1101102")
end

function Quest11011:OnSubStart1101113(arg1)
    print("OnSubStart1101113")
    self:CallDelay(0, self.BlackscreenTokCreate1)
end

function Quest11011:OnSubFinish1101113(arg1)
    print("OnSubFinish1101113")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11011:OnSubFailed1101113(arg1)
    print("OnSubFailed1101113")
end

function Quest11011:OnSubStart1101116(arg1)
    print("OnSubStart1101116")
    self:GetQuestNpcActor(npcs.Npc10265Data.alias):RunToRouteTask(datas.RoutePointsData1, self.FinishQuest1101116)
    self:CreateSpeechBubbleTask(npcs.Npc10265Data.id, 110110807, 5, true, 2, 2)
    actorMgr:CreateActorWithPos(datas.Q11011Trigger3_.alias, datas.Q11011Trigger3_.script, datas.Q11011Trigger3_.id, 0, datas.Q11011Trigger3_.point.pos, datas.Q11011Trigger3_.point.rot, true, false, 3)
    self:NotifyTo(npcs.Npc2077Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101116(arg1)
    print("OnSubFinish1101116")
end

function Quest11011:OnSubFailed1101116(arg1)
    print("OnSubFailed1101116")
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
end

function Quest11011:OnSubStart1101117(arg1)
    print("OnSubStart1101117")
    self:NotifyTo(npcs.Npc2077Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101117(arg1)
    print("OnSubFinish1101117")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11011:OnSubFailed1101117(arg1)
    print("OnSubFailed1101117")
end

function Quest11011:OnSubStart1101114(arg1)
    print("OnSubStart1101114")
    self:GetQuestNpcActor(npcs.Npc10265Data.alias):RunToRouteTask(datas.RoutePointsData2, self.FinishQuest1101114)
    self:CreateSpeechBubbleTask(npcs.Npc10265Data.id, 110110808, 5, true, 2, 2)
    actorMgr:CreateActorWithPos(datas.Q11011Trigger3_.alias, datas.Q11011Trigger3_.script, datas.Q11011Trigger3_.id, 0, datas.Q11011Trigger3_.point.pos, datas.Q11011Trigger3_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2034Data.id, 1)
    self:NotifyTo(npcs.Npc2077Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101114(arg1)
    print("OnSubFinish1101114")
end

function Quest11011:OnSubFailed1101114(arg1)
    print("OnSubFailed1101114")
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
end

function Quest11011:OnSubStart1101115(arg1)
    print("OnSubStart1101115")
    self:NotifyTo(npcs.Npc2077Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101115(arg1)
    print("OnSubFinish1101115")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc2034Data.alias, 3)
end

function Quest11011:OnSubFailed1101115(arg1)
    print("OnSubFailed1101115")
end

function Quest11011:OnSubStart1101120(arg1)
    print("OnSubStart1101120")
    self:GetQuestNpcActor(npcs.Npc10265Data.alias):RunToRouteTask(datas.RoutePointsData3, self.FinishQuest1101120)
    actorMgr:CreateActorWithPos(datas.Q11011Trigger3_.alias, datas.Q11011Trigger3_.script, datas.Q11011Trigger3_.id, 0, datas.Q11011Trigger3_.point.pos, datas.Q11011Trigger3_.point.rot, true, false, 3)
    self:NotifyTo(npcs.Npc2077Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101120(arg1)
    print("OnSubFinish1101120")
end

function Quest11011:OnSubFailed1101120(arg1)
    print("OnSubFailed1101120")
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
end

function Quest11011:OnSubStart1101103(arg1)
    print("OnSubStart1101103")
    self:NotifyTo(npcs.Npc2077Data.alias, 1, true)
end

function Quest11011:OnSubFinish1101103(arg1)
    print("OnSubFinish1101103")
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:NotifyTo(npcs.Npc2077Data.alias, 0, true)
end

function Quest11011:OnSubFailed1101103(arg1)
    print("OnSubFailed1101103")
end

function Quest11011:OnSubStart1101106(arg1)
    print("OnSubStart1101106")
    self:CreateQuestNpc(arg1, npcs.Npc10200Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10274Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10288Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10289Data.id, 4)
    actorMgr:CreateActorWithPos(datas.Q11011TriggerDao_.alias, datas.Q11011TriggerDao_.script, datas.Q11011TriggerDao_.id, 0, datas.Q11011TriggerDao_.point.pos, datas.Q11011TriggerDao_.point.rot, true, false, 3)
end

function Quest11011:OnSubFinish1101106(arg1)
    print("OnSubFinish1101106")
end

function Quest11011:OnSubFailed1101106(arg1)
    print("OnSubFailed1101106")
end

function Quest11011:OnSubStart1101107(arg1)
    print("OnSubStart1101107")
    self:RequestInteraction(npcs.Npc10200Data.alias)
end

function Quest11011:OnSubFinish1101107(arg1)
    print("OnSubFinish1101107")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11011:OnSubFailed1101107(arg1)
    print("OnSubFailed1101107")
end

function Quest11011:OnSubStart1101118(arg1)
    print("OnSubStart1101118")
    self:CheckDistance()
    actorMgr:CreateActorWithPos(datas.Q11011Trigger_.alias, datas.Q11011Trigger_.script, datas.Q11011Trigger_.id, 0, datas.Q11011Trigger_.point.pos, datas.Q11011Trigger_.point.rot, true, false, 3)
end

function Quest11011:OnSubFinish1101118(arg1)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 2, function()
        globalActor:EnablePlayerInput(true)
        self:TransmitPlayerWithTextById(arg1, 1, {"QUEST_Message_Q11011_Succeed"}, 2)
    end)
end

function Quest11011:OnSubFailed1101118(arg1)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 2, function()
        globalActor:EnablePlayerInput(true)
        self:TransmitPlayerWithTextById(arg1, 1, {"QUEST_Message_Q11011_Fail"}, 2)
    end)
end

function Quest11011:OnSubStart1101124(arg1)
    print("OnSubStart1101124")
end

function Quest11011:OnSubFinish1101124(arg1)
    print("OnSubFinish1101124")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
end

function Quest11011:OnSubFailed1101124(arg1)
    print("OnSubFailed1101124")
end

function Quest11011:OnSubStart1101119(arg1)
    print("OnSubStart1101119")
end

function Quest11011:OnSubFinish1101119(arg1)
    print("OnSubFinish1101119")
    self:DestroyQuestNpcActor(npcs.Npc10274Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10288Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10289Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10272Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11011:OnSubFailed1101119(arg1)
    print("OnSubFailed1101119")
end

function Quest11011:OnSubStart1101108(arg1)
    print("OnSubStart1101108")
    self:CreateQuestNpc(arg1, npcs.Npc10200Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10275Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10265Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10327Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10328Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc10324Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc10325Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc10326Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc10332Data.id, 9)
    actorMgr:CreateActorWithPos(datas.Q11011TriggerYu_.alias, datas.Q11011TriggerYu_.script, datas.Q11011TriggerYu_.id, 0, datas.Q11011TriggerYu_.point.pos, datas.Q11011TriggerYu_.point.rot, true, false, 3)
end

function Quest11011:OnSubFinish1101108(arg1)
    print("OnSubFinish1101108")
end

function Quest11011:OnSubFailed1101108(arg1)
    print("OnSubFailed1101108")
end

function Quest11011:OnSubStart1101109(arg1)
    print("OnSubStart1101109")
end

function Quest11011:OnSubFinish1101109(arg1)
    print("OnSubFinish1101109")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10275Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10327Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10328Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10332Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10324Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10325Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10326Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11011:OnSubFailed1101109(arg1)
    print("OnSubFailed1101109")
end

function Quest11011:OnSubStart1101110(arg1)
    print("OnSubStart1101110")
    self:CheckDistance()
    actorMgr:CreateActorWithPos(datas.Q11011Trigger2_.alias, datas.Q11011Trigger2_.script, datas.Q11011Trigger2_.id, 0, datas.Q11011Trigger2_.point.pos, datas.Q11011Trigger2_.point.rot, true, false, 3)
end

function Quest11011:OnSubFinish1101110(arg1)
    print("OnSubFinish1101110")
end

function Quest11011:OnSubFailed1101110(arg1)
    print("OnSubFailed1101110")
end

function Quest11011:OnSubStart1101111(arg1)
    print("OnSubStart1101111")
    self:CallDelay(2, self.BlackscreenGongziCreate2)
end

function Quest11011:OnSubFinish1101111(arg1)
    print("OnSubFinish1101111")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10275Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10327Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10328Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10332Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10324Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10325Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10326Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc10265Data.alias, 3)
end

function Quest11011:OnSubFailed1101111(arg1)
    print("OnSubFailed1101111")
end

return Quest11011
