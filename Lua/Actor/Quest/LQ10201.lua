require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10201 = class("Quest10201", QuestActorProxy)
Quest10201.defaultAlias = "Quest10201"
local clientData
local subIDs
local npcData
local kleeData
local abyssData
local paimonData

function Quest10201:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    npcData = clientData.NPCData
    kleeData = clientData.KleeData
    abyssData = clientData.AbyssData
    paimonData = clientData.PaimonData
end

function Quest10201:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1020101"] = self.OnSubStart1020101
    self.subStartHandlers["1020102"] = self.OnSubStart1020102
    self.subStartHandlers["1020103"] = self.OnSubStart1020103
    self.subStartHandlers["1020104"] = self.OnSubStart1020104
    self.subStartHandlers["1020105"] = self.OnSubStart1020105
    self.subStartHandlers["1020106"] = self.OnSubStart1020106
    self.subStartHandlers["1020107"] = self.OnSubStart1020107
    self.subStartHandlers["1020108"] = self.OnSubStart1020108
    self.subStartHandlers["1020109"] = self.OnSubStart1020109
    self.subStartHandlers["1020110"] = self.OnSubStart1020110
    self.subStartHandlers["1020111"] = self.OnSubStart1020111
    self.subStartHandlers["1020112"] = self.OnSubStart1020112
    self.subStartHandlers["1020113"] = self.OnSubStart1020113
    self.subStartHandlers["1020114"] = self.OnSubStart1020114
    self.subStartHandlers["1020115"] = self.OnSubStart1020115
    self.subStartHandlers["1020116"] = self.OnSubStart1020116
end

function Quest10201:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1020101"] = self.OnSubFinish1020101
    self.subFinishHandlers["1020102"] = self.OnSubFinish1020102
    self.subFinishHandlers["1020103"] = self.OnSubFinish1020103
    self.subFinishHandlers["1020104"] = self.OnSubFinish1020104
    self.subFinishHandlers["1020105"] = self.OnSubFinish1020105
    self.subFinishHandlers["1020106"] = self.OnSubFinish1020106
    self.subFinishHandlers["1020107"] = self.OnSubFinish1020107
    self.subFinishHandlers["1020108"] = self.OnSubFinish1020108
    self.subFinishHandlers["1020109"] = self.OnSubFinish1020109
    self.subFinishHandlers["1020110"] = self.OnSubFinish1020110
    self.subFinishHandlers["1020111"] = self.OnSubFinish1020111
    self.subFinishHandlers["1020112"] = self.OnSubFinish1020112
    self.subFinishHandlers["1020113"] = self.OnSubFinish1020113
    self.subFinishHandlers["1020114"] = self.OnSubFinish1020114
    self.subFinishHandlers["1020115"] = self.OnSubFinish1020115
    self.subFinishHandlers["1020116"] = self.OnSubFinish1020116
end

function Quest10201:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["1020101"] = self.OnSubFailed1020101
    self.subFailedHandlers["1020102"] = self.OnSubFailed1020102
    self.subFailedHandlers["1020103"] = self.OnSubFailed1020103
    self.subFailedHandlers["1020104"] = self.OnSubFailed1020104
    self.subFailedHandlers["1020105"] = self.OnSubFailed1020105
    self.subFailedHandlers["1020106"] = self.OnSubFailed1020106
    self.subFailedHandlers["1020107"] = self.OnSubFailed1020107
    self.subFailedHandlers["1020108"] = self.OnSubFailed1020108
    self.subFailedHandlers["1020109"] = self.OnSubFailed1020109
    self.subFailedHandlers["1020110"] = self.OnSubFailed1020110
    self.subFailedHandlers["1020111"] = self.OnSubFailed1020111
    self.subFailedHandlers["1020112"] = self.OnSubFailed1020112
    self.subFailedHandlers["1020113"] = self.OnSubFailed1020113
    self.subFailedHandlers["1020114"] = self.OnSubFailed1020114
    self.subFailedHandlers["1020115"] = self.OnSubFailed1020115
    self.subFailedHandlers["1020116"] = self.OnSubFailed1020116
end

function Quest10201:InvokeOnInteraction(arg1)
    print("10201 Invoke : ")
    local Q10201ClientConfig = require("Quest/Client/Q10201ClientConfig")
    local actor = actorMgr:GetActor(Q10201ClientConfig.ActorAlias)
    if arg1 == 1 then
        local questNpcActor = actor:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end

    if arg1 == 2 then
        print("Invoke 2")
        globalActor:UnSpawn("Q10201Bomb")
        self.SpawnGadgetById(self, 1020111, 70300117, 1)
    end

    if arg1 == 3 then
        print("Invoke 3")
        globalActor:UnSpawn("Q10201Bomb")
        actor:GetQuestNpcActor(npcData.Npc):PlayEffect("Eff_SceneObj_BombBarrel_01_Explode", sceneData:GetDummyPoint(20031, "Q1020102AbyssSpawn5").pos)
    end

    if arg1 == 4 then
        print("Invoke 4")
        self.TriggerNpcSpeechBubble(self, 10093, 102010401)
        self.CallDelay(self, 2.0, function()
            self:ClearNpcSpeechBubble(10093)
        end)
    end

    if arg1 == 5 then
        print("Invoke 5")
        globalActor:UnSpawn("Q10201Bomb")
        self.SpawnGadgetById(self, 1020112, 70300117, 1)
    end

    if arg1 == 6 then
        print("Invoke 6")
        globalActor:UnSpawn("Q10201Bomb")
    end
end

function Quest10201:OnSubStart1020101(arg1)
    print("1020101 start")
    actorMgr:CreateActorWithPos("Q10201trigger03", "Actor/Gadget/Q10201Trigger03", 70900002, 0, sceneData:GetDummyPoint(3, "Q1020101Treasure").pos, sceneData:GetDummyPoint(3, "Q1020101Treasure").rot, true, false)
end

function Quest10201:OnSubFinish1020101(arg1)
    print("1020101 finish")
end

function Quest10201:OnSubStart1020112(arg1)
    self:CreateQuestNpc(arg1, kleeData.KleeID, 1)
    actorMgr:CreateActorWithPos("Q10201trigger12", "Actor/Gadget/Q10201Trigger12", 70900002, 0, sceneData:GetDummyPoint(3, "Q10201KleeSpawn1").pos, sceneData:GetDummyPoint(3, "Q10201KleeSpawn1").rot, true, false)
end

function Quest10201:OnSubFinish1020112(arg1)
    print("1020101 finish")
    local questNpcActor = self:GetQuestNpcActor(kleeData.Klee)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(npcData.Npc)
    if v ~= nil then
        v:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor("Paimon")
    if questNpcActor2 ~= nil then
        questNpcActor2:DestroyWithDisappear(false)
    end

    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.Story1, nil, "Story")
    end)
end

function Quest10201:OnSubStart1020103(arg1)
    print("1020103 start")
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:PlayEffect("Eff_Monster_Abyss_Water_Blink_BS", npcData.NPCPos1)
    questNpcActor:DoFreeStateTrigger()
    print("state machine reset")
    questNpcActor:BeFollowTaskByRoutePoints(self.clientData.RouteData1.routeConfig, self.clientData.RouteData1.beFollowLen, self.clientData.RouteData1.beFollowFailed, function(arg1, arg2)
        local questNpcActor = actorMgr:GetActor(clientData.ActorAlias):GetQuestNpcActor(npcData.Npc)
        if arg1.BeFollowState == BeFollowState.SUCCESS then
            questNpcActor:Standby()
            questNpcActor:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
            print("abyss dizzy1")
            actorMgr:CreateActorWithPos("Q10201trigger01", "Actor/Gadget/Q10201Trigger01", 70900002, 0, sceneData:GetDummyPoint(3, "Q1020102AbyssSpawn2").pos, sceneData:GetDummyPoint(3, "Q1020102AbyssSpawn2").rot, true, false)
        end
    end, nil, nil, function(arg1, arg2)
        print("No Wait")
    end, nil, function(arg1, arg2)
        print("Fail Quest1020103")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        actor.FinishQuestID(actor, true, 1020103)
        actor.ClearNarratorTask(actor)
        actor.StopNarrator(actor)
        actor.CallDelay(actor, 2, function()
            actor:TransmitPlayerWithTextByQuestId(1020103, 1, {"QUEST_Message_Q1020104"})
        end)
    end)
end

function Quest10201:OnSubFailed1020103(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest10201:OnSubStart1020114(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
end

function Quest10201:OnSubFinish1020114(arg1)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10201:OnSubFailed1020114(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest10201:OnSubStart1020104(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
end

function Quest10201:OnSubFinish1020104(arg1)
    print("1020104 finish")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q10201CamTarget1").pos, 0, 1, true)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(1, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest10201:OnSubFailed1020104(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest10201:OnSubStart1020105(arg1)
    print("1020105 start")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.Story3, nil, "Story")
    end)

    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    print("state machine reset")
    questNpcActor:BeFollowTaskByRoutePoints(self.clientData.RouteData2.routeConfig, self.clientData.RouteData2.beFollowLen, self.clientData.RouteData2.beFollowFailed, function(arg1, arg2)
        local questNpcActor = actorMgr:GetActor(clientData.ActorAlias):GetQuestNpcActor(npcData.Npc)
        if arg1.BeFollowState == BeFollowState.SUCCESS then
            questNpcActor:Standby()
            questNpcActor:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
            actorMgr:CreateActorWithPos("Q10201trigger02", "Actor/Gadget/Q10201Trigger02", 70900002, 0, sceneData:GetDummyPoint(3, "Q1020102AbyssSpawn3").pos, sceneData:GetDummyPoint(3, "Q1020102AbyssSpawn3").rot, true, false)
        end
    end, nil, nil, function(arg1, arg2)
        print("No Wait")
    end, nil, function(arg1, arg2)
        print("Fail Quest1020105")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        actor.FinishQuestID(actor, true, 1020105)
        actor.ClearNarratorTask(actor)
        actor.StopNarrator(actor)
        actor.CallDelay(actor, 2, function()
            actor:TransmitPlayerWithTextByQuestId(1020105, 1, {"QUEST_Message_Q1020104"})
        end)
    end)
end

function Quest10201:OnSubFailed1020105(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest10201:OnSubStart1020115(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
end

function Quest10201:OnSubFinish1020115(arg1)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10201:OnSubFailed1020115(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest10201:OnSubStart1020106(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
end

function Quest10201:OnSubFinish1020106(arg1)
    print("1020106 finish")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q10201CamTarget2").pos, 0, 1, true)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(1, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest10201:OnSubFailed1020106(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest10201:OnSubStart1020107(arg1)
    print("1020107 start")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.Story4, nil, "Story")
    end)

    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    print("state machine reset")
    questNpcActor:BeFollowTaskByRoutePoints(self.clientData.RouteData3.routeConfig, self.clientData.RouteData3.beFollowLen, self.clientData.RouteData3.beFollowFailed, function(arg1, arg2)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        local questNpcActor = actor:GetQuestNpcActor(npcData.Npc)
        if arg1.BeFollowState == BeFollowState.SUCCESS then
            questNpcActor:PlayEffect("Eff_Monster_Abyss_Water_Blink_BS", npcData.NPCPos8)
            if questNpcActor ~= nil then
                questNpcActor:Destroy(false)
            end

            actor:CreateQuestNpcById(1020107, npcData.NpcID, 1)
            local v = actor:GetQuestNpcActor(npcData.Npc)
            v:DoFreeStateTrigger()
            v:BeFollowTaskByRoutePoints(actor.clientData.RouteData4.routeConfig, actor.clientData.RouteData4.beFollowLen, actor.clientData.RouteData4.beFollowFailed, function(arg1, arg2)
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                local questNpcActor = actor:GetQuestNpcActor(npcData.Npc)
                if arg1.BeFollowState == BeFollowState.SUCCESS then
                    questNpcActor:PlayEffect("Eff_Monster_Abyss_Water_Blink_BS", npcData.NPCPos11)
                    if questNpcActor ~= nil then
                        questNpcActor:Destroy(false)
                        actor:FinishQuestID(false, 1020107)
                        print("Finish Quest1020107")
                    end
                end
            end, nil, nil, function(arg1, arg2)
                print("No Wait")
            end, nil, function(arg1, arg2)
                print("Fail Quest1020105")
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                actor.FinishQuestID(actor, true, 1020107)
                actor.ClearNarratorTask(actor)
                actor.StopNarrator(actor)
                actor.CallDelay(actor, 2, function()
                    actor:TransmitPlayerWithTextByQuestId(1020107, 1, {"QUEST_Message_Q1020104"})
                end)
            end)
        end
    end, nil, nil, function(arg1, arg2)
        print("No Wait")
    end, nil, function(arg1, arg2)
        print("Fail Quest1020107")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        actor.FinishQuestID(actor, true, 1020107)
        actor.ClearNarratorTask(actor)
        actor.StopNarrator(actor)
        actor.CallDelay(actor, 2, function()
            actor:TransmitPlayerWithTextByQuestId(1020107, 1, {"QUEST_Message_Q1020104"})
        end)
    end)
end

function Quest10201:OnSubFinish1020107(arg1) end

function Quest10201:OnSubFailed1020107(arg1)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest10201:OnSubFinish1020116(arg1)
    print("1020116 start")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q10201CamTarget3").pos, 0, 1, true)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(1, function()
        globalActor:EnablePlayerInput(true)
    end)

    self:NarratorOnlyTaskLegacy(clientData.NarratorData.Story2, nil, "Story")
end

function Quest10201:OnSubFinish1020108(arg1)
    self:TransmitPlayerById(arg1, 1, nil, nil, task)
end

function Quest10201:OnSubStart1020113(arg1)
    self:CreateQuestNpc(arg1, kleeData.KleeID, 0)
    actorMgr:CreateActorWithPos("Q10201trigger13", "Actor/Gadget/Q10201Trigger13", 70900002, 0, sceneData:GetDummyPoint(3, "Q10201AvatarSpawn2").pos, sceneData:GetDummyPoint(3, "Q10201AvatarSpawn2").rot, true, false)
end

function Quest10201:OnSubFinish1020113(arg1)
    self:DestroyQuestNpcActor(kleeData.Klee, 3)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10201:OnSubStart1020110(arg1)
    print("1020110 start")
    self:CreateQuestNpc(arg1, abyssData.AbyssID, 1)
end

function Quest10201:OnSubStart1020111(arg1)
    print("1020111 start")
    self.CallDelay(self, 2, function()
        local questNpcCreateTask = self:CreateQuestNpcCreateTask({kleeData.Klee, npcData.Npc, abyssData.Abyss})
        self:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, kleeData.KleeID, 1)
            arg1_2:CreateQuestNpc(arg1, npcData.NpcID, 2)
            arg1_2:CreateQuestNpc(arg1, abyssData.AbyssID, 3)
        end, questNpcCreateTask)
    end)
end

function Quest10201:OnSubFinish1020111(arg1)
    print("1020111 finish")
    self:DestroyQuestNpcActor(kleeData.Klee, 20031)
    self:DestroyQuestNpcActor(abyssData.Abyss, 20031)
    self:DestroyQuestNpcActor(npcData.Npc, 20031)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10201:Start() end
function Quest10201:OnDestroy() end
return Quest10201
